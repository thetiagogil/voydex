import { describe, expect, it } from "vitest";

import {
  describeChangedAt,
  describeDevices,
  describeClash,
  describeClashOptions,
  describeValue,
} from "@/features/settings/utils/clash-copy";

const item = {
  key: '["p1"]',
  label: "Kanto run",
  table: "gameplay.mainline_plays",
};

describe("clash copy", () => {
  it("names a field clash by its Play and column", () => {
    const clash = {
      column: "save_notes",
      id: "x",
      item,
      key: '["p1"]',
      kind: "field" as const,
      local: "Phone",
      localChangedAt: null,
      remote: null,
      remoteChangedAt: null,
      table: "gameplay.mainline_plays",
    };

    expect(describeClash(clash)).toBe("Kanto run · Save notes");
    expect(describeClashOptions(clash)).toEqual({
      local: "Phone",
      remote: "Empty",
    });
  });

  it("names a row inside a Play by what it is", () => {
    expect(
      describeClash({
        deletedOn: "remote",
        id: "y",
        item,
        key: '["a"]',
        kind: "row",
        localChangedAt: null,
        remoteChangedAt: null,
        table: "gameplay.mainline_play_pokemon",
      }),
    ).toBe("Kanto run · Pokémon");
  });

  it("cuts long text short", () => {
    expect(describeValue("x".repeat(200))).toHaveLength(80);
    expect(describeValue(false)).toBe("No");
  });

  it("names the devices the way you know them", () => {
    expect(describeDevices("Mac", "iPhone")).toEqual({
      local: "This Mac",
      remote: "Your iPhone",
    });
    expect(describeDevices("Mac", "Mac")).toEqual({
      local: "This Mac",
      remote: "Your other Mac",
    });
    expect(describeDevices(null, null)).toEqual({
      local: "This device",
      remote: "Your other device",
    });
  });

  it("says when a change was made, plainly", () => {
    const now = new Date(2026, 10, 10, 23, 30);

    expect(
      describeChangedAt(new Date(2026, 10, 10, 23, 12).toISOString(), now),
    ).toBe("Today, 23:12");
    expect(
      describeChangedAt(new Date(2026, 10, 9, 9, 5).toISOString(), now),
    ).toBe("Yesterday, 09:05");
    expect(
      describeChangedAt(new Date(2026, 10, 2, 8, 0).toISOString(), now),
    ).toBe("2 Nov, 08:00");
  });
});
