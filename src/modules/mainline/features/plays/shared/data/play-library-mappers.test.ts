import { describe, expect, it } from "vitest";

import {
  buildMainlinePlayBrowseItems,
  type PlayBrowseMilestone,
} from "@/modules/mainline/features/plays/shared/data/play-library-mappers";
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
      story: true,
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
    storyRows: { categories: [], milestones: [] },
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
        story: false,
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

describe("buildMainlinePlayBrowseItems story and collectibles", () => {
  const milestone = (
    overrides: Partial<PlayBrowseMilestone>,
  ): PlayBrowseMilestone => ({
    category_id: 1,
    is_completed: false,
    is_required_for_completion: true,
    milestone_id: 1,
    milestone_name: "Milestone",
    milestone_type_slug: "story",
    play_id: "play-1",
    prerequisites: [],
    sort_order: 1,
    ...overrides,
  });

  it("names the next objective by Story's rule", () => {
    const [item] = buildItems({
      storyRows: {
        categories: [
          {
            category_id: 1,
            category_sort_order: 1,
            content_scope_sort_order: 1,
            play_id: "play-1",
          },
        ],
        milestones: [
          milestone({
            milestone_id: 2,
            milestone_name: "Zephyr Badge",
            sort_order: 2,
          }),
          milestone({
            is_completed: true,
            milestone_id: 1,
            milestone_name: "Choose a partner",
          }),
          milestone({
            milestone_id: 3,
            milestone_name: "Other Play",
            play_id: "play-2",
          }),
        ],
      },
    });

    expect(item?.storyPosition).toEqual({ kind: "next", name: "Zephyr Badge" });
  });

  it("says the story is complete, and has no position without milestones", () => {
    expect(
      buildItems({
        storyRows: {
          categories: [],
          milestones: [milestone({ is_completed: true })],
        },
      })[0]?.storyPosition,
    ).toEqual({ kind: "complete" });
    expect(buildItems()[0]?.storyPosition).toBeNull();
    expect(
      buildItems({
        availability: { progress: true, story: false, team: true },
        storyRows: { categories: [], milestones: [milestone({})] },
      })[0]?.storyPosition,
    ).toBeNull();
  });

  it("shows Collectibles as Off when the Play doesn't track them", () => {
    const [item] = buildItems({
      overviews: [
        {
          collectibles_tracking_enabled: false,
          play_id: "play-1",
          required_collectible_entry_count: 0,
        } as MainlinePlayOverview,
      ],
    });

    expect(item?.progress).toEqual({
      items: [{ label: "Collectibles", percent: null }],
      state: "available",
    });
  });

  it("shows Story as Off when the Play doesn't track it", () => {
    const [item] = buildItems({
      overviews: [
        {
          play_id: "play-1",
          required_milestone_count: 0,
          story_tracking_enabled: false,
        } as MainlinePlayOverview,
      ],
    });

    expect(item?.progress).toEqual({
      items: [{ label: "Story", percent: null }],
      state: "available",
    });
  });

  it("keeps a Play with Story and Collectibles on as bars", () => {
    const [item] = buildItems({
      overviews: [
        {
          collectibles_tracking_enabled: true,
          completed_required_milestone_count: 1,
          milestone_completion_percent: 50,
          play_id: "play-1",
          required_milestone_count: 2,
          story_tracking_enabled: true,
        } as MainlinePlayOverview,
      ],
    });

    expect(item?.progress).toEqual({
      items: [{ label: "Story", percent: 50 }],
      state: "available",
    });
  });
});
