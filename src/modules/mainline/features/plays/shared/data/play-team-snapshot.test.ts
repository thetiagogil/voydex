import { describe, expect, it } from "vitest";

import {
  getPlayTeamSnapshotMemberName,
  parsePlayTeamSnapshot,
} from "./play-team-snapshot";

describe("parsePlayTeamSnapshot", () => {
  it("keeps valid members in team order with their art", () => {
    const members = parsePlayTeamSnapshot([
      { position: 2, species_name: "Wooloo", slug: "wooloo" },
      {
        is_shiny: true,
        position: 1,
        species_name: "Charizard",
        slug: "charizard",
      },
      { position: 3 },
      "not a member",
    ]);

    expect(members.map((member) => member.speciesName)).toEqual([
      "Charizard",
      "Wooloo",
    ]);
    expect(members[0]?.imageUrl).toBe(
      "https://assets.test/pokemon/home-shiny/md/charizard.webp",
    );
    expect(getPlayTeamSnapshotMemberName(members[0]!)).toBe("Charizard, shiny");
    expect(parsePlayTeamSnapshot(null)).toEqual([]);
  });
});
