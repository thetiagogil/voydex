import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

import type { BackgroundDownloadResult } from "@/platform/local-db/game-data-background";

const state = vi.hoisted(() => ({
  missing: [] as { file: "game" | "learnsets"; slug: string }[],
  saveListeners: new Set<() => void>(),
  versions: null as unknown,
}));

vi.mock("@/platform/local-db/local-db-context", () => ({
  subscribeLocalSaves: (listener: () => void) => {
    state.saveListeners.add(listener);

    return () => state.saveListeners.delete(listener);
  },
}));
vi.mock("@/platform/local-db/open-local-db", () => ({
  openLocalDb: vi.fn(async () => ({ db: {}, versions: state.versions })),
  refreshGameDataVersions: vi.fn(async () => ({ schemaHash: "refreshed" })),
}));
vi.mock("@/platform/local-db/game-data", async (importOriginal) => ({
  ...(await importOriginal<typeof import("@/platform/local-db/game-data")>()),
  downloadGameDataFileWithin: vi.fn(() => "timed download"),
  fetchGameDataVersions: vi.fn(async () => ({ schemaHash: "fresh" })),
}));
vi.mock("@/platform/local-db/local-db", async (importOriginal) => ({
  ...(await importOriginal<typeof import("@/platform/local-db/local-db")>()),
  /* No game by that id: an ensure fails once it has read the device. */
  runQuery: vi.fn(async () => []),
}));
vi.mock("@/platform/local-db/game-data-background", async (importOriginal) => ({
  ...(await importOriginal<
    typeof import("@/platform/local-db/game-data-background")
  >()),
  readBackgroundDownloads: vi.fn(async () => state.missing),
  runBackgroundDownloads: vi.fn(
    async (): Promise<BackgroundDownloadResult> => ({
      done: [],
      failed: [],
      status: "done",
    }),
  ),
}));

const browser = {
  navigator: {
    connection: undefined as { saveData?: boolean } | undefined,
    locks: undefined as unknown,
    onLine: true,
  },
  window: new EventTarget(),
};

/*
 * The module keeps what failed for the visit, so each test loads it anew,
 * with fresh mocks.
 */
const load = async () => {
  const downloads = await import("@/platform/local-db/game-downloads");
  const gameData = await import("@/platform/local-db/game-data");
  const background = await import("@/platform/local-db/game-data-background");
  const opened = await import("@/platform/local-db/open-local-db");

  return {
    ...downloads,
    fetchVersions: vi.mocked(gameData.fetchGameDataVersions),
    openLocalDb: vi.mocked(opened.openLocalDb),
    readMissing: vi.mocked(background.readBackgroundDownloads),
    refreshVersions: vi.mocked(opened.refreshGameDataVersions),
    run: vi.mocked(background.runBackgroundDownloads),
  };
};

/* Lets the timers fire and every promise they start settle. */
const settle = async (ms = 3000) => {
  await vi.advanceTimersByTimeAsync(ms);
};

const save = () => {
  for (const listener of state.saveListeners) listener();
};

let stop: () => void = () => undefined;

beforeEach(() => {
  vi.resetModules();
  vi.clearAllMocks();
  vi.useFakeTimers();
  browser.navigator.onLine = true;
  browser.navigator.connection = undefined;
  browser.navigator.locks = undefined;
  browser.window = new EventTarget();
  vi.stubGlobal("navigator", browser.navigator);
  vi.stubGlobal("window", browser.window);
  state.missing = [{ file: "game", slug: "sv" }];
  state.versions = { schemaHash: "known" };
  state.saveListeners.clear();
});

afterEach(() => {
  stop();
  stop = () => undefined;
  vi.useRealTimers();
  vi.unstubAllGlobals();
});

