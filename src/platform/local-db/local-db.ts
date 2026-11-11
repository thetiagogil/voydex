import { types, type PGliteInterface } from "@electric-sql/pglite";

/*
 * The device database as readers and commands receive it: plain SQL reads,
 * database function calls for saves, and transactions. Readers and commands
 * take it as a parameter, the way they took a Supabase client before.
 */
export type LocalDb = Pick<PGliteInterface, "exec" | "query" | "transaction">;

/*
 * A failed device database call. `code` is the Postgres error code when the
 * database gave one (23514 for a failed check, 23505 for a duplicate), so a
 * command can turn a known refusal into its own message.
 */
export class LocalDbError extends Error {
  readonly code: string | null;

  constructor(
    message: string,
    options: { cause?: unknown; code?: string | null } = {},
  ) {
    super(message, { cause: options.cause });
    this.name = "LocalDbError";
    this.code = options.code ?? null;
  }
}

const readErrorCode = (error: unknown) => {
  if (typeof error !== "object" || error === null || !("code" in error)) {
    return null;
  }

  return typeof error.code === "string" ? error.code : null;
};

export const toLocalDbError = (error: unknown) => {
  if (error instanceof LocalDbError) return error;

  const message =
    error instanceof Error && error.message
      ? error.message
      : "The device database call failed.";

  return new LocalDbError(message, {
    cause: error,
    code: readErrorCode(error),
  });
};

/* Postgres prints "2026-11-10 09:30:00.123456+00"; the API sent ISO text. */
const toIsoDateTime = (value: string) =>
  value.replace(" ", "T").replace(/([+-]\d\d)$/, "$1:00");

/*
 * Rows come back the way the Supabase API sent them, so the mappers that
 * read them need no change: dates and times as ISO text (PGlite would make
 * them Date objects) and numeric as a number (PGlite leaves it as text).
 */
export const rowParsers = {
  [types.DATE]: (value: string) => value,
  [types.NUMERIC]: (value: string) => Number(value),
  [types.TIMESTAMP]: toIsoDateTime,
  [types.TIMESTAMPTZ]: toIsoDateTime,
};

/* A plain SQL read; a failed read throws, it never reads as empty. */
export const runQuery = async <Row>(
  db: LocalDb,
  sql: string,
  params: unknown[] = [],
): Promise<Row[]> => {
  try {
    const result = await db.query<Row>(sql, params, { parsers: rowParsers });

    return result.rows;
  } catch (error) {
    throw toLocalDbError(error);
  }
};

const functionNamePattern = /^[a-z_][a-z0-9_]*\.[a-z_][a-z0-9_]*$/;
const argumentNamePattern = /^p_[a-z0-9_]+$/;

/*
 * Calls a database function by its named arguments, the way Supabase's rpc
 * did: `callFunction(db, "gameplay.create_mainline_play", { p_name: "Run" })`.
 * Undefined arguments are left out so the function's default applies.
 */
export const callFunction = async <Row>(
  db: LocalDb,
  name: string,
  args: Record<string, unknown>,
): Promise<Row[]> => {
  if (!functionNamePattern.test(name)) {
    throw new LocalDbError(`"${name}" isn't a schema-qualified function.`);
  }

  const entries = Object.entries(args).filter(
    ([, value]) => value !== undefined,
  );
  const badName = entries.find(([key]) => !argumentNamePattern.test(key));

  if (badName) {
    throw new LocalDbError(`"${badName[0]}" isn't a function argument name.`);
  }

  const argumentList = entries
    .map(([key], index) => `${key} => $${index + 1}`)
    .join(", ");

  return runQuery<Row>(
    db,
    `SELECT * FROM ${name}(${argumentList})`,
    entries.map(([, value]) => value),
  );
};
