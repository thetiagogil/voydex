import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type { Type } from "@/modules/reference/types";

import {
  buildStoryLevelCap,
  buildStoryMatchupsModel,
  type StoryMatchupMilestone,
  type StoryOpponentPartyRow,
} from "./story-matchups-model";

const type = (id: number, slug: string) =>
  ({ id, name: slug[0].toUpperCase() + slug.slice(1), slug }) as Type;

/* Most battles here read no mechanic, so their game is left unknown. */
const noMechanics = resolveGameMechanics({
  gameId: null,
  generationId: null,
  versionGroupId: null,
});

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
  is_required_for_completion: true,
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
    mechanics: noMechanics,
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

  it("keys a chapter so it can name its heading by id", () => {
    expect(model.chapters.map((chapter) => chapter.key)).toEqual([
      "main-story-0",
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
    mechanics: noMechanics,
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
    baseStats: null,
    battleFormMechanic: null,
    choiceKey: choice ? `10001/${choice.slug}` : null,
    dynamaxes: false,
    moves: [],
    heldItem: null,
    teraType: null,
    formSlug: name.toLowerCase(),
    gameId: null,
    legendary: null,
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
      mechanics: noMechanics,
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
        {
          ...partyRow(2, 2, "Starmie", 21, 11),
          moves: [
            {
              accuracy: 100,
              damageClass: "special",
              power: 65,
              name: "Bubble Beam",
              slug: "bubble-beam",
              typeId: 11,
            },
            {
              accuracy: 100,
              damageClass: "physical",
              power: 65,
              name: "Seismic Toss",
              slug: "seismic-toss",
              typeId: 7,
            },
            {
              accuracy: 100,
              damageClass: "status",
              power: null,
              name: "Harden",
              slug: "harden",
              typeId: 1,
            },
          ],
        },
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
    expect(misty?.party?.pokemon[1]?.moves).toEqual([
      expect.objectContaining({ damaging: true, name: "Bubble Beam" }),
      /* Set damage hits for no type effectiveness. */
      expect.objectContaining({ damaging: false, name: "Seismic Toss" }),
      expect.objectContaining({ damaging: false, name: "Harden" }),
    ]);
    expect(misty?.party?.pokemon[1]?.moves[0]?.type?.id).toBe(11);
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

describe("buildStoryMatchupsModel with a battle only one choice leads to", () => {
  /* The roaming beast your starter picks: Raikou after Squirtle, Entei after Bulbasaur. */
  const beastRow = (
    opponentId: number,
    name: string,
    choice: { slug: string; label: string },
  ): StoryOpponentPartyRow => ({
    baseStats: null,
    battleFormMechanic: null,
    choiceKey: `10001/${choice.slug}`,
    dynamaxes: false,
    moves: [],
    heldItem: null,
    teraType: null,
    formSlug: name.toLowerCase(),
    gameId: null,
    legendary: "Legendary",
    level: 50,
    milestoneId: 7,
    name,
    opponentId,
    primaryTypeId: 10,
    secondaryTypeId: null,
    slot: 1,
    variantKey: null,
    variantLabel: choice.label,
  });
  const build = (chosen: string[]) =>
    buildStoryMatchupsModel({
      chosenChoiceKeys: new Set(chosen),
      generationOrder: 1,
      mechanics: noMechanics,
      members: [grassMember],
      opponentGameIdById: new Map(),
      orderedMilestones: [
        milestone(7, [
          { id: 71, name: "Raikou", role: "boss", typeId: 10 },
          { id: 72, name: "Entei", role: "boss", typeId: 10 },
        ]),
      ],
      partyRows: [
        beastRow(71, "Raikou", { slug: "squirtle", label: "Squirtle" }),
        beastRow(72, "Entei", { slug: "bulbasaur", label: "Bulbasaur" }),
      ],
      playGameId: 1,
      snapshotsByMilestoneId: new Map(),
      types,
    }).chapters.flatMap((chapter) => chapter.battles);

  it("shows only the battle the Play's recorded choice leads to", () => {
    const battles = build(["10001/squirtle"]);

    expect(battles.map((battle) => battle.name)).toEqual(["Raikou"]);
    expect(battles[0]?.party?.note).toBeNull();
  });

  it("leaves both out when the Play chose a third option", () => {
    expect(build(["10001/charmander"])).toEqual([]);
  });

  it("never reads a team a recorded choice has ruled out", () => {
    const battle = buildStoryMatchupsModel({
      chosenChoiceKeys: new Set(["10001/charmander"]),
      generationOrder: 1,
      mechanics: noMechanics,
      members: [grassMember],
      opponentGameIdById: new Map(),
      orderedMilestones: [
        milestone(8, [{ id: 81, name: "Rival", role: "rival", typeId: 10 }]),
      ],
      partyRows: [
        {
          ...beastRow(81, "Raikou", { slug: "squirtle", label: "Squirtle" }),
          milestoneId: 8,
        },
        {
          ...beastRow(81, "Entei", { slug: "fossil", label: "Dome Fossil" }),
          choiceKey: "10002/dome",
          milestoneId: 8,
        },
      ],
      playGameId: 1,
      snapshotsByMilestoneId: new Map(),
      types,
    }).chapters[0]?.battles[0];

    expect(battle?.party?.pokemon[0]?.name).toBe("Entei");
  });

  it("shows each one and says which choice it needs while the choice isn't recorded", () => {
    const battles = build([]);

    expect(battles.map((battle) => battle.name)).toEqual(["Raikou", "Entei"]);
    expect(battles[0]?.party?.note).toBe(
      "You meet it only if you chose Squirtle, and this Play hasn't recorded that choice.",
    );
  });
});

describe("buildStoryMatchupsModel with game and outcome teams", () => {
  const row = (
    overrides: Partial<StoryOpponentPartyRow>,
  ): StoryOpponentPartyRow => ({
    baseStats: null,
    battleFormMechanic: null,
    choiceKey: null,
    dynamaxes: false,
    moves: [],
    heldItem: null,
    teraType: null,
    formSlug: "sandslash",
    gameId: null,
    legendary: null,
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
      mechanics: noMechanics,
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
    baseStats: null,
    battleFormMechanic: null,
    choiceKey: null,
    dynamaxes: false,
    moves: [],
    heldItem: null,
    teraType: null,
    formSlug: name.toLowerCase(),
    gameId: null,
    legendary: null,
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
      mechanics: noMechanics,
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

describe("buildStoryLevelCap", () => {
  const partyRow = (
    milestoneId: number,
    opponentId: number,
    slot: number,
    level: number,
  ): StoryOpponentPartyRow => ({
    baseStats: null,
    battleFormMechanic: null,
    choiceKey: null,
    dynamaxes: false,
    moves: [],
    heldItem: null,
    teraType: null,
    formSlug: `pokemon-${opponentId}-${slot}`,
    gameId: null,
    legendary: null,
    level,
    milestoneId,
    name: `Pokémon ${slot}`,
    opponentId,
    primaryTypeId: null,
    secondaryTypeId: null,
    slot,
    variantKey: null,
    variantLabel: null,
  });
  /* Kanto in short: Story's battles in order, and the ones won so far. */
  const build = (won: number[]) =>
    buildStoryLevelCap({
      playGameId: 1,
      rows: {
        chosenChoiceKeys: new Set(),
        opponentGameIdById: new Map([[5, 2]]),
        orderedMilestones: [
          milestone(1, [
            { id: 1, name: "Brock", role: "gym-leader", typeId: 13 },
          ]),
          milestone(2, [{ id: 2, name: "Blue", role: "rival", typeId: 11 }]),
          milestone(3, [
            { id: 5, name: "Clair", role: "gym-leader", typeId: 11 },
          ]),
          milestone(4, [
            { id: 3, name: "Misty", role: "gym-leader", typeId: 11 },
          ]),
          milestone(5, [
            { id: 4, name: "Lorelei", role: "elite-four", typeId: 11 },
          ]),
          milestone(6, [{ id: 6, name: "Blue", role: "champion", typeId: 11 }]),
        ].map((item) =>
          won.includes(item.milestone_id ?? 0)
            ? { ...item, is_completed: true }
            : item,
        ),
        partyRows: [
          partyRow(1, 1, 1, 12),
          partyRow(1, 1, 2, 14),
          partyRow(2, 2, 1, 30),
          partyRow(3, 5, 1, 40),
          partyRow(4, 3, 2, 21),
          partyRow(4, 3, 1, 18),
          partyRow(6, 6, 1, 63),
          partyRow(6, 6, 2, 65),
        ],
        snapshotsByMilestoneId: new Map(),
      },
    });

  it("caps at the first Gym Leader's strongest Pokémon on a new Play", () => {
    expect(build([])).toEqual({
      battle: { isPromotionMatch: false, kind: "Gym Leader", name: "Brock" },
      level: 14,
      status: "capped",
    });
  });

  it("moves mid-game to the next leader, past rivals and the other version's leader", () => {
    expect(build([1])).toEqual({
      battle: { isPromotionMatch: false, kind: "Gym Leader", name: "Misty" },
      level: 21,
      status: "capped",
    });
  });

  it("names the next battle when Voydex doesn't have its team", () => {
    expect(build([1, 2, 4])).toEqual({
      battle: { isPromotionMatch: false, kind: "Elite Four", name: "Lorelei" },
      status: "no-team",
    });
  });

  it("caps at the Champion's ace once the Elite Four is beaten", () => {
    expect(build([1, 2, 4, 5])).toEqual({
      battle: { isPromotionMatch: false, kind: "Champion", name: "Blue" },
      level: 65,
      status: "capped",
    });
  });

  it("reads the Play's own game's team where the versions' teams differ", () => {
    expect(
      buildStoryLevelCap({
        playGameId: 2,
        rows: {
          chosenChoiceKeys: new Set(),
          opponentGameIdById: new Map(),
          orderedMilestones: [
            milestone(1, [
              { id: 1, name: "Drayden", role: "gym-leader", typeId: 5 },
            ]),
          ],
          partyRows: [
            { ...partyRow(1, 1, 1, 43), gameId: 1 },
            { ...partyRow(1, 1, 1, 48), gameId: 2 },
          ],
          snapshotsByMilestoneId: new Map(),
        },
      }),
    ).toEqual({
      battle: { isPromotionMatch: false, kind: "Gym Leader", name: "Drayden" },
      level: 48,
      status: "capped",
    });
  });

  it("has no cap after the Champion", () => {
    expect(build([1, 2, 4, 5, 6])).toEqual({ status: "no-battle" });
  });

  /* Legends: Z-A in short: promotion matches, and Jacinthe's tournament as one story point. */
  const buildZa = (won: number[]) =>
    buildStoryLevelCap({
      playGameId: 1,
      rows: {
        chosenChoiceKeys: new Set(),
        opponentGameIdById: new Map(),
        orderedMilestones: [
          milestone(1, [{ id: 1, name: "Zach", role: "za-royale", typeId: 1 }]),
          milestone(2, [
            { id: 2, name: "Zygarde", role: "boss", typeId: 15 },
            { id: 3, name: "Canari", role: "za-royale", typeId: 4 },
          ]),
          milestone(3, [
            { id: 3, name: "Canari", role: "za-royale", typeId: 4 },
            { id: 4, name: "Ivor", role: "za-royale", typeId: 7 },
            { id: 2, name: "Zygarde", role: "boss", typeId: 15 },
            { id: 5, name: "Jacinthe", role: "za-royale", typeId: 18 },
          ]),
          milestone(4, [
            { id: 6, name: "Grisham", role: "za-royale", typeId: 1 },
          ]),
        ].map((item) =>
          won.includes(item.milestone_id ?? 0)
            ? { ...item, is_completed: true }
            : item,
        ),
        partyRows: [
          partyRow(1, 1, 1, 8),
          partyRow(1, 1, 2, 9),
          partyRow(2, 2, 1, 33),
          partyRow(2, 3, 1, 39),
          partyRow(3, 3, 1, 55),
          partyRow(3, 4, 1, 55),
          partyRow(3, 2, 1, 57),
          partyRow(3, 5, 1, 58),
          partyRow(3, 5, 2, 59),
        ],
        snapshotsByMilestoneId: new Map(),
      },
    });

  it("caps a Z-A Play at the next promotion match, past a boss before it", () => {
    expect(buildZa([])).toEqual({
      battle: { isPromotionMatch: true, kind: "Z-A Royale", name: "Zach" },
      level: 9,
      status: "capped",
    });
    expect(buildZa([1])).toEqual({
      battle: { isPromotionMatch: true, kind: "Z-A Royale", name: "Canari" },
      level: 39,
      status: "capped",
    });
  });

  it("caps a tournament at its strongest battle, not its first round", () => {
    expect(buildZa([1, 2])).toEqual({
      battle: { isPromotionMatch: true, kind: "Z-A Royale", name: "Jacinthe" },
      level: 59,
      status: "capped",
    });
  });

  it("moves on from a tournament to the next story point's battle", () => {
    expect(buildZa([1, 2, 3])).toEqual({
      battle: { isPromotionMatch: true, kind: "Z-A Royale", name: "Grisham" },
      status: "no-team",
    });
    expect(buildZa([1, 2, 3, 4])).toEqual({ status: "no-battle" });
  });

  it("has no cap in a game whose Story has no leader battles", () => {
    expect(
      buildStoryLevelCap({
        playGameId: 1,
        rows: {
          chosenChoiceKeys: new Set(),
          opponentGameIdById: new Map(),
          orderedMilestones: [
            milestone(1, [{ id: 1, name: "Kamado", role: "noble", typeId: 5 }]),
          ],
          partyRows: [partyRow(1, 1, 1, 30)],
          snapshotsByMilestoneId: new Map(),
        },
      }),
    ).toEqual({ status: "no-battle" });
  });
});

describe("buildStoryMatchupsModel with legendary encounters", () => {
  const row = (
    opponentId: number,
    slot: number,
    name: string,
    legendary: StoryOpponentPartyRow["legendary"],
  ): StoryOpponentPartyRow => ({
    baseStats: null,
    battleFormMechanic: null,
    choiceKey: null,
    dynamaxes: false,
    moves: [],
    heldItem: null,
    teraType: null,
    formSlug: name.toLowerCase(),
    gameId: null,
    legendary,
    level: 40,
    milestoneId: opponentId,
    name,
    opponentId,
    primaryTypeId: 10,
    secondaryTypeId: null,
    slot,
    variantKey: null,
    variantLabel: null,
  });
  /* A required boss, a required legendary, an optional legendary, a Mythical and an optional trainer boss. */
  const build = (completed: number[] = []) =>
    buildStoryMatchupsModel({
      chosenChoiceKeys: new Set(),
      generationOrder: 1,
      mechanics: noMechanics,
      members: [grassMember],
      opponentGameIdById: new Map(),
      orderedMilestones: [
        milestone(1, [{ id: 1, name: "Giovanni", role: "boss", typeId: 13 }]),
        milestone(2, [{ id: 2, name: "Reshiram", role: "boss", typeId: 10 }]),
        milestone(3, [{ id: 3, name: "Raikou", role: "boss", typeId: 10 }], {
          category_name: "Side Content",
          is_required_for_completion: false,
          milestone_name: "Roaming Raikou",
        }),
        milestone(4, [{ id: 4, name: "Mew", role: "boss", typeId: 10 }], {
          category_name: "Side Content",
          is_required_for_completion: false,
        }),
        milestone(5, [{ id: 5, name: "Red", role: "boss", typeId: 13 }], {
          category_name: "Side Content",
          is_required_for_completion: false,
        }),
      ].map((item) => ({
        ...item,
        is_completed: completed.includes(item.milestone_id ?? 0),
      })),
      partyRows: [
        row(1, 1, "Rhyhorn", null),
        row(1, 2, "Persian", null),
        row(2, 1, "Reshiram", "Legendary"),
        row(3, 1, "Raikou", "Legendary"),
        row(4, 1, "Mew", "Mythical"),
        row(5, 1, "Pikachu", null),
      ],
      playGameId: 1,
      snapshotsByMilestoneId: new Map(),
      types,
    });
  const battles = build().chapters.flatMap((chapter) => chapter.battles);

  it("calls a boss that is one Legendary or Mythical Pokémon a legendary, not a Boss", () => {
    expect(battles.map((battle) => [battle.name, battle.kind])).toEqual([
      ["Giovanni", "Boss"],
      ["Reshiram", "Legendary"],
      ["Raikou", "Legendary"],
      ["Mew", "Mythical"],
      ["Red", "Boss"],
    ]);
    expect(battles.map((battle) => battle.opponentKind)).toEqual([
      "trainer",
      "legendary",
      "legendary",
      "legendary",
      "trainer",
    ]);
  });

  it("reads a legendary as one Pokémon", () => {
    const raikou = battles[2];

    expect(raikou?.reading?.summary).toBe(
      "It's 20 levels above your team, and by type none of yours hits Raikou for 2×.",
    );
  });

  it("counts a required legendary and an optional trainer but not an optional legendary", () => {
    const model = build();

    expect(model.battleCount).toBe(3);
    expect(model.chapters.map((chapter) => chapter.battleCount)).toEqual([
      2, 1,
    ]);
    expect(model.chapters.map((chapter) => chapter.optionalCount)).toEqual([
      0, 2,
    ]);
  });

  it("counts a legendary won only when it is a battle that counts, and tallies optional ones apart", () => {
    const model = build([2, 3, 5]);

    expect(model.wonCount).toBe(2);
    expect(model.chapters.map((chapter) => chapter.wonCount)).toEqual([1, 1]);
    expect(model.chapters.map((chapter) => chapter.optionalDoneCount)).toEqual([
      0, 1,
    ]);
  });

  it("leaves a legendary in a team, or a legendary rival, as a trainer", () => {
    const [team, rival] = buildStoryMatchupsModel({
      chosenChoiceKeys: new Set(),
      generationOrder: 1,
      mechanics: noMechanics,
      members: [grassMember],
      opponentGameIdById: new Map(),
      orderedMilestones: [
        milestone(11, [{ id: 11, name: "Volo", role: "boss", typeId: 10 }]),
        milestone(12, [{ id: 12, name: "Lance", role: "rival", typeId: 10 }]),
      ],
      partyRows: [
        row(11, 1, "Giratina", "Legendary"),
        row(11, 2, "Dialga", "Legendary"),
        { ...row(12, 1, "Mew", "Mythical"), milestoneId: 12 },
      ],
      playGameId: 1,
      snapshotsByMilestoneId: new Map(),
      types,
    }).chapters.flatMap((chapter) => chapter.battles);

    expect([team?.kind, team?.opponentKind]).toEqual(["Boss", "trainer"]);
    expect([rival?.kind, rival?.opponentKind]).toEqual(["Rival", "trainer"]);
  });

  it("makes the next objective a real battle while one is left", () => {
    const model = build();

    /* Giovanni and Reshiram count; Raikou and Mew are optional catches. */
    expect(model.defaultBattleId).toBe("1/1");
    expect(build([1, 2]).defaultBattleId).toBe("5/5");
    expect(build([1, 2, 5]).defaultBattleId).toBe("3/3");
  });
});

describe("buildStoryMatchupsModel with battle mechanics", () => {
  const scarletViolet = resolveGameMechanics({
    gameId: 37,
    generationId: 9,
    versionGroupId: 23,
  });
  const sunMoon = resolveGameMechanics({
    gameId: 27,
    generationId: 7,
    versionGroupId: 15,
  });
  const letsGo = resolveGameMechanics({
    gameId: 31,
    generationId: 7,
    versionGroupId: 17,
  });
  const row = (
    overrides: Partial<StoryOpponentPartyRow>,
  ): StoryOpponentPartyRow => ({
    baseStats: null,
    battleFormMechanic: null,
    choiceKey: null,
    dynamaxes: false,
    moves: [],
    formSlug: "glimmora",
    gameId: null,
    heldItem: null,
    legendary: null,
    level: 62,
    milestoneId: 1,
    name: "Glimmora",
    opponentId: 1,
    primaryTypeId: 13,
    secondaryTypeId: null,
    slot: 1,
    teraType: null,
    variantKey: null,
    variantLabel: null,
    ...overrides,
  });
  const build = (
    partyRows: StoryOpponentPartyRow[],
    mechanics: ReturnType<typeof resolveGameMechanics>,
  ) =>
    buildStoryMatchupsModel({
      chosenChoiceKeys: new Set(),
      generationOrder: 9,
      mechanics,
      members: [grassMember],
      opponentGameIdById: new Map(),
      orderedMilestones: [
        milestone(1, [{ id: 1, name: "Geeta", role: "champion", typeId: 13 }]),
      ],
      partyRows,
      playGameId: 37,
      snapshotsByMilestoneId: new Map(),
      types,
    }).chapters[0]?.battles[0]?.party?.pokemon[0];

  it("marks a Tera Pokémon and reads its Tera Type", () => {
    const glimmora = build(
      [row({ teraType: { name: "Water", typeId: 11 } })],
      scarletViolet,
    );

    expect(glimmora?.mechanic).toEqual({ kind: "tera", label: "Tera Water" });
    expect(glimmora?.teraType?.slug).toBe("water");
  });

  it("marks Stellar without changing what hits it", () => {
    const terapagos = build(
      [row({ teraType: { name: "Stellar", typeId: null } })],
      scarletViolet,
    );

    expect(terapagos?.mechanic?.label).toBe("Tera Stellar");
    expect(terapagos?.teraType).toBeNull();
  });

  it("leaves out a mechanic the Play's game doesn't have", () => {
    const glimmora = build(
      [row({ dynamaxes: true, teraType: { name: "Water", typeId: 11 } })],
      sunMoon,
    );

    expect(glimmora?.mechanic).toBeNull();
    expect(glimmora?.teraType).toBeNull();
  });

  it("marks a held Z-Crystal as a Z-Move and names the item", () => {
    const lycanroc = build(
      [
        row({
          heldItem: { isZCrystal: true, name: "Rockium Z", slug: "rockium-z" },
        }),
      ],
      sunMoon,
    );

    expect(lycanroc?.mechanic).toEqual({ kind: "z-move", label: "Z-Move" });
    expect(lycanroc?.heldItem?.name).toBe("Rockium Z");
  });

  it("marks a Mega by its stored form", () => {
    const gardevoir = build(
      [
        row({
          battleFormMechanic: "mega-evolution",
          heldItem: {
            isZCrystal: false,
            name: "Gardevoirite",
            slug: "gardevoirite",
          },
        }),
      ],
      sunMoon,
    );

    expect(gardevoir?.mechanic).toEqual({ kind: "mega", label: "Mega" });
    expect(gardevoir?.heldItem?.name).toBe("Gardevoirite");
  });

  it("names no held item in a game without them", () => {
    const pokemon = build(
      [
        row({
          heldItem: {
            isZCrystal: false,
            name: "Sitrus Berry",
            slug: "sitrus-berry",
          },
        }),
      ],
      letsGo,
    );

    expect(pokemon?.heldItem).toBeNull();
  });
});
