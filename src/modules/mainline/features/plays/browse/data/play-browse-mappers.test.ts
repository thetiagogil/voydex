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
    games: [
      {
        id: 1,
        name: "Pokémon HeartGold",
        region_id: 2,
        slug: "heartgold",
      } as Game,
    ],
    overviews: [],
    plays: [buildPlay()],
    regions: [{ id: 2, name: "Johto" }],
    teamMembers: [],
    ...overrides,
  });
};

describe("buildMainlinePlayBrowseItems", () => {
  it("builds a bar for each counted part and an ordered team preview", () => {
    const items = buildItems({
      overviews: [
        {
          caught_required_pokedex_species_count: 30,
          collectible_completion_percent: 0,
          completed_required_milestone_count: 4,
          milestone_completion_percent: 41.6,
          play_id: "play-1",
          pokedex_completion_percent: null,
          required_collectible_entry_count: 0,
          required_milestone_count: 10,
          required_pokedex_species_count: 120,
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

    expect(items[0]?.progress).toEqual({
      items: [
        { label: "Story", percent: 42 },
        { label: "Pokédex", percent: 25 },
      ],
      state: "available",
    });
    expect(
      items[0]?.activeTeam.members.map((member) => member.play_pokemon_id),
    ).toEqual(["member-1", "member-2"]);
  });

  it("reads the region from the Play's game", () => {
    expect(buildItems()[0]?.regionName).toBe("Johto");
    expect(buildItems({ regions: [] })[0]?.regionName).toBeNull();
    expect(buildItems({ games: [] })[0]?.regionName).toBeNull();
  });

  it("keeps unrecorded progress distinct from unavailable enrichment", () => {
    const notRecordedItem = buildItems()[0];
    const unavailableItem = buildItems({
      availability: {
        progress: false,
        team: false,
      },
    })[0];

    expect(notRecordedItem?.progress).toEqual({
      items: [],
      state: "available",
    });
    expect(notRecordedItem?.activeTeam.state).toBe("available");

    expect(unavailableItem?.progress).toEqual({ state: "unavailable" });
    expect(unavailableItem?.activeTeam.state).toBe("unavailable");
  });
});
