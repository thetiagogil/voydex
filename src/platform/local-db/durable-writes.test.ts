import { afterEach, describe, expect, it } from "vitest";

import {
  answerWriteRequests,
  createWriteQueue,
  waitForWrites,
} from "@/platform/local-db/durable-writes";

const deferred = () => {
  let resolve!: () => void;
  let reject!: (error: Error) => void;
  const promise = new Promise<void>((done, fail) => {
    resolve = done;
    reject = fail;
  });

  return { promise, reject, resolve };
};

const settled = async <T>(promise: Promise<T>) => {
  let state = "pending";

  promise.then(
    () => (state = "resolved"),
    () => (state = "rejected"),
  );
  await new Promise((resolve) => setTimeout(resolve, 0));

  return state;
};

describe("createWriteQueue", () => {
  /* A database: each save counts a change, each write is held until let go. */
  const setUp = () => {
    const writes: ReturnType<typeof deferred>[] = [];
    let changes = 0;
    const writeAll = createWriteQueue(
      () => {
        writes.push(deferred());

        return writes.at(-1)!.promise;
      },
      () => changes,
    );

    return {
      save: () => {
        changes += 1;
      },
      writeAll,
      writes,
    };
  };

  it("joins a write that hasn't started yet", async () => {
    const { save, writeAll, writes } = setUp();

    save();
    const first = writeAll();
    save();
    const second = writeAll();

    expect(second).toBe(first);
    await Promise.resolve();
    expect(writes).toHaveLength(1);
    writes[0]!.resolve();
    await expect(second).resolves.toBeUndefined();
  });

  it("runs another write after the one running when a save landed since it started", async () => {
    const { save, writeAll, writes } = setUp();

    save();
    void writeAll();
    await Promise.resolve();
    expect(writes).toHaveLength(1);

    /* A save lands while the first write runs. */
    save();
    const afterSave = writeAll();

    writes[0]!.resolve();
    expect(await settled(afterSave)).toBe("pending");
    expect(writes).toHaveLength(2);
    writes[1]!.resolve();
    expect(await settled(afterSave)).toBe("resolved");
  });

  it("joins the write running when nothing changed since it started", async () => {
    const { save, writeAll, writes } = setUp();

    save();
    const running = writeAll();
    await Promise.resolve();

    const joined = writeAll();

    expect(await settled(joined)).toBe("pending");
    writes[0]!.resolve();
    await expect(joined).resolves.toBeUndefined();
    await running;
    expect(writes).toHaveLength(1);
  });

  it("writes nothing when nothing changed since the last write", async () => {
    const { save, writeAll, writes } = setUp();

    save();
    const first = writeAll();
    await Promise.resolve();
    writes[0]!.resolve();
    await first;

    await expect(writeAll()).resolves.toBeUndefined();
    expect(writes).toHaveLength(1);
  });

  it("tries a failed write once more", async () => {
    const { save, writeAll, writes } = setUp();

    save();
    const write = writeAll();
    await Promise.resolve();
    writes[0]!.reject(new Error("A file was dropped mid-write."));
    await settled(write);
    expect(writes).toHaveLength(2);
    writes[1]!.resolve();
    await expect(write).resolves.toBeUndefined();
  });

  it("reports a write that fails twice and writes again on the next call", async () => {
    const { save, writeAll, writes } = setUp();

    save();
    const write = writeAll();
    await Promise.resolve();
    writes[0]!.reject(new Error("Storage is full."));
    await settled(write);
    writes[1]!.reject(new Error("Storage is full."));
    await expect(write).rejects.toThrow("Storage is full.");

    const again = writeAll();
    await settled(again);
    expect(writes).toHaveLength(3);
    writes[2]!.resolve();
    await expect(again).resolves.toBeUndefined();
  });
});

describe("waitForWrites", () => {
  let stop: (() => void) | null = null;

  afterEach(() => {
    stop?.();
    stop = null;
  });

  it("resolves once the leading worker has written", async () => {
    const write = deferred();

    stop = answerWriteRequests(() => write.promise);

    const waiting = waitForWrites();

    expect(await settled(waiting)).toBe("pending");
    write.resolve();
    await expect(waiting).resolves.toBeUndefined();
  });

  it("fails when the write fails", async () => {
    stop = answerWriteRequests(() =>
      Promise.reject(new Error("Storage is full.")),
    );

    await expect(waitForWrites()).rejects.toThrow("Storage is full.");
  });

  it("answers each page's request on its own", async () => {
    const writes: ReturnType<typeof deferred>[] = [];

    stop = answerWriteRequests(() => {
      writes.push(deferred());

      return writes.at(-1)!.promise;
    });

    const first = waitForWrites();
    const second = waitForWrites();

    await settled(first);
    expect(writes).toHaveLength(2);
    writes[1]!.resolve();
    expect(await settled(second)).toBe("resolved");
    expect(await settled(first)).toBe("pending");
    writes[0]!.resolve();
    await expect(first).resolves.toBeUndefined();
  });

  it("fails when no worker answers in time", async () => {
    await expect(waitForWrites(20)).rejects.toThrow(
      "The device database didn't finish writing.",
    );
  });
});
