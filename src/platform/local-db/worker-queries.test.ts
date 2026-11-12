import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { rowParsers } from "@/platform/local-db/local-db";
import { createTestDb } from "@/platform/local-db/local-db-test-support";
import {
  answerWorkerQueries,
  connectWorkerQueries,
  type QueryPort,
} from "@/platform/local-db/worker-queries";

/* A page and its worker: what one side posts, the other side hears. */
const createPorts = () => {
  const page = new EventTarget();
  const worker = new EventTarget();
  const queries: unknown[] = [];
  const port = (from: EventTarget, to: EventTarget): QueryPort => ({
    addEventListener: (type, listener) =>
      from.addEventListener(type, listener as EventListener),
    postMessage: (message) => {
      if ((message as { type?: string }).type === "voydex-query") {
        queries.push(message);
      }

      /* Like a real port: a copy (or a DataCloneError), a moment later. */
      const data = structuredClone(message);

      queueMicrotask(() =>
        to.dispatchEvent(new MessageEvent("message", { data })),
      );
    },
  });

  return { page: port(page, worker), queries, worker: port(worker, page) };
};

const settle = () => new Promise((resolve) => setTimeout(resolve, 0));

/* PGlite's own way through the worker client, watched. */
const workerClient = (db: PGlite) => {
  const client = {
    exec: db.exec.bind(db),
    query: db.query.bind(db),
    transaction: db.transaction.bind(db),
  };

  vi.spyOn(client, "query");

  return client;
};

/* A tab whose worker leads the database, once the worker has said so. */
const connectLeader = async (db: PGlite) => {
  const ports = createPorts();
  const client = workerClient(db);
  const withWorkerQueries = connectWorkerQueries(ports.page);

  answerWorkerQueries(ports.worker, Promise.resolve(db));
  await settle();

  return { client, local: withWorkerQueries(client), ports };
};

describe("worker queries", () => {
  let db: PGlite;

  beforeEach(async () => {
    db = await createTestDb();
    await db.exec(`
      CREATE TABLE plays (id int PRIMARY KEY, name text NOT NULL, started_on date);
      INSERT INTO plays VALUES (1, 'Red run', '2026-11-12');
    `);
  });

  afterEach(async () => {
    await db.close();
  });

  it("sends a query in one message and answers with its rows", async () => {
    const { client, local, ports } = await connectLeader(db);

    const result = await local.query<{ name: string; started_on: string }>(
      "SELECT name, started_on FROM plays WHERE id = $1",
      [1],
      { parsers: rowParsers },
    );

    /* Dates as text, the way every Voydex read takes them. */
    expect(result.rows).toEqual([
      { name: "Red run", started_on: "2026-11-12" },
    ]);
    expect(client.query).not.toHaveBeenCalled();
    expect(ports.queries).toHaveLength(1);
  });

  it("reads without parsers when none are asked for", async () => {
    const { local } = await connectLeader(db);

    const result = await local.query<{ started_on: Date }>(
      "SELECT started_on FROM plays",
    );

    expect(result.rows[0]?.started_on).toBeInstanceOf(Date);
  });

  it("asks PGlite's way until the worker says its database has started", async () => {
    const ports = createPorts();
    const client = workerClient(db);
    const withWorkerQueries = connectWorkerQueries(ports.page);
    let start: (db: PGlite) => void = () => undefined;

    answerWorkerQueries(
      ports.worker,
      new Promise<PGlite>((resolve) => {
        start = resolve;
      }),
    );
    const local = withWorkerQueries(client);

    await local.query("SELECT 1");

    expect(client.query).toHaveBeenCalledOnce();
    expect(ports.queries).toHaveLength(0);

    start(db);
    await settle();
    await local.query("SELECT 1");

    expect(client.query).toHaveBeenCalledOnce();
    expect(ports.queries).toHaveLength(1);
  });

  it("asks PGlite's way from a tab whose worker doesn't lead the database", async () => {
    const ports = createPorts();
    const client = workerClient(db);
    const local = connectWorkerQueries(ports.page)(client);

    /* Another tab's worker leads: this one never starts a database. */
    answerWorkerQueries(ports.worker, new Promise<PGlite>(() => undefined));
    await settle();
    await local.query("SELECT 1");

    expect(client.query).toHaveBeenCalledOnce();
    expect(ports.queries).toHaveLength(0);
  });

  it("keeps the database's error code, so a command can name the refusal", async () => {
    const { local } = await connectLeader(db);

    await expect(
      local.query("INSERT INTO plays (id, name) VALUES (1, 'Again')"),
    ).rejects.toMatchObject({ code: "23505", constraint: "plays_pkey" });
  });

  it("asks PGlite's way for options a message can't carry", async () => {
    const { local, ports } = await connectLeader(db);
    const parsers = { 1082: (value: string) => `day ${value}` };

    const result = await local.query<{ started_on: string }>(
      "SELECT started_on FROM plays",
      [],
      { parsers },
    );

    expect(result.rows[0]?.started_on).toBe("day 2026-11-12");
    expect(ports.queries).toHaveLength(0);
  });

  it("fails a query whose rows a message can't carry, instead of waiting forever", async () => {
    const ports = createPorts();
    const withWorkerQueries = connectWorkerQueries(ports.page);
    const odd = {
      query: async () => ({ fields: [], rows: [{ read: () => "no" }] }),
    };

    answerWorkerQueries(
      ports.worker,
      Promise.resolve(odd as unknown as PGlite),
    );
    await settle();

    await expect(
      withWorkerQueries(workerClient(db)).query("SELECT 1"),
    ).rejects.toThrow();
  });

  it("waits for a transaction another call holds", async () => {
    const { local } = await connectLeader(db);
    let read: Promise<{ rows: { name: string }[] }> | null = null;

    await local.transaction(async (tx) => {
      await tx.query("UPDATE plays SET name = 'Blue run' WHERE id = 1");
      read = local.query<{ name: string }>("SELECT name FROM plays");
      /* Give the read every chance to run inside the transaction. */
      await new Promise((resolve) => setTimeout(resolve, 20));
      await tx.query("UPDATE plays SET name = 'Green run' WHERE id = 1");
    });

    await expect(read!).resolves.toMatchObject({
      rows: [{ name: "Green run" }],
    });
  });
});
