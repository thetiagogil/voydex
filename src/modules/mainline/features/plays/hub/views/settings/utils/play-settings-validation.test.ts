import { describe, expect, it } from "vitest";

import {
  diffIdSets,
  parsePlayGeneralSettings,
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
