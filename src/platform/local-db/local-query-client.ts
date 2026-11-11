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
 * function calls, and embedded tables (`alias:table!hint(cols)`, with
 * `!inner` and filters on their columns) found through their foreign keys.
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

/* Splits a column list at its top-level commas, leaving embeds whole. */
const splitColumns = (columns: string) => {
  const parts: string[] = [];
  let depth = 0;
  let current = "";

  for (const character of columns) {
    if (character === "(") depth += 1;
    if (character === ")") depth -= 1;

    if (character === "," && depth === 0) {
      parts.push(current.trim());
      current = "";
    } else {
      current += character;
    }
  }

  if (current.trim()) parts.push(current.trim());

  return parts;
};

/* A plain column list, for RETURNING: "*", or "a, b". */
const parseColumns = (columns: string) => {
  const trimmed = columns.trim();

  if (trimmed === "*" || trimmed === "") return "*";

  return splitColumns(trimmed).map(quote).join(", ");
};

/*
 * A related table read with its row, as the API embeds it:
 * `alias:table!hint(a, b)`, where the hint names the foreign key column or
 * says `inner` (only rows that have one).
 */
type Embed = {
  alias: string;
  columns: string[];
  hint: string | null;
  inner: boolean;
  table: string;
};

const embedPattern =
  /^(?:([a-z_][a-z0-9_]*):)?([a-z_][a-z0-9_]*)(?:!([a-z_][a-z0-9_]*))?\s*\(([^()]*)\)$/;

const parseEmbed = (part: string): Embed | null => {
  const match = embedPattern.exec(part);

  if (!match) return null;

  const [, alias, table, hint, columns] = match;

  return {
    alias: quote(alias ?? table),
    columns: columns.trim() === "*" ? ["*"] : splitColumns(columns).map(quote),
    hint: hint && hint !== "inner" ? hint : null,
    inner: hint === "inner",
    table: quote(table),
  };
};

/* How a related table joins its row: one row (`base` points at it) or many. */
type Relation = { condition: string; many: boolean };

type ForeignKey = {
  columns: string[];
  from_base: boolean;
  name: string;
  ref_columns: string[];
};

const findRelation = async (
  db: LocalDb,
  base: string,
  schema: string,
  embed: Embed,
): Promise<Relation> => {
  const { rows } = await db.query<ForeignKey>(
    `SELECT con.conname AS name, con.conrelid = $1::regclass AS from_base,
       ARRAY(SELECT a.attname FROM unnest(con.conkey) WITH ORDINALITY k(n, i)
         JOIN pg_attribute a ON a.attrelid = con.conrelid AND a.attnum = k.n ORDER BY k.i)::text[] AS columns,
       ARRAY(SELECT a.attname FROM unnest(con.confkey) WITH ORDINALITY k(n, i)
         JOIN pg_attribute a ON a.attrelid = con.confrelid AND a.attnum = k.n ORDER BY k.i)::text[] AS ref_columns
     FROM pg_constraint con
     WHERE con.contype = 'f'
       AND ((con.conrelid = $1::regclass AND con.confrelid = $2::regclass)
         OR (con.conrelid = $2::regclass AND con.confrelid = $1::regclass))`,
    [base, `${schema}.${embed.table}`],
  );
  const hinted = embed.hint
    ? rows.filter(
        (key) => key.name === embed.hint || key.columns.includes(embed.hint!),
      )
    : rows;
  const toOne = hinted.filter((key) => key.from_base);
  const candidates = toOne.length ? toOne : hinted;

  if (candidates.length !== 1) {
    throw new Error(
      `"${embed.table}" relates to "${base}" ${candidates.length ? "more than one way; add a hint" : "in no way the device knows"}.`,
    );
  }

  const [key] = candidates;
  const pairs = key.columns.map((column, index) =>
    key.from_base
      ? `related.${quote(key.ref_columns[index])} = base.${quote(column)}`
      : `related.${quote(column)} = base.${quote(key.ref_columns[index])}`,
  );

  return { condition: pairs.join(" AND "), many: !key.from_base };
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
    case "in": {
      /* "in.(1,2,3)": the list as one array parameter. */
      const list = /^\((.*)\)$/.exec(raw)?.[1];

      if (list !== undefined) {
        return `${name} = ANY (${param(
          list
            .split(",")
            .map((item) => item.trim().replace(/^"(.*)"$/, "$1"))
            .filter(Boolean),
        )})`;
      }

      break;
    }
  }

  throw new Error(`"${condition}" isn't an or condition the device runs.`);
};