describe("watchBackgroundDownloads", () => {
  it("runs once, a few seconds after the app opens, with its own fresh list", async () => {
    const { refreshVersions, run, watchBackgroundDownloads } = await load();

    stop = watchBackgroundDownloads();

    await settle(2000);
    expect(run).not.toHaveBeenCalled();

    await settle(1000);
    expect(run).toHaveBeenCalledTimes(1);
    expect(run.mock.calls[0][1]).toMatchObject({
      download: "timed download",
      versions: { schemaHash: "fresh" },
    });
    /* The visit's list is left alone: a newer release waits for its update. */
    expect(refreshVersions).not.toHaveBeenCalled();
  });

  it("waits for saves in a row to stop, then runs once", async () => {
    const { run, watchBackgroundDownloads } = await load();

    stop = watchBackgroundDownloads();

    for (let count = 0; count < 3; count += 1) {
      await settle(2000);
      save();
    }

    expect(run).not.toHaveBeenCalled();

    await settle();
    expect(run).toHaveBeenCalledTimes(1);
  });

  it("asks for nothing when the device has every game it wants", async () => {
    const { fetchVersions, readMissing, run, watchBackgroundDownloads } =
      await load();

    state.missing = [];
    stop = watchBackgroundDownloads();

    await settle();
    expect(readMissing).toHaveBeenCalledTimes(1);
    expect(fetchVersions).not.toHaveBeenCalled();
    expect(run).not.toHaveBeenCalled();
  });

  it("asks for the list when the app opened offline", async () => {
    const { readMissing, run, watchBackgroundDownloads } = await load();

    state.versions = null;
    stop = watchBackgroundDownloads();

    await settle();
    expect(readMissing).not.toHaveBeenCalled();
    expect(run).toHaveBeenCalledTimes(1);
  });

  it("does nothing offline, and runs when the connection comes back", async () => {
    const { openLocalDb, run, watchBackgroundDownloads } = await load();

    browser.navigator.onLine = false;
    stop = watchBackgroundDownloads();

    await settle();
    expect(openLocalDb).not.toHaveBeenCalled();

    browser.navigator.onLine = true;
    browser.window.dispatchEvent(new Event("online"));

    await settle();
    expect(run).toHaveBeenCalledTimes(1);
  });

  it("stops the run when the connection drops", async () => {
    const { run, watchBackgroundDownloads } = await load();

    stop = watchBackgroundDownloads();
    await settle();

    const { shouldStop } = run.mock.calls[0][1];

    expect(shouldStop?.()).toBe(false);
    browser.navigator.onLine = false;
    expect(shouldStop?.()).toBe(true);
  });

  it("does nothing on data saver", async () => {
    const { openLocalDb, watchBackgroundDownloads } = await load();

    browser.navigator.connection = { saveData: true };
    stop = watchBackgroundDownloads();

    await settle();
    expect(openLocalDb).not.toHaveBeenCalled();
  });

  it("leaves out what failed this visit until the connection comes back", async () => {
    const { fetchVersions, run, watchBackgroundDownloads } = await load();

    run.mockResolvedValueOnce({
      done: [],
      failed: [{ download: { file: "game", slug: "sv" }, error: new Error() }],
      status: "done",
    });
    stop = watchBackgroundDownloads();
    await settle();
    expect(run).toHaveBeenCalledTimes(1);

    /* Only that game is missing: nothing to ask for after a save. */
    save();
    await settle();
    expect(fetchVersions).toHaveBeenCalledTimes(1);
    expect(run).toHaveBeenCalledTimes(1);

    /* Something else goes missing: the run leaves the failed one out. */
    state.missing = [
      { file: "game", slug: "sv" },
      { file: "learnsets", slug: "swsh" },
    ];
    save();
    await settle();
    expect(run).toHaveBeenCalledTimes(2);

    const { skip } = run.mock.calls[1][1];

    expect(skip?.({ file: "game", slug: "sv" })).toBe(true);
    expect(skip?.({ file: "learnsets", slug: "swsh" })).toBe(false);

    browser.window.dispatchEvent(new Event("online"));
    await settle();
    expect(run).toHaveBeenCalledTimes(3);
    expect(run.mock.calls[2][1].skip?.({ file: "game", slug: "sv" })).toBe(
      false,
    );
  });

  it("stops for the visit once the device is full", async () => {
    const { openLocalDb, run, watchBackgroundDownloads } = await load();

    run.mockResolvedValueOnce({ done: [], failed: [], status: "storage-full" });
    stop = watchBackgroundDownloads();
    await settle();

    save();
    browser.window.dispatchEvent(new Event("online"));
    await settle();
    expect(openLocalDb).toHaveBeenCalledTimes(1);
    expect(run).toHaveBeenCalledTimes(1);
  });

  it("takes turns with other tabs", async () => {
    const { run, watchBackgroundDownloads } = await load();
    const request = vi.fn(
      async (_name: string, callback: () => Promise<void>) => {
        expect(run).not.toHaveBeenCalled();
        await callback();
        expect(run).toHaveBeenCalledTimes(1);
      },
    );

    browser.navigator.locks = { request };
    stop = watchBackgroundDownloads();

    await settle();
    expect(request).toHaveBeenCalledWith(
      "voydex-background-game-downloads",
      expect.any(Function),
    );
    expect(run).toHaveBeenCalledTimes(1);
  });

  it("runs again after a run when a save lands during it", async () => {
    const { run, watchBackgroundDownloads } = await load();
    let finish: () => void = () => undefined;

    run.mockImplementationOnce(
      () =>
        new Promise((resolve) => {
          finish = () => resolve({ done: [], failed: [], status: "done" });
        }),
    );
    stop = watchBackgroundDownloads();

    await settle();
    expect(run).toHaveBeenCalledTimes(1);

    save();
    await settle();
    expect(run).toHaveBeenCalledTimes(1);

    finish();
    await settle();
    expect(run).toHaveBeenCalledTimes(2);
  });

  it("stops watching, a run on its way included", async () => {
    const { run, watchBackgroundDownloads } = await load();
    let finish: () => void = () => undefined;

    run.mockImplementationOnce(
      () =>
        new Promise((resolve) => {
          finish = () => resolve({ done: [], failed: [], status: "done" });
        }),
    );
    stop = watchBackgroundDownloads();
    await settle();

    save();
    stop();
    stop = () => undefined;
    finish();
    save();
    browser.window.dispatchEvent(new Event("online"));

    await settle();
    expect(run).toHaveBeenCalledTimes(1);
  });

  it("gives way to a game download someone waits for", async () => {
    const {
      ensureVersionGroupData,
      openLocalDb,
      run,
      watchBackgroundDownloads,
    } = await load();
    let openForEnsure: () => void = () => undefined;

    openLocalDb.mockImplementationOnce(
      () =>
        new Promise((resolve) => {
          openForEnsure = () => resolve({ db: {} as never, versions: null });
        }),
    );

    const ensuring = ensureVersionGroupData(18).catch(() => "failed");

    stop = watchBackgroundDownloads();
    await settle();

    const { beforeEach: giveWay } = run.mock.calls[0][1];
    let gaveWay = false;

    void giveWay?.().then(() => {
      gaveWay = true;
    });
    await settle(0);
    expect(gaveWay).toBe(false);

    openForEnsure();
    await expect(ensuring).resolves.toBe("failed");
    await settle(0);
    expect(gaveWay).toBe(true);
  });
});

