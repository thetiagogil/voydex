import { describe, expect, it } from "vitest";

import {
  getOfflinePercent,
  isEverythingKept,
  type OfflineProgress,
} from "@/platform/offline/offline-progress";

const progress = (change: Partial<OfflineProgress>): OfflineProgress => ({
  games: { done: 22, total: 22 },
  images: { bytes: 1, done: 3715, total: 3715 },
  learnsets: { done: 22, total: 22 },
  running: false,
  storageFull: false,
  waitingForWifi: false,
  ...change,
});

describe("isEverythingKept", () => {
  it("is true only once games, moves and pictures are all on the device", () => {
    expect(isEverythingKept(progress({}))).toBe(true);
    expect(
      isEverythingKept(progress({ learnsets: { done: 21, total: 22 } })),
    ).toBe(false);
    expect(isEverythingKept(progress({ games: null }))).toBe(false);
  });

  it("waits for the pictures until they are counted", () => {
    expect(isEverythingKept(progress({ images: null }))).toBe(false);
  });

  it("doesn't wait for pictures an images site doesn't list", () => {
    expect(
      isEverythingKept(progress({ images: { bytes: 0, done: 0, total: 0 } })),
    ).toBe(true);
  });
});

describe("getOfflinePercent", () => {
  it("counts each part the same, however many files it has", () => {
    expect(
      getOfflinePercent(
        progress({
          games: { done: 22, total: 22 },
          images: { bytes: 1, done: 0, total: 3715 },
          learnsets: { done: 11, total: 22 },
        }),
      ),
    ).toBe(50);
  });

  it("is 0 before anything is known", () => {
    expect(
      getOfflinePercent(
        progress({ games: null, images: null, learnsets: null }),
      ),
    ).toBe(0);
  });
});