/* One API filter as a SQL condition on `name`. */
const filterCondition = (
  name: string,
  operator: string,
  value: unknown,
  param: (value: unknown) => string,
) => {
  switch (operator) {
    case "eq":
      return value === null ? `${name} IS NULL` : `${name} = ${param(value)}`;
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

  private readonly table: string;

  constructor(
    private readonly db: LocalDb,
    private readonly schema: string,
    table: string,
  ) {
    this.table = `${quote(schema)}.${quote(table)}`;
  }

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

  /* The select list, with each embedded table read as JSON beside its row. */
  private async resolveSelect() {
    const relations = new Map<string, Embed & Relation>();
    const parts = this.columns.trim() ? splitColumns(this.columns) : ["*"];
    const select: string[] = [];

    for (const part of parts) {
      const embed = parseEmbed(part);

      if (!embed) {
        select.push(part === "*" ? "base.*" : quote(part));
        continue;
      }

      const relation = {
        ...embed,
        ...(await findRelation(this.db, this.table, this.schema, embed)),
      };
      const row = embed.columns.includes("*")
        ? "row_to_json(related)"
        : `json_build_object(${embed.columns
            .map((column) => `'${column}', related.${column}`)
            .join(", ")})`;
      const from = `FROM ${quote(this.schema)}.${embed.table} related WHERE ${relation.condition}`;

      relations.set(embed.alias, relation);
      relations.set(embed.table, relation);
      select.push(
        relation.many
          ? `COALESCE((SELECT json_agg(${row}) ${from}), '[]'::json) AS ${embed.alias}`
          : `(SELECT ${row} ${from} LIMIT 1) AS ${embed.alias}`,
      );
    }

    return { relations, select: select.join(", ") };
  }

  private buildWhere(
    params: unknown[],
    relations: ReadonlyMap<string, Embed & Relation> = new Map(),
  ) {
    const param = (value: unknown) => {
      params.push(value);

      return `$${params.length}`;
    };
    const conditions = this.filters.map(({ column, operator, value }) => {
      /* A filter on an embedded table's column keeps the rows that match. */
      const [owner, field] = column.includes(".")
        ? column.split(".")
        : [null, column];
      const relation = owner ? relations.get(owner) : null;

      if (owner && !relation) {
        throw new Error(`"${column}" filters a table this read doesn't embed.`);
      }

      const name = relation ? `related.${quote(field)}` : quote(field);
      const condition = filterCondition(name, operator, value, param);

      return relation
        ? `EXISTS (SELECT 1 FROM ${quote(this.schema)}.${relation.table} related WHERE ${relation.condition} AND ${condition})`
        : condition;
    });

    for (const relation of new Set(relations.values())) {
      if (relation.inner) {
        conditions.push(
          `EXISTS (SELECT 1 FROM ${quote(this.schema)}.${relation.table} related WHERE ${relation.condition})`,
        );
      }
    }

    for (const group of this.ors) {
      conditions.push(
        `(${splitColumns(group)
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

      const { relations, select } = await this.resolveSelect();
      const where = this.buildWhere(params, relations);
      const from = `FROM ${this.table} AS base${where}`;
      const readCount = async () =>
        (
          await this.db.query<{ count: number }>(
            `SELECT count(*)::integer AS count ${from}`,
            params,
          )
        ).rows[0]?.count ?? 0;

      if (this.head) return ok(null, await readCount());

      const { rows } = await this.db.query(
        `SELECT ${select} ${from}${this.buildOrder()}${this.buildPage()}`,
        params,
        { parsers: rowParsers },
      );
      const count = this.count === "exact" ? await readCount() : null;

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
  from: (table: string) => new LocalQuery(db, schema, table),
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
