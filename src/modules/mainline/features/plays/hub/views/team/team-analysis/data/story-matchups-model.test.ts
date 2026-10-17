import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { Type } from "@/modules/reference/types";

import {
  buildStoryMatchupsModel,
  type StoryMatchupMilestone,
} from "./story-matchups-model";

const type = (id: number, slug: string) =>
  ({ id, name: slug[0].toUpperCase() + slug.slice(1), slug }) as Type;

const types = [
  type(5, "grass"),
  type(10, "fire"),
  type(11, "water"),
  type(13, "rock"),
];

const milestone = (
  id: number,
  opponents: {
    gameId?: number;
    id: number;
    name: string;
    role: string;
    typeId: number;
  }[],
  overrides: Partial<StoryMatchupMilestone> = {},
): StoryMatchupMilestone => ({
  badge_refs: [{ type_id: opponents[0]?.typeId ?? 0 }],
  category_id: 1,
  category_name: "Main Story",
  completed_at: null,
  description: null,
  is_completed: false,
  milestone_id: id,
  milestone_name: `Milestone ${id}`,
  opponent_refs: opponents.map((opponent) => ({
    name: opponent.name,
    opponent_id: opponent.id,
    opponent_role: opponent.role,
    primary_type_id: opponent.typeId,
    secondary_type_id: null,
  })),
  sort_order: id,
  ...overrides,
});

const grassMember = {
  play_pokemon_id: "p1",
  primaryType: types[0],
  secondaryType: null,
} as unknown as MainlinePlayTeamMember;

describe("buildStoryMatchupsModel", () => {
  const model = buildStoryMatchupsModel({
    generationOrder: 8,
    members: [grassMember],
    opponentGameIdById: new Map([
      [1, null],
      [2, null],
      [3, 2],
      [4, 1],
    ]),
    orderedMilestones: [
      milestone(1, [{ id: 1, name: "Milo", role: "gym-leader", typeId: 5 }], {
        completed_at: "2025-04-24T10:00:00Z",
        is_completed: true,
      }),
      milestone(2, [{ id: 2, name: "Kabu", role: "gym-leader", typeId: 10 }]),
      milestone(3, [
        { id: 3, name: "Bea", role: "gym-leader", typeId: 13 },
        { id: 4, name: "Allister", role: "gym-leader", typeId: 13 },
      ]),
      milestone(9, [{ id: 9, name: "Hop", role: "rival", typeId: 11 }]),
    ],
    playGameId: 1,
    snapshotsByMilestoneId: new Map(),
    types,
  });
  const battles = model.chapters.flatMap((chapter) => chapter.battles);

  it("lists Story battles only, with the other version's leader left out", () => {
    expect(battles.map((battle) => battle.name)).toEqual([
      "Milo",
      "Kabu",
      "Allister",
    ]);
  });

  it("marks the first battle still ahead as next and counts wins", () => {
    expect(battles.map((battle) => battle.state)).toEqual([
      "won",
      "next",
      "ahead",
    ]);
    expect(model).toMatchObject({
      battleCount: 3,
      defaultBattleId: 2,
      wonCount: 1,
    });
    expect(battles[0]?.badgeType).toBe("grass");
  });

  it("reads each Pokémon's weakness to the opponent's specialty", () => {
    expect(battles[1]?.members[0]?.weakTo.map((item) => item.slug)).toEqual([
      "fire",
    ]);
    expect(battles[2]?.members[0]?.weakTo).toEqual([]);
  });
});
