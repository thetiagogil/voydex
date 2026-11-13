import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

const writes = vi.hoisted(() => ({
  pending: [] as { reject: (error: Error) => void; resolve: () => void }[],
}));

vi.mock("@/platform/local-db/durable-writes", () => ({
  waitForWrites: () =>
    new Promise<void>((resolve, reject) => {
      writes.pending.push({ reject, resolve });
    }),
}));

const { notifyLocalSave, preparePageReads, subscribeLocalSaves } =
  await import("@/platform/local-db/local-db-context");
const { currentPageReadRevision, movePageReadRevision, startPageRead } =
  await import("@/platform/local-db/page-reads");

const flush = () => new Promise((resolve) => setTimeout(resolve, 0));

describe("notifyLocalSave", () => {
  let page: EventTarget;
  let root: { dataset: Record<string, string | undefined> };

  beforeEach(() => {
    page = new EventTarget();
    root = { dataset: {} };
    vi.stubGlobal("window", page);
    vi.stubGlobal("document", { documentElement: root });
    writes.pending.length = 0;
  });

  afterEach(() => {
    vi.unstubAllGlobals();
    vi.restoreAllMocks();
  });

  const leaving = () => {
    const event = new Event("beforeunload", { cancelable: true });

    page.dispatchEvent(event);

    return event.defaultPrevented ? "asks first" : "leaves";
  };

  it("redraws the screen at once and counts the save once it is written", async () => {
    const redraw = vi.fn();
    const stop = subscribeLocalSaves(redraw);

    notifyLocalSave();

    expect(redraw).toHaveBeenCalledOnce();
    expect(root.dataset.savesStarted).toBe("1");
    expect(root.dataset.saves).toBeUndefined();
    expect(leaving()).toBe("asks first");

    writes.pending[0]!.resolve();
    await flush();

    expect(root.dataset.saves).toBe("1");
    expect(leaving()).toBe("leaves");
    stop();
  });

  it("asks before leaving until every save is written", async () => {
    notifyLocalSave();
    notifyLocalSave();

    writes.pending[0]!.resolve();
    await flush();
    expect(root.dataset.saves).toBe("1");
    expect(leaving()).toBe("asks first");

    writes.pending[1]!.resolve();
    await flush();
    expect(root.dataset.saves).toBe("2");
    expect(leaving()).toBe("leaves");
  });

  it("writes a background save without counting it", async () => {
    notifyLocalSave({ background: true });

    expect(leaving()).toBe("asks first");
    writes.pending[0]!.resolve();
    await flush();

    expect(root.dataset.savesStarted).toBeUndefined();
    expect(root.dataset.saves).toBeUndefined();
    expect(leaving()).toBe("leaves");
  });

  it("doesn't count a save that wasn't written, and stops asking", async () => {
    const logged = vi.spyOn(console, "error").mockImplementation(() => {});

    notifyLocalSave();
    writes.pending[0]!.reject(new Error("Storage is full."));
    await flush();

    expect(root.dataset.saves).toBeUndefined();
    expect(leaving()).toBe("leaves");
    expect(logged).toHaveBeenCalledOnce();
  });
});

describe("preparePageReads", () => {
  it("reads each page in turn, and stops when the data changes meanwhile", async () => {
    const db = {} as Parameters<typeof preparePageReads>[0];
    const read = (page: string) => vi.fn(async () => page);
    const home = read("home");
    const plays = vi.fn(async () => {
      /* A save lands while Plays is read. */
      movePageReadRevision();

      return "plays";
    });
    const stats = read("stats");

    await preparePageReads(db, [
      { key: "home:", read: home },
      { key: "plays:active", read: plays },
      { key: "stats", read: stats },
    ]);

    expect(home).toHaveBeenCalledOnce();
    expect(plays).toHaveBeenCalledOnce();
    /* The next round reads it, at the new revision. */
    expect(stats).not.toHaveBeenCalled();
    startPageRead(db, "stats", currentPageReadRevision(), stats);
    expect(stats).toHaveBeenCalledOnce();
  });
});
