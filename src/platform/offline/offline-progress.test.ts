import { afterEach, describe, expect, it, vi } from "vitest";

import {
  getOfflinePercent,
  isEverythingKept,
  readStoredProgress,
  type Count,
  type OfflineProgress,
} from "@/platform/offline/offline-progress";

/* `done` of `total` files, each `size` bytes. */
const part = (done: number, total: number, size = 1): Count => ({
  bytes: total * size,
  done,
  doneBytes: done * size,
  total,
});

/* Sizes like the real release: 22 games, their moves, 3,715 pictures. */
const games = (done: number) => part(done, 22, 76_000);
const learnsets = (done: number) => part(done, 22, 210_000);
const images = (done: number) => part(done, 3715, 11_000);

const progress = (change: Partial<OfflineProgress>): OfflineProgress => ({
  games: games(22),
  images: images(3715),
  learnsets: learnsets(22),
  running: false,
  storageFull: false,
  waitingForWifi: false,
  ...change,
});

describe("isEverythingKept", () => {
  it("is true only once games, moves and pictures are all on the device", () => {
    expect(isEverythingKept(progress({}))).toBe(true);
    expect(isEverythingKept(progress({ learnsets: learnsets(21) }))).toBe(
      false,
    );
    expect(isEverythingKept(progress({ games: null }))).toBe(false);
  });

  it("waits for the pictures until they are counted", () => {
    expect(isEverythingKept(progress({ images: null }))).toBe(false);
  });

  it("doesn't wait for pictures an images site doesn't list", () => {
    expect(isEverythingKept(progress({ images: part(0, 0) }))).toBe(true);
  });
});

describe("getOfflinePercent", () => {
  it("weighs the pictures by their size, not as one part in three", () => {
    /* Games and moves in, 15 pictures of 3,715: far from two thirds. */
    expect(getOfflinePercent(progress({ images: images(15) }))).toBe(13);
  });

  it("climbs as the pictures come in, never going back", () => {
    const figures = Array.from({ length: 3715 }, (_, done) =>
      getOfflinePercent(progress({ images: images(done) })),
    );

    expect(figures[0]).toBe(13);
    expect(figures.at(-1)).toBe(99);
    expect(new Set(figures).size).toBe(87);

    for (const [index, figure] of figures.entries()) {
      expect(figure).toBeGreaterThanOrEqual(figures[index - 1] ?? 0);
    }
  });

  it("is 100 only once everything is on the device", () => {
    expect(getOfflinePercent(progress({}))).toBe(100);
    expect(getOfflinePercent(progress({ images: images(3714) }))).toBe(99);
    expect(getOfflinePercent(progress({ images: part(0, 0) }))).toBe(100);
  });

  it("weighs only the parts it knows, and stops short of 100 without the rest", () => {
    expect(getOfflinePercent(progress({ images: null }))).toBe(99);
    expect(
      getOfflinePercent(progress({ images: null, learnsets: learnsets(11) })),
    ).toBe(63);
  });

  it("is 0 before anything is known or downloaded", () => {
    expect(
      getOfflinePercent(
        progress({ games: null, images: null, learnsets: null }),
      ),
    ).toBe(0);
    expect(
      getOfflinePercent(
        progress({
          games: games(0),
          images: images(0),
          learnsets: learnsets(0),
        }),
      ),
    ).toBe(0);
  });
});

describe("the last counts on the device", () => {
  const storage = new Map<string, string>();

  const stubStorage = () => {
    vi.stubGlobal("window", {
      localStorage: {
        getItem: (key: string) => storage.get(key) ?? null,
        setItem: (key: string, value: string) => storage.set(key, value),
      },
    });
  };

  afterEach(() => {
    storage.clear();
    vi.unstubAllGlobals();
    vi.resetModules();
  });

  it("shows where things stood at once after a reload", async () => {
    stubStorage();
    vi.resetModules();

    const before = await import("@/platform/offline/offline-progress");

    before.setOfflineProgress({
      games: games(22),
      images: images(15),
      learnsets: learnsets(22),
    });

    /* The page loads anew: the counts are there before anything reads the device. */
    vi.resetModules();

    const after = await import("@/platform/offline/offline-progress");
    const shown = after.readOfflineProgress();

    expect(shown.images).toEqual(images(15));
    expect(after.readOfflineState(true, shown)).toBe("downloading");
    expect(after.getOfflinePercent(shown)).toBe(13);
    /* Only the counts are kept: a full device or a run is this visit's. */
    expect(shown.running).toBe(false);
    expect(shown.storageFull).toBe(false);
  });

  it("starts from nothing when what's kept is broken or missing", () => {
    stubStorage();
    expect(readStoredProgress()).toEqual({});

    storage.set("voydex-offline-progress", "{not json");
    expect(readStoredProgress()).toEqual({});

    storage.set(
      "voydex-offline-progress",
      JSON.stringify({ games: { done: -1 }, images: null, learnsets: null }),
    );
    expect(readStoredProgress()).toEqual({});
  });

  it("starts from nothing when the browser keeps no storage", () => {
    vi.stubGlobal("window", {
      get localStorage(): Storage {
        throw new DOMException("Blocked", "SecurityError");
      },
    });

    expect(readStoredProgress()).toEqual({});
  });
});
