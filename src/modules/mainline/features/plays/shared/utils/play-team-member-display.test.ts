import { describe, expect, it } from "vitest";

import { getPlayTeamMemberDetail } from "./play-team-member-display";

describe("getPlayTeamMemberDetail", () => {
  it("names the species of a nicknamed Pokémon, then its level", () => {
    expect(
      getPlayTeamMemberDetail({
        level: 48,
        nickname: "Comet",
        species_name: "Typhlosion",
      }),
    ).toBe("Typhlosion · Lv. 48");
  });

  it("gives the level alone when the name is already the species", () => {
    expect(
      getPlayTeamMemberDetail({
        level: 49,
        nickname: null,
        species_name: "Ampharos",
      }),
    ).toBe("Lv. 49");
  });

  it("keeps a recorded level of 0, and says nothing with neither", () => {
    expect(
      getPlayTeamMemberDetail({
        level: 0,
        nickname: null,
        species_name: "Ampharos",
      }),
    ).toBe("Lv. 0");
    expect(
      getPlayTeamMemberDetail({
        level: null,
        nickname: "Comet",
        species_name: "Typhlosion",
      }),
    ).toBe("Typhlosion");
    expect(
      getPlayTeamMemberDetail({
        level: null,
        nickname: null,
        species_name: "Ampharos",
      }),
    ).toBeNull();
  });
});
