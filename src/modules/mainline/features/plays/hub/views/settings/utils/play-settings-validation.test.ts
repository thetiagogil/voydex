import { describe, expect, it } from "vitest";

import {
  diffIdSets,
  parsePlayGeneralSettings,
  parseSettingsChipName,
  toSettingsSlug,
} from "./play-settings-validation";

const input = {
  name: "  Sword run ",
  playtimeHours: "32",
  playtimeMinutes: "54",
  startedOn: "2025-05-07",
  statusId: 2,
  trainerName: " Bea ",
};

describe("parsePlayGeneralSettings", () => {
  it("trims the names and keeps playtime in minutes", () => {
    expect(parsePlayGeneralSettings(input, [1, 2, 3])).toEqual({
      name: "Sword run",
      playtime_minutes: 1974,
      started_on: "2025-05-07",
      status_id: 2,
      trainer_name: "Bea",
    });
  });

  it("keeps empty optional fields as not recorded", () => {
    expect(
      parsePlayGeneralSettings(
        {
          ...input,
          playtimeHours: "",
          playtimeMinutes: "",
          startedOn: "",
          trainerName: " ",
        },
        [2],
      ),
    ).toMatchObject({
      playtime_minutes: null,
      started_on: null,
      trainer_name: null,
    });
  });

  it("refuses what the database would refuse", () => {
    expect(() =>
      parsePlayGeneralSettings({ ...input, name: " " }, [2]),
    ).toThrow("name");
    expect(() =>
      parsePlayGeneralSettings({ ...input, startedOn: "2025-02-30" }, [2]),
    ).toThrow("day");
    expect(() =>
      parsePlayGeneralSettings({ ...input, playtimeMinutes: "60" }, [2]),
    ).toThrow("Minutes");
    expect(() => parsePlayGeneralSettings(input, [1, 3])).toThrow("status");
  });
});

describe("diffIdSets", () => {
  it("lists what was added and removed", () => {
    expect(diffIdSets([1, 2], [2, 3])).toEqual({ added: [3], removed: [1] });
  });
});

describe("parseSettingsChipName", () => {
  it("trims and collapses spaces", () => {
    expect(
      parseSettingsChipName("  No   healing ", { label: "rule", maximum: 80 }),
    ).toBe("No healing");
  });

  it("refuses an empty or too long name", () => {
    expect(() =>
      parseSettingsChipName("   ", { label: "tag", maximum: 80 }),
    ).toThrow("Give the tag a name.");
    expect(() =>
      parseSettingsChipName("x".repeat(81), { label: "tag", maximum: 80 }),
    ).toThrow("A tag's name can be 80 characters at most.");
  });
});

describe("toSettingsSlug", () => {
  it("keeps letters and digits, drops accents and joins the words", () => {
    expect(
      toSettingsSlug("Pokémon Center ban!", { maximum: 80, separator: "_" }),
    ).toBe("pokemon_center_ban");
    expect(
      toSettingsSlug("Shiny hunt 2", { maximum: 80, separator: "-" }),
    ).toBe("shiny-hunt-2");
  });

  it("never ends on a separator when cut short", () => {
    expect(toSettingsSlug("ab cd", { maximum: 3, separator: "-" })).toBe("ab");
  });

  it("is null when nothing is left", () => {
    expect(toSettingsSlug("✨✨", { maximum: 80, separator: "-" })).toBeNull();
  });
});