describe("findGameToDownload", () => {
  const entry = (name: string, hash: string) => ({ hash, name });
  const release = {
    base: entry("base", "base-2"),
    games: [{ data: entry("rb", "rb-2"), slug: "rb", versionGroupIds: [1] }],
  };

  /* Red and Blue, with these files on the device. */
  const deviceHas = async (files: [string, string][]) => {
    const { runQuery } = await import("@/platform/local-db/local-db");

    vi.mocked(runQuery)
      .mockResolvedValueOnce([{ id: 1, name: "Red and Blue", slug: "rb" }])
      .mockResolvedValueOnce(
        files.map(([name, hash]) => ({ hash, name })) as never[],
      );
  };

  it("names a game the device doesn't have", async () => {
    const { findGameToDownload } = await load();

    state.versions = release;
    await deviceHas([["base", "base-2"]]);

    await expect(findGameToDownload(1)).resolves.toBe("Red and Blue");
  });

  it("names a game the device has from an older release", async () => {
    const { findGameToDownload } = await load();

    state.versions = release;
    await deviceHas([
      ["base", "base-2"],
      ["rb", "rb-1"],
    ]);

    await expect(findGameToDownload(1)).resolves.toBe("Red and Blue");
  });

  it("names nothing for a game on the device from this release", async () => {
    const { findGameToDownload } = await load();

    state.versions = release;
    await deviceHas([
      ["base", "base-2"],
      ["rb", "rb-2"],
    ]);

    await expect(findGameToDownload(1)).resolves.toBeNull();
  });

  it("opened offline, names only a game the device doesn't have", async () => {
    const { findGameToDownload } = await load();

    state.versions = null;
    await deviceHas([["rb", "rb-1"]]);
    await expect(findGameToDownload(1)).resolves.toBeNull();

    await deviceHas([]);
    await expect(findGameToDownload(1)).resolves.toBe("Red and Blue");
  });
});
