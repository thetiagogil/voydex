import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { Type } from "@/modules/reference/types";

import {
  buildStoryMatchupsModel,
  type StoryMatchupMilestone,
  type StoryOpponentPartyRow,
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
    notes?: string;
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
    notes: opponent.notes ?? null,
    opponent_id: opponent.id,
    opponent_role: opponent.role,
    primary_type_id: opponent.typeId,
    secondary_type_id: null,
  })),
  sort_order: id,
  ...overrides,
});

const grassMember = {
  level: 20,
  moves: [],
  play_pokemon_id: "p1",
  primaryType: types[0],
  secondaryType: null,
} as unknown as MainlinePlayTeamMember;

describe("buildStoryMatchupsModel", () => {
  const model = buildStoryMatchupsModel({
    chosenChoiceKeys: new Set(),
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
    partyRows: [],
    playGameId: 1,
    snapshotsByMilestoneId: new Map(),
    types,
  });
  const battles = model.chapters.flatMap((chapter) => chapter.battles);

  it("lists Story battles, rivals included, with the other version's leader left out", () => {
    expect(battles.map((battle) => [battle.name, battle.kind])).toEqual([
      ["Milo", "Gym Leader"],
      ["Kabu", "Gym Leader"],
      ["Allister", "Gym Leader"],
      ["Hop", "Rival"],
    ]);
  });

  it("marks the first battle still ahead as next and counts wins", () => {
    expect(battles.map((battle) => battle.state)).toEqual([
      "won",
      "next",
      "ahead",
      "ahead",
    ]);
    expect(model).toMatchObject({
      battleCount: 4,
      defaultBattleId: "2/2",
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

describe("buildStoryMatchupsModel with several battles at one story point", () => {
  const battles = buildStoryMatchupsModel({
    chosenChoiceKeys: new Set(),
    generationOrder: 1,
    members: [grassMember],
    opponentGameIdById: new Map(),
    orderedMilestones: [
      milestone(
        5,
        [
          {
            id: 9,
            name: "Blue",
            notes: "Cerulean City",
            role: "rival",
            typeId: 11,
          },
          { id: 2, name: "Misty", role: "gym-leader", typeId: 11 },
        ],
        {
          description: "Defeat Misty at Cerulean Gym.",
          is_completed: true,
          milestone_name: "Cascade Badge",
        },
      ),
    ],
    partyRows: [],
    playGameId: 1,
    snapshotsByMilestoneId: new Map(),
    types,
  }).chapters.flatMap((chapter) => chapter.battles);

  it("lists each opponent as its own battle under the story point", () => {
    expect(
      battles.map((battle) => [battle.id, battle.name, battle.milestoneName]),
    ).toEqual([
      ["5/9", "Blue", "Cascade Badge"],
      ["5/2", "Misty", "Cascade Badge"],
    ]);
  });

  it("says where each battle happens", () => {
    expect(battles.map((battle) => battle.where)).toEqual([
      "Cerulean City",
      "Defeat Misty at Cerulean Gym.",
    ]);
  });

  it("gives the badge to the Gym Leader's battle only", () => {
    expect(battles.map((battle) => battle.badgeType)).toEqual([null, "water"]);
  });
});

describe("buildStoryMatchupsModel with opponent teams", () => {
  const partyRow = (
    opponentId: number,
    slot: number,
    name: string,
    level: number,
    primaryTypeId: number,
    choice: { slug: string; label: string } | null = null,
  ): StoryOpponentPartyRow => ({
    choiceKey: choice ? `10001/${choice.slug}` : null,
    formSlug: name.toLowerCase(),
    gameId: null,
    level,
    /* Each of these opponents has one battle, numbered like them. */
    milestoneId: opponentId,
    name,
    opponentId,
    primaryTypeId,
    secondaryTypeId: null,
    slot,
    variantKey: null,
    variantLabel: choice?.label ?? null,
  });
  const build = (chosen: string[]) =>
    buildStoryMatchupsModel({
      chosenChoiceKeys: new Set(chosen),
      generationOrder: 1,
      members: [grassMember],
      opponentGameIdById: new Map(),
      orderedMilestones: [
        milestone(
          1,
          [{ id: 1, name: "Brock", role: "gym-leader", typeId: 13 }],
          {
            is_completed: true,
          },
        ),
        milestone(2, [
          { id: 2, name: "Misty", role: "gym-leader", typeId: 11 },
        ]),
        milestone(3, [{ id: 3, name: "Blue", role: "champion", typeId: 11 }]),
        milestone(4, [
          { id: 4, name: "Lance", role: "elite-four", typeId: 11 },
        ]),
      ],
      partyRows: [
        partyRow(1, 1, "Geodude", 12, 13),
        partyRow(1, 2, "Onix", 14, 13),
        partyRow(2, 2, "Starmie", 21, 11),
        partyRow(2, 1, "Staryu", 18, 11),
        partyRow(3, 1, "Venusaur", 65, 5, {
          slug: "charmander",
          label: "Charmander",
        }),
        partyRow(3, 1, "Charizard", 65, 10, {
          slug: "squirtle",
          label: "Squirtle",
        }),
        partyRow(3, 1, "Blastoise", 65, 11, {
          slug: "bulbasaur",
          label: "Bulbasaur",
        }),
      ],
      playGameId: 1,
      snapshotsByMilestoneId: new Map(),
      types,
    }).chapters.flatMap((chapter) => chapter.battles);

  it("reads a battle ahead against their team, in slot order", () => {
    const misty = build([])[1];

    expect(misty?.party?.pokemon.map((pokemon) => pokemon.name)).toEqual([
      "Staryu",
      "Starmie",
    ]);
    expect(misty?.partyLevels).toBe("Lv. 18–21");
    expect(misty?.reading?.state).toBeDefined();
    expect(misty?.members[0]?.weakTo).toEqual([]);
  });

  it("keeps a won battle's team but reads nothing", () => {
    const brock = build([])[0];

    expect(brock?.party?.pokemon).toHaveLength(2);
    expect(brock?.reading).toBeNull();
  });

  it("picks the team for the Play's recorded choice", () => {
    const blue = build(["10001/squirtle"])[2];

    expect(blue?.party).toMatchObject({
      note: null,
      pokemon: [{ name: "Charizard" }],
    });
    expect(blue?.members[0]?.weakTo.map((type) => type.slug)).toEqual(["fire"]);
  });

  it("reads the first team and says so while the choice isn't recorded", () => {
    const blue = build([])[2];

    expect(blue?.party?.pokemon[0]?.name).toBe("Venusaur");
    expect(blue?.party?.note).toBe(
      "Their team depends on a choice this Play hasn't recorded, so this reads the one for Charmander.",
    );
  });

  it("keeps the specialty reading where Voydex has no team", () => {
    const lance = build([])[3];

    expect(lance).toMatchObject({
      party: null,
      partyLevels: null,
      reading: null,
    });
    expect(lance?.members[0]).toMatchObject({ bestHit: null, role: null });
  });
});

describe("buildStoryMatchupsModel with game and outcome teams", () => {
  const row = (
    overrides: Partial<StoryOpponentPartyRow>,
  ): StoryOpponentPartyRow => ({
    choiceKey: null,
    formSlug: "sandslash",
    gameId: null,
    level: 61,
    milestoneId: 1,
    name: "Sandslash",
    opponentId: 1,
    primaryTypeId: 13,
    secondaryTypeId: null,
    slot: 1,
    variantKey: null,
    variantLabel: null,
    ...overrides,
  });
  const build = (partyRows: StoryOpponentPartyRow[]) =>
    buildStoryMatchupsModel({
      chosenChoiceKeys: new Set(),
      generationOrder: 1,
      members: [grassMember],
      opponentGameIdById: new Map(),
      orderedMilestones: [
        milestone(1, [{ id: 1, name: "Blue", role: "champion", typeId: 13 }]),
      ],
      partyRows,
      playGameId: 1,
      snapshotsByMilestoneId: new Map(),
      types,
    }).chapters[0]?.battles[0];

  it("reads the Play's own game's team", () => {
    const blue = build([
      row({ gameId: 2, name: "Arbok" }),
      row({ gameId: 1, name: "Sandslash" }),
    ]);

    expect(blue?.party).toEqual(expect.objectContaining({ note: null }));
    expect(blue?.party?.pokemon.map((pokemon) => pokemon.name)).toEqual([
      "Sandslash",
    ]);
  });

  it("says which outcome it reads when the team depends on one Voydex doesn't record", () => {
    const blue = build([
      row({
        variantKey: "rival-jolteon",
        variantLabel: "Rival's Eevee evolved into Jolteon",
      }),
      row({
        name: "Ninetales",
        variantKey: "rival-flareon",
        variantLabel: "Rival's Eevee evolved into Flareon",
      }),
    ]);

    expect(blue?.party?.note).toBe(
      "Their team depends on something Voydex doesn't record, so this reads one way it can go: Rival's Eevee evolved into Jolteon.",
    );
  });
});

describe("buildStoryMatchupsModel with a rematch", () => {
  const kieranRow = (
    milestoneId: number,
    name: string,
    level: number,
  ): StoryOpponentPartyRow => ({
    choiceKey: null,
    formSlug: name.toLowerCase(),
    gameId: null,
    level,
    milestoneId,
    name,
    opponentId: 7,
    primaryTypeId: 5,
    secondaryTypeId: null,
    slot: 1,
    variantKey: null,
    variantLabel: null,
  });
  const build = (partyRows: StoryOpponentPartyRow[]) =>
    buildStoryMatchupsModel({
      chosenChoiceKeys: new Set(),
      generationOrder: 9,
      members: [grassMember],
      opponentGameIdById: new Map(),
      orderedMilestones: [
        milestone(1, [{ id: 7, name: "Kieran", role: "rival", typeId: 5 }]),
        milestone(2, [{ id: 7, name: "Kieran", role: "rival", typeId: 5 }]),
      ],
      partyRows,
      playGameId: 1,
      snapshotsByMilestoneId: new Map(),
      types,
    }).chapters.flatMap((chapter) => chapter.battles);

  it("reads each battle's own team, so a rematch reads the team you face then", () => {
    const battles = build([
      kieranRow(1, "Sentret", 12),
      kieranRow(2, "Furret", 24),
    ]);

    expect(
      battles.map((battle) =>
        battle.party?.pokemon.map((pokemon) => pokemon.name),
      ),
    ).toEqual([["Sentret"], ["Furret"]]);
    expect(battles.map((battle) => battle.partyLevels)).toEqual([
      "Lv. 12",
      "Lv. 24",
    ]);
  });

  it("keeps the specialty reading for a battle without its own team", () => {
    const battles = build([kieranRow(1, "Sentret", 12)]);

    expect(battles.map((battle) => battle.partyLevels)).toEqual([
      "Lv. 12",
      null,
    ]);
    expect(battles[1]).toMatchObject({ party: null, reading: null });
  });
});
