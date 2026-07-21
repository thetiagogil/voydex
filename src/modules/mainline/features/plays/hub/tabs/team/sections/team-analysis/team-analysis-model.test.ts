import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";

import { getTeamAnalysisPreview } from "./team-analysis-model";

const buildMember = (
  id: string,
  rosterState: "active" | "reserve",
  slot: number,
) => {
  return {
    play_pokemon_id: id,
    roster_state_slug: rosterState,
    slot,
  } as MainlinePlayTeamMember;
};

describe("getTeamAnalysisPreview", () => {
  it("summarizes only recorded Active members without inferring missing slots", () => {
    const grassType = { id: 12 } as MainlinePlayTeamMember["primaryType"];
    const poisonType = { id: 4 } as MainlinePlayTeamMember["primaryType"];
    const activeMember = {
      ...buildMember("active", "active", 1),
      moves: [{ name: "Vine Whip", slot: 1 } as MainlinePlayTeamMove],
      primaryType: grassType,
      secondaryType: poisonType,
    };
    const reserveMember = {
      ...buildMember("reserve", "reserve", 7),
      moves: [{ name: "Tackle", slot: 1 } as MainlinePlayTeamMove],
      primaryType: grassType,
      secondaryType: null,
    };

    expect(getTeamAnalysisPreview([activeMember, reserveMember])).toEqual({
      activeCount: 1,
      membersWithMoves: 1,
      typedMemberCount: 1,
      uniqueTypeCount: 2,
      unknownActivePositions: 5,
    });
  });
});
