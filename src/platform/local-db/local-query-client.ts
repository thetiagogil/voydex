import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { localUserId } from "@/platform/local-db/device-schema";
import {
  rowParsers,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";

/*
 * The readers and commands Voydex already had take a database client with
 * the Supabase query interface (`.schema().from().select().eq()…`, `.rpc()`).
 * This client gives them that interface over the device database: each
 * chain becomes one plain SQL statement run in PGlite, so the same reader
 * serves the Codex on the server and the screens on the device, and nothing
 * here reaches Supabase.
 *
 * It covers what Voydex uses: flat column lists (`*`, `a, b`), the filters
 * eq, neq, in, is, not(…, "is", …), lt, lte, gt, gte, contains and simple
 * `or` lists, order, range, limit, single, maybeSingle, exact counts,
 * insert, update, upsert and delete (with `.select()` for what they wrote),
 * and function calls. Embedded resources (`table(cols)`) are refused.
 */

type Order = { ascending: boolean; column: string; nullsFirst?: boolean };

type Mutation =
  | { kind: "delete" }
  | { kind: "insert"; rows: Record<string, unknown>[] }
  | { kind: "update"; values: Record<string, unknown> }
  | {
      ignoreDuplicates: boolean;
      kind: "upsert";
      onConflict: string | null;
      rows: Record<string, unknown>[];
    };

export type LocalQueryError = {
  code: string;
  details: string | null;
  hint: string | null;
  message: string;
};

type LocalQueryResult = {
  count: number | null;
  data: unknown;
  error: LocalQueryError | null;
  status: number;
  statusText: string;
};

const identifierPattern = /^[a-z_][a-z0-9_]*$/;

const quote = (name: string) => {
  if (!identifierPattern.test(name)) {
    throw new Error(`"${name}" isn't a column or table name the device knows.`);
  }

  return name;
};

const toError = (error: unknown): LocalQueryError => {
  const localError = toLocalDbError(error);

  return {
    code: localError.code ?? "",
    details: null,
    hint: null,
    message: localError.message,
  };
};

const ok = (data: unknown, count: number | null = null): LocalQueryResult => ({
  count,
  data,
  error: null,
  status: 200,
  statusText: "OK",
});

const failed = (error: LocalQueryError): LocalQueryResult => ({
  count: null,
  data: null,
  error,
  status: 400,
  statusText: "Bad Request",
});

/* A column list as the API takes it: "*", or "a, b"; embeds are refused. */
const parseColumns = (columns: string) => {
  const trimmed = columns.trim();

  if (trimmed === "*" || trimmed === "") return "*";

  return trimmed
    .split(",")
    .map((column) => {
      const name = column.trim();

      if (name.includes("(") || name.includes(":")) {
        throw new Error(
          `"${name}": the device runs flat column lists only; read the related table on its own.`,
        );
      }

      return quote(name);
    })
    .join(", ");
};

/* One `or` condition, like "is_legendary.eq.true" or "id.is.null". */
const parseOrCondition = (
  condition: string,
  param: (value: unknown) => string,
) => {
  const [column, operator, ...rest] = condition.split(".");
  const raw = rest.join(".");
  const name = quote(column);
  const value =
    raw === "true"
      ? true
      : raw === "false"
        ? false
        : raw === "null"
          ? null
          : raw;

  switch (operator) {
    case "eq":
      return `${name} = ${param(value)}`;
    case "neq":
      return `${name} <> ${param(value)}`;
    case "is":
      if (value === null) return `${name} IS NULL`;
      if (value === true) return `${name} IS TRUE`;
      if (value === false) return `${name} IS FALSE`;
      break;
    case "lt":
      return `${name} < ${param(value)}`;
    case "lte":
      return `${name} <= ${param(value)}`;
    case "gt":
      return `${name} > ${param(value)}`;
    case "gte":
      return `${name} >= ${param(value)}`;
  }

  throw new Error(`"${condition}" isn't an or condition the device runs.`);
};

class LocalQuery implements PromiseLike<LocalQueryResult> {
  private columns = "*";
  private count: "exact" | null = null;
  private filters: { column: string; operator: string; value: unknown }[] = [];
  private head = false;
  private limitCount: number | null = null;
  private mutation: Mutation | null = null;
  private offset = 0;
  private orders: Order[] = [];
  private ors: string[] = [];
  private returning: string | null = null;
  private singleMode: "maybe" | "one" | null = null;

  constructor(
    private readonly db: LocalDb,
    private readonly table: string,
  ) {}

  select(columns = "*", options: { count?: "exact"; head?: boolean } = {}) {
    if (this.mutation) {
      this.returning = columns;
    } else {
      this.columns = columns;
      this.count = options.count ?? null;
      this.head = options.head ?? false;
    }

    return this;
  }

  insert(values: Record<string, unknown> | Record<string, unknown>[]) {
    this.mutation = {
      kind: "insert",
      rows: Array.isArray(values) ? values : [values],
    };

    return this;
  }

  upsert(
    values: Record<string, unknown> | Record<string, unknown>[],
    options: { ignoreDuplicates?: boolean; onConflict?: string } = {},
  ) {
    this.mutation = {
      ignoreDuplicates: options.ignoreDuplicates ?? false,
      kind: "upsert",
      onConflict: options.onConflict ?? null,
      rows: Array.isArray(values) ? values : [values],
    };

    return this;
  }

  update(values: Record<string, unknown>) {
    this.mutation = { kind: "update", values };

    return this;
  }

  delete() {
    this.mutation = { kind: "delete" };

    return this;
  }

  private where(column: string, operator: string, value: unknown) {
    this.filters.push({ column, operator, value });

    return this;
  }

  eq(column: string, value: unknown) {
    return this.where(column, "eq", value);
  }

  neq(column: string, value: unknown) {
    return this.where(column, "neq", value);
  }

  in(column: string, values: readonly unknown[]) {
    return this.where(column, "in", values);
  }

  is(column: string, value: boolean | null) {
    return this.where(column, "is", value);
  }

  not(column: string, operator: string, value: unknown) {
    if (operator !== "is") {
      throw new Error(`not(…, "${operator}") isn't a filter the device runs.`);
    }

    return this.where(column, "is not", value);
  }

  lt(column: string, value: unknown) {
    return this.where(column, "lt", value);
  }

  lte(column: string, value: unknown) {
    return this.where(column, "lte", value);
  }

  gt(column: string, value: unknown) {
    return this.where(column, "gt", value);
  }

  gte(column: string, value: unknown) {
    return this.where(column, "gte", value);
  }

  contains(column: string, value: unknown) {
    return this.where(column, "contains", value);
  }

  or(conditions: string) {
    this.ors.push(conditions);

    return this;
  }

  order(
    column: string,
    options: { ascending?: boolean; nullsFirst?: boolean } = {},
  ) {
    this.orders.push({
      ascending: options.ascending ?? true,
      column,
      nullsFirst: options.nullsFirst,
    });

    return this;
  }

  range(from: number, to: number) {
    this.offset = from;
    this.limitCount = to - from + 1;

    return this;
  }

  limit(count: number) {
    this.limitCount = count;

    return this;
  }

  maybeSingle() {
    this.singleMode = "maybe";

    return this;
  }

  /* Exactly one row; anything else is an error, as with the API. */
  single() {
    this.singleMode = "one";

    return this;
  }

  private buildWhere(params: unknown[]) {
    const param = (value: unknown) => {
      params.push(value);

      return `$${params.length}`;
    };
    const conditions = this.filters.map(({ column, operator, value }) => {
      const name = quote(column);

      switch (operator) {
        case "eq":
          return value === null
            ? `${name} IS NULL`
            : `${name} = ${param(value)}`;
        case "neq":
          return `${name} <> ${param(value)}`;
        case "in":
          return `${name} = ANY (${param(value)})`;
        case "is":
          return value === null
            ? `${name} IS NULL`
            : `${name} IS ${value ? "TRUE" : "FALSE"}`;
        case "is not":
          return value === null
            ? `${name} IS NOT NULL`
            : `${name} IS NOT ${value ? "TRUE" : "FALSE"}`;
        case "lt":
          return `${name} < ${param(value)}`;
        case "lte":
          return `${name} <= ${param(value)}`;
        case "gt":
          return `${name} > ${param(value)}`;
        case "gte":
          return `${name} >= ${param(value)}`;
        case "contains":
          return `${name} @> ${param(value)}`;
        default:
          throw new Error(`"${operator}" isn't a filter the device runs.`);
      }
    });

    for (const group of this.ors) {
      conditions.push(
        `(${group
          .split(",")
          .map((condition) => parseOrCondition(condition.trim(), param))
          .join(" OR ")})`,
      );
    }

    return conditions.length ? ` WHERE ${conditions.join(" AND ")}` : "";
  }

  private buildOrder() {
    if (!this.orders.length) return "";

    return ` ORDER BY ${this.orders
      .map(
        ({ ascending, column, nullsFirst }) =>
          `${quote(column)} ${ascending ? "ASC" : "DESC"}${
            nullsFirst === undefined
              ? ""
              : nullsFirst
                ? " NULLS FIRST"
                : " NULLS LAST"
          }`,
      )
      .join(", ")}`;
  }

  private buildPage() {
    return `${this.limitCount === null ? "" : ` LIMIT ${Math.max(0, Math.floor(this.limitCount))}`}${
      this.offset ? ` OFFSET ${Math.max(0, Math.floor(this.offset))}` : ""
    }`;
  }

  private buildMutation(mutation: Mutation, params: unknown[]) {
    const param = (value: unknown) => {
      params.push(value);

      return `$${params.length}`;
    };
    const returning =
      this.returning === null
        ? ""
        : ` RETURNING ${parseColumns(this.returning)}`;

    if (mutation.kind === "delete") {
      return `DELETE FROM ${this.table}${this.buildWhere(params)}${returning}`;
    }

    if (mutation.kind === "update") {
      const assignments = Object.entries(mutation.values)
        .filter(([, value]) => value !== undefined)
        .map(([column, value]) => `${quote(column)} = ${param(value)}`);

      return `UPDATE ${this.table} SET ${assignments.join(", ")}${this.buildWhere(params)}${returning}`;
    }

    const columns = [
      ...new Set(mutation.rows.flatMap((row) => Object.keys(row))),
    ].map(quote);
    /* A column a row leaves out takes its default, as with the API. */
    const values = mutation.rows
      .map(
        (row) =>
          `(${columns
            .map((column) =>
              row[column] === undefined ? "DEFAULT" : param(row[column]),
            )
            .join(", ")})`,
      )
      .join(", ");
    const insert = `INSERT INTO ${this.table} (${columns.join(", ")}) VALUES ${values}`;

    if (mutation.kind === "insert") return `${insert}${returning}`;

    const conflict = (mutation.onConflict ?? "id")
      .split(",")
      .map((column) => quote(column.trim()));
    const updates = columns.filter((column) => !conflict.includes(column));
    const action =
      mutation.ignoreDuplicates || !updates.length
        ? "DO NOTHING"
        : `DO UPDATE SET ${updates
            .map((column) => `${column} = EXCLUDED.${column}`)
            .join(", ")}`;

    return `${insert} ON CONFLICT (${conflict.join(", ")}) ${action}${returning}`;
  }

  private async run(): Promise<LocalQueryResult> {
    try {
      const params: unknown[] = [];

      if (this.mutation) {
        const sql = this.buildMutation(this.mutation, params);
        const { rows } = await this.db.query(sql, params, {
          parsers: rowParsers,
        });

        return this.shape(this.returning === null ? null : rows);
      }

      const where = this.buildWhere(params);

      if (this.head) {
        const { rows } = await this.db.query<{ count: number }>(
          `SELECT count(*)::integer AS count FROM ${this.table}${where}`,
          params,
        );

        return ok(null, rows[0]?.count ?? 0);
      }

      const { rows } = await this.db.query(
        `SELECT ${parseColumns(this.columns)} FROM ${this.table}${where}${this.buildOrder()}${this.buildPage()}`,
        params,
        { parsers: rowParsers },
      );
      const count =
        this.count === "exact"
          ? ((
              await this.db.query<{ count: number }>(
                `SELECT count(*)::integer AS count FROM ${this.table}${where}`,
                params,
              )
            ).rows[0]?.count ?? 0)
          : null;

      return this.shape(rows, count);
    } catch (error) {
      return failed(toError(error));
    }
  }

  private shape(rows: unknown[] | null, count: number | null = null) {
    if (!this.singleMode || rows === null) return ok(rows, count);

    if (rows.length > 1 || (this.singleMode === "one" && !rows.length)) {
      return failed({
        code: "PGRST116",
        details: `The result contains ${rows.length} rows`,
        hint: null,
        message: "JSON object requested, multiple (or no) rows returned",
      });
    }

    return ok(rows[0] ?? null, count);
  }

  then<Result1 = LocalQueryResult, Result2 = never>(
    onfulfilled?:
      | ((value: LocalQueryResult) => Result1 | PromiseLike<Result1>)
      | null,
    onrejected?: ((reason: unknown) => Result2 | PromiseLike<Result2>) | null,
  ): PromiseLike<Result1 | Result2> {
    return this.run().then(onfulfilled, onrejected);
  }
}

/* A function's result as the API gave it: rows for a set, else the value. */
const callLocalFunction = async (
  db: LocalDb,
  schema: string,
  name: string,
  args: Record<string, unknown> = {},
): Promise<LocalQueryResult> => {
  try {
    const qualified = `${quote(schema)}.${quote(name)}`;
    const entries = Object.entries(args).filter(
      ([, value]) => value !== undefined,
    );
    const argumentList = entries
      .map(([key], index) => `${quote(key)} => $${index + 1}`)
      .join(", ");
    const [
      { returns_set: returnsSet, type_kind: typeKind, type_name: typeName },
    ] = (
      await db.query<{
        returns_set: boolean;
        type_kind: string;
        type_name: string;
      }>(
        `SELECT p.proretset AS returns_set, t.typtype AS type_kind, t.typname AS type_name
         FROM pg_proc p
         JOIN pg_namespace n ON n.oid = p.pronamespace
         JOIN pg_type t ON t.oid = p.prorettype
         WHERE n.nspname = $1 AND p.proname = $2
         LIMIT 1`,
        [schema, name],
      )
    ).rows;
    const { rows } = await db.query<Record<string, unknown>>(
      `SELECT * FROM ${qualified}(${argumentList})`,
      entries.map(([, value]) => value),
      { parsers: rowParsers },
    );

    if (returnsSet || typeKind === "c" || typeName === "record") {
      return ok(rows);
    }

    return ok(typeName === "void" ? null : (rows[0]?.[name] ?? null));
  } catch (error) {
    return failed(toError(error));
  }
};

const fromSchema = (db: LocalDb, schema: string) => ({
  from: (table: string) =>
    new LocalQuery(db, `${quote(schema)}.${quote(table)}`),
  rpc: (name: string, args?: Record<string, unknown>) =>
    callLocalFunction(db, schema, name, args),
});

/*
 * The device's one user, answering the session questions the readers and
 * commands ask (`auth.getClaims()`, `auth.getUser()`).
 */
const localAuth = {
  getClaims: async () => ({
    data: { claims: { sub: localUserId } },
    error: null,
  }),
  getUser: async () => ({
    data: { user: { id: localUserId, user_metadata: {} } },
    error: null,
  }),
};

/*
 * The device database behind the query interface the readers and commands
 * take. Typed as the server's client so they take it unchanged; only the
 * parts listed above exist.
 */
export const createLocalQueryClient = (db: LocalDb): ServerSupabaseClient =>
  ({
    ...fromSchema(db, "public"),
    auth: localAuth,
    schema: (schema: string) => fromSchema(db, schema),
  }) as unknown as ServerSupabaseClient;
