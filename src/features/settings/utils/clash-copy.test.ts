import { describe, expect, it } from "vitest";

import {
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
      remote: null,
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
        table: "gameplay.mainline_play_pokemon",
      }),
    ).toBe("Kanto run · Pokémon");
  });

  it("cuts long text short", () => {
    expect(describeValue("x".repeat(200))).toHaveLength(80);
    expect(describeValue(false)).toBe("No");
  });
});
