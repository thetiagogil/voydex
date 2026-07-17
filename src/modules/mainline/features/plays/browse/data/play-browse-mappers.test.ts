import { describe, expect, it } from "vitest";

import { buildMainlinePlayBrowseItems } from "@/modules/mainline/features/plays/browse/data/play-browse-mappers";
import type {
  MainlinePlayOverview,
  MainlinePlaySummary,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";
import type { Game } from "@/modules/reference/types";

const buildPlay = (
  overrides: Partial<MainlinePlaySummary> = {},
): MainlinePlaySummary => {
  return {
    game_id: 1,
    game_name: "Pokémon HeartGold",
    game_slug: "heartgold",
    play_id: "play-1",
    play_name: "Johto Adventure",
    ...overrides,
  } as MainlinePlaySummary;
};

const buildItems = (
  overrides: Partial<Parameters<typeof buildMainlinePlayBrowseItems>[0]> = {},
) => {
  return buildMainlinePlayBrowseItems({
    availability: {
      progress: true,
      team: true,
    },
    games: [{ id: 1, name: "Pokémon HeartGold", slug: "heartgold" } as Game],
    overviews: [],
    plays: [buildPlay()],
    teamMembers: [],
    ...overrides,
  });
};

describe("buildMainlinePlayBrowseItems", () => {
  it("builds normalized overall progress and an ordered team preview", () => {
    const items = buildItems({
      overviews: [
        {
          overall_completion_percent: 41.6,
          play_id: "play-1",
          total_completion_unit_count: 100,
        } as MainlinePlayOverview,
      ],
      teamMembers: [
        {
          play_id: "play-1",
          play_pokemon_id: "member-2",
          slot: 2,
        } as MainlinePlayTeamMember,
        {
          play_id: "play-1",
          play_pokemon_id: "member-1",
          slot: 1,
        } as MainlinePlayTeamMember,
      ],
    });

    expect(items[0]?.progress).toEqual({ percent: 42, state: "known" });
    expect(
      items[0]?.activeTeam.members.map((member) => member.play_pokemon_id),
    ).toEqual(["member-1", "member-2"]);
  });

  it("keeps unrecorded progress distinct from unavailable enrichment", () => {
    const notRecordedItem = buildItems()[0];
    const unavailableItem = buildItems({
      availability: {
        progress: false,
        team: false,
      },
    })[0];

    expect(notRecordedItem?.progress).toEqual({ state: "not_recorded" });
    expect(notRecordedItem?.activeTeam.state).toBe("available");

    expect(unavailableItem?.progress).toEqual({ state: "unavailable" });
    expect(unavailableItem?.activeTeam.state).toBe("unavailable");
  });
});
