import { describe, expect, it, vi } from "vitest";

import {
  decodePrebuiltData,
  encodePrebuiltData,
  getPrebuiltDataPath,
  prebuiltAssetBase,
} from "@/platform/prebuilt-data/prebuilt-data";

describe("getPrebuiltDataPath", () => {
  it("joins slug segments into a gzipped JSON path", () => {
    expect(getPrebuiltDataPath("pokemon", "mr-mime")).toBe(
      "pokemon/mr-mime.json.gz",
    );
    expect(getPrebuiltDataPath("games", "swsh", "isle-of-armor")).toBe(
      "games/swsh/isle-of-armor.json.gz",
    );
  });

  /* An address segment that isn't a slug never reaches another file. */
  it("names no file for a segment that isn't a slug", () => {
    expect(getPrebuiltDataPath()).toBeNull();
    expect(getPrebuiltDataPath("pokemon", "..")).toBeNull();
    expect(getPrebuiltDataPath("pokemon", "../games")).toBeNull();
    expect(getPrebuiltDataPath("pokemon", "Pikachu")).toBeNull();
    expect(getPrebuiltDataPath("pokemon", "")).toBeNull();
    expect(getPrebuiltDataPath("pokemon", "pika%2Fchu")).toBeNull();
  });
});

describe("encodePrebuiltData and decodePrebuiltData", () => {
  it("keeps Maps and Sets, nested too", () => {
    const value = {
      byId: new Map([[1, { names: new Set(["a", "b"]) }]]),
      list: [new Set([3])],
    };

    expect(decodePrebuiltData(encodePrebuiltData(value))).toEqual(value);
  });

  /* So the same game data always gives the same file. */
  it("leaves out row timestamps", () => {
    const text = encodePrebuiltData({
      rows: [{ created_at: "2026-11-11T00:00:00Z", id: 1, updated_at: "x" }],
    });

    expect(JSON.parse(text)).toEqual({ rows: [{ id: 1 }] });
  });

  /* A file would hand the page something else: the build fails instead. */
  it("refuses values JSON can't keep as they are", () => {
    expect(() => encodePrebuiltData({ at: new Date(0) })).toThrow('"at"');
    expect(() => encodePrebuiltData({ read: () => 1 })).toThrow('"read"');
    expect(() => encodePrebuiltData({ ratio: Number.NaN })).toThrow('"ratio"');
    expect(() => encodePrebuiltData({ list: [Infinity] })).toThrow('"0"');
    expect(() =>
      encodePrebuiltData({ url: new URL("https://a.test") }),
    ).toThrow('"url"');
  });

  it("keeps an object that only looks like a tag when it has more keys", () => {
    const value = { $map: [], other: 1 };

    expect(decodePrebuiltData(encodePrebuiltData(value))).toEqual(value);
  });

  it("fills in this app's assets site for each asset path", () => {
    const text = JSON.stringify({
      cover: `${prebuiltAssetBase}/games/covers/red.webp`,
      name: "voydex-asset is just a word here",
    });

    expect(decodePrebuiltData(text)).toEqual({
      cover: "https://assets.test/games/covers/red.webp",
      name: "voydex-asset is just a word here",
    });
  });

  it("reads an asset path as no image when no assets site is set", () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "");

    try {
      expect(
        decodePrebuiltData(
          JSON.stringify({
            cover: `${prebuiltAssetBase}/games/covers/red.webp`,
          }),
        ),
      ).toEqual({ cover: null });
    } finally {
      vi.unstubAllEnvs();
    }
  });
});
