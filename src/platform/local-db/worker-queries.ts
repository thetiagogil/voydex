import type { PGliteInterface, Results } from "@electric-sql/pglite";

import { rowParsers, type LocalDb } from "@/platform/local-db/local-db";

/*
 * One SQL statement as one message to the device database's worker.
 *
 * PGlite's worker client runs a query as about fourteen messages between
 * the page and the worker (locks, the statement's protocol steps, the write
 * to IndexedDB), each a wait of its own, so a page of 30 small reads spent
 * most of its time on the way. The worker leading the database also takes a
 * query in a single message and answers with its rows: the same statement on
 * the same database, behind the same locks, so it waits for a transaction
 * another call holds. The worker says when its database has started; until
 * then, and in a tab whose worker doesn't lead the database (another tab's
 * does), queries keep PGlite's way, as do transactions and `exec`.
 */

const queryType = "voydex-query";
const answerType = "voydex-query-answer";
const leadingType = "voydex-leading";

type QueryRequest = {
  id: number;
  params: unknown[];
  /* Rows read with `rowParsers`, the parsers every Voydex read passes. */
  parse: boolean;
  sql: string;
  type: typeof queryType;
};

/* A database error's fields a command reads (`code`), kept across. */
const errorFields = [
  "code",
  "column",
  "constraint",
  "detail",
  "hint",
  "position",
  "schema",
  "severity",
  "table",
] as const;

type QueryAnswer = { id: number; type: typeof answerType } & (
  | { result: Results<unknown> }
  | { error: { message: string } & Record<string, unknown> }
);

/* The part of a Worker each side uses, so tests can pass a stand-in. */
export type QueryPort = {
  addEventListener: (
    type: "message",
    listener: (event: MessageEvent) => void,
  ) => void;
  postMessage: (message: unknown) => void;
};

const describeError = (error: unknown) => {
  const fields: Record<string, unknown> = {
    message:
      error instanceof Error && error.message
        ? error.message
        : "The device database call failed.",
  };

  if (typeof error === "object" && error !== null) {
    for (const field of errorFields) {
      const value = (error as Record<string, unknown>)[field];

      if (value !== undefined) fields[field] = value;
    }
  }

  return fields as { message: string } & Record<string, unknown>;
};

/*
 * In the worker: once this worker leads the database and it has started
 * (`database`), tells its tab, then answers each query.
 */
export const answerWorkerQueries = (
  port: QueryPort,
  database: Promise<Pick<PGliteInterface, "query">>,
) => {
  port.addEventListener("message", ({ data }: MessageEvent<QueryRequest>) => {
    if (data?.type !== queryType) return;

    const { id, params, parse, sql } = data;
    const answer = (body: Omit<QueryAnswer, "id" | "type">) =>
      port.postMessage({ ...body, id, type: answerType } as QueryAnswer);

    database
      .then((db) =>
        db.query(sql, params, parse ? { parsers: rowParsers } : undefined),
      )
      .then(
        (result) => {
          try {
            answer({ result });
          } catch (error) {
            /* Rows a message can't carry still answer, as a failure. */
            answer({ error: describeError(error) });
          }
        },
        (error: unknown) => answer({ error: describeError(error) }),
      );
  });

  void database.then(() => port.postMessage({ type: leadingType }));
};

/* The query options a single message can carry: none, or `rowParsers`. */
const readsParsers = (options: unknown) => {
  if (options === undefined) return false;
  if (typeof options !== "object" || options === null) return null;

  const keys = Object.keys(options);

  if (keys.length === 1 && keys[0] === "parsers") {
    return (options as { parsers: unknown }).parsers === rowParsers
      ? true
      : null;
  }

  return keys.length === 0 ? false : null;
};

/*
 * On the page, listening before PGlite starts (a message nobody listens for
 * is lost): returns the device database with `query` sent as one message to
 * this tab's worker once it says it leads the database, and PGlite's way
 * until then.
 */
export const connectWorkerQueries = (port: QueryPort) => {
  let leading = false;
  let nextId = 0;
  const waiting = new Map<
    number,
    { reject: (error: Error) => void; resolve: (result: never) => void }
  >();

  port.addEventListener(
    "message",
    ({ data }: MessageEvent<QueryAnswer | { type: typeof leadingType }>) => {
      if (data?.type === leadingType) {
        leading = true;
        return;
      }

      if (data?.type !== answerType) return;

      const entry = waiting.get(data.id);

      if (!entry) return;

      waiting.delete(data.id);

      if ("result" in data) {
        entry.resolve(data.result as never);
      } else {
        entry.reject(Object.assign(new Error(data.error.message), data.error));
      }
    },
  );

  return (db: LocalDb): LocalDb => ({
    exec: (sql, options) => db.exec(sql, options),
    query: (sql, params = [], options) => {
      const parse = readsParsers(options);

      if (!leading || parse === null) return db.query(sql, params, options);

      const id = (nextId += 1);

      return new Promise((resolve, reject) => {
        waiting.set(id, { reject, resolve });

        try {
          port.postMessage({
            id,
            params,
            parse,
            sql,
            type: queryType,
          } satisfies QueryRequest);
        } catch (error) {
          waiting.delete(id);
          throw error;
        }
      });
    },
    transaction: (callback) => db.transaction(callback),
  });
};
