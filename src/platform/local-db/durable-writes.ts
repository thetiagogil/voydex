/*
 * The device database answers a save before writing it to IndexedDB
 * (relaxed durability), so saves feel instant; the write follows in the
 * worker. These pieces let a page wait for that write: the worker writes
 * through one queue, and a page asks it, over a broadcast channel, to finish
 * writing everything saved so far. The channel reaches the worker that leads
 * the database, whichever tab started it.
 */

const channelName = "voydex-local-db-writes";

type WriteRequest = { id: string; type: "write" };
type WriteAnswer = { error?: string; id: string; type: "written" };

/*
 * Runs `write` one at a time. `changes` counts the database's queries; a
 * write covers every query counted before it started. A call joins the
 * write waiting its turn, or the one running when no query ran since it
 * started, and resolves at once when nothing changed since the last write.
 * Otherwise it queues the next write. Either way the returned promise
 * resolves once everything saved before the call is written. A failed write
 * is tried once more (a file the database dropped mid-write fails it).
 */
export const createWriteQueue = (
  write: () => Promise<void>,
  changes: () => number,
) => {
  let last: Promise<void> = Promise.resolve();
  let waiting: Promise<void> | null = null;
  let running: { covers: number; done: Promise<void> } | null = null;
  let written = -1;

  const run = async () => {
    const covers = changes();
    const done = write().catch(() => write());

    running = { covers, done };

    try {
      await done;
      written = Math.max(written, covers);
    } finally {
      if (running?.done === done) running = null;
    }
  };

  return () => {
    if (waiting) return waiting;

    const now = changes();

    if (running && running.covers === now) return running.done;
    if (!running && written === now) return Promise.resolve();

    const next = last.then(() => {
      waiting = null;

      return run();
    });

    waiting = next;
    last = next.catch(() => undefined);

    return next;
  };
};

/* In the worker that leads the database: answers each page's request. */
export const answerWriteRequests = (writeAll: () => Promise<void>) => {
  const channel = new BroadcastChannel(channelName);

  channel.onmessage = ({ data }: MessageEvent<WriteRequest>) => {
    if (data?.type !== "write") return;

    const answer = (error?: unknown) =>
      channel.postMessage({
        error:
          error === undefined
            ? undefined
            : error instanceof Error
              ? error.message
              : String(error),
        id: data.id,
        type: "written",
      } satisfies WriteAnswer);

    writeAll().then(() => answer(), answer);
  };

  return () => channel.close();
};

/*
 * On a page: resolves once everything saved so far is in IndexedDB. Fails
 * if the write fails, or if no worker answers in time (the tab that led the
 * database closed mid-write).
 */
export const waitForWrites = (timeoutMs = 30_000) =>
  new Promise<void>((resolve, reject) => {
    const channel = new BroadcastChannel(channelName);
    const id = crypto.randomUUID();
    const finish = (error?: Error) => {
      clearTimeout(timer);
      channel.close();

      if (error) reject(error);
      else resolve();
    };
    const timer = setTimeout(
      () => finish(new Error("The device database didn't finish writing.")),
      timeoutMs,
    );

    channel.onmessage = ({ data }: MessageEvent<WriteAnswer>) => {
      if (data?.type !== "written" || data.id !== id) return;

      finish(data.error === undefined ? undefined : new Error(data.error));
    };
    channel.postMessage({ id, type: "write" } satisfies WriteRequest);
  });
