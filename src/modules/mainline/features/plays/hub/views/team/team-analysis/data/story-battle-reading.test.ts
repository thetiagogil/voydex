import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import type { Type } from "@/modules/reference/types";

import {
  formatLevelRange,
  getAnswerCost,
  getBattleState,
  getLevelsSentence,
  getPowerUpSentence,
  readStoryBattle,
  type StoryOpponentPokemon,
} from "./story-battle-reading";

const slugs = [
  "normal",
  "fire",
  "water",
  "electric",
  "grass",
  "ice",
  "fighting",
  "poison",
  "ground",
  "flying",
  "psychic",
  "bug",
  "rock",
  "ghost",
  "dragon",
  "dark",
  "steel",
  "fairy",
] as const;

const types = slugs.map(
  (slug, index) =>
    ({
      id: index + 1,
      name: slug[0].toUpperCase() + slug.slice(1),
      slug,
    }) as Type,
);

const typeOf = (slug: (typeof slugs)[number]) =>
  types.find((type) => type.slug === slug) as Type;

const move = (
  name: string,
  slug: (typeof slugs)[number],
  power: number | null = 80,
): MainlinePlayTeamMove =>
  ({
    attributes: { damage_class: power ? "physical" : "status", power },
    id: name.length,
    name,
    slot: 1,
    slug: name.toLowerCase(),
    type: typeOf(slug),
  }) as MainlinePlayTeamMove;

const member = (
  id: string,
  memberTypes: (typeof slugs)[number][],
  level: number | null,
  moves: MainlinePlayTeamMove[],
) =>
  ({
    level,
    moves,
    play_pokemon_id: id,
    primaryType: memberTypes[0] ? typeOf(memberTypes[0]) : null,
    secondaryType: memberTypes[1] ? typeOf(memberTypes[1]) : null,
  }) as unknown as MainlinePlayTeamMember;

const opponent = (
  name: string,
  opponentTypes: (typeof slugs)[number][],
  level: number,
  teraType: (typeof slugs)[number] | null = null,
): StoryOpponentPokemon => ({
  baseStats: null,
  formSlug: name.toLowerCase(),
  heldItem: null,
  imageUrl: null,
  key: name,
  legendary: null,
  level,
  mechanic: teraType ? { kind: "tera", label: `Tera ${teraType}` } : null,
  moves: [],
  name,
  teraType: teraType ? typeOf(teraType) : null,
  types: opponentTypes.map(typeOf),
});

/* One of their moves: a damaging one unless `damaging` says not. */
const theirMove = (
  name: string,
  slug: (typeof slugs)[number],
  damaging = true,
) => ({
  accuracy: 100,
  damageClass: damaging ? ("physical" as const) : null,
  damaging,
  name,
  power: damaging ? 80 : null,
  slug: name.toLowerCase().replaceAll(" ", "-"),
  type: typeOf(slug),
});

const brock = [
  opponent("Geodude", ["rock", "ground"], 12),
  opponent("Onix", ["rock", "ground"], 14),
];

describe("readStoryBattle", () => {
  it("reads a Terastallized Pokémon by its Tera Type for what hits it", () => {
    // Geeta's Glimmora is Rock/Poison but Terastallizes into Rock: Ground
    // hits it for 2×, not 4×, and Psychic no longer does.
    const reading = readStoryBattle({
      generationOrder: 9,
      members: [
        member("a", ["ground"], 62, [move("Earthquake", "ground")]),
        member("b", ["psychic"], 62, [move("Psychic", "psychic")]),
      ],
      opponentName: "Geeta",
      their: [opponent("Glimmora", ["rock", "poison"], 62, "rock")],
      types,
    });

    expect(reading.members[0].bestHit).toMatchObject({
      moveName: "Earthquake",
      multiplier: 2,
    });
    expect(reading.members[1].bestHit).toBeNull();
  });

  it("keeps a Terastallized Pokémon's own types as threats beside its Tera Type", () => {
    const reading = readStoryBattle({
      generationOrder: 9,
      members: [
        member("a", ["fighting"], 50, [move("Close Combat", "fighting")]),
      ],
      opponentName: "Larry",
      their: [opponent("Staraptor", ["normal", "flying"], 50, "flying")],
      types,
    });
    const terastallized = readStoryBattle({
      generationOrder: 9,
      members: [member("a", ["grass"], 50, [move("Leaf Blade", "grass")])],
      opponentName: "Grusha",
      their: [opponent("Altaria", ["dragon", "flying"], 50, "ice")],
      types,
    });

    expect(reading.members[0].weakTo.map((type) => type.slug)).toEqual([
      "flying",
    ]);
    expect(
      terastallized.members[0].weakTo.map((type) => type.slug).sort(),
    ).toEqual(["flying", "ice"]);
  });

  it("reads their threat from their damaging moves where Voydex has them", () => {
    // Onix is Rock/Ground but knows only Normal and Rock moves: a Fire
    // Pokémon takes 2× from Rock Throw, not from Ground it never uses, and
    // Screech claims nothing.
    const reading = readStoryBattle({
      generationOrder: 1,
      members: [
        member("a", ["electric"], 14, [move("Thunder Shock", "electric")]),
      ],
      opponentName: "Brock",
      their: [
        {
          ...opponent("Onix", ["rock", "ground"], 14),
          moves: [
            theirMove("Tackle", "normal"),
            theirMove("Screech", "normal", false),
            theirMove("Rock Throw", "rock"),
          ],
        },
      ],
      types,
    });
    const typesOnly = readStoryBattle({
      generationOrder: 1,
      members: [
        member("a", ["electric"], 14, [move("Thunder Shock", "electric")]),
      ],
      opponentName: "Brock",
      their: [opponent("Onix", ["rock", "ground"], 14)],
      types,
    });

    expect(reading.members[0].weakTo).toEqual([]);
    expect(typesOnly.members[0].weakTo.map((type) => type.slug)).toEqual([
      "ground",
    ]);
  });

  it("says which of theirs hit each of yours and with what, and whom yours hit back", () => {
    const reading = readStoryBattle({
      generationOrder: 4,
      members: [
        member("a", ["grass"], 40, [
          move("Razor Leaf", "grass"),
          move("Bite", "dark"),
        ]),
      ],
      opponentName: "Volkner",
      their: [
        {
          ...opponent("Lanturn", ["water", "electric"], 40),
          moves: [theirMove("Ice Beam", "ice"), theirMove("Surf", "water")],
        },
        opponent("Rapidash", ["fire"], 40),
      ],
      types,
    });

    expect(reading.members[0].takes).toEqual([
      expect.objectContaining({
        byType: false,
        multiplier: 2,
        via: ["Ice Beam"],
      }),
      expect.objectContaining({ byType: true, multiplier: 2, via: ["Fire"] }),
    ]);
    expect(reading.members[0].lands).toEqual([
      expect.objectContaining({ multiplier: 2, via: ["Razor Leaf"] }),
    ]);
    expect(reading.members[0].lands[0].pokemon.name).toBe("Lanturn");
  });

  it("reads each of their Pokémon by its moves or, without them, by its types", () => {
    const reading = readStoryBattle({
      generationOrder: 4,
      members: [member("a", ["grass"], 40, [move("Razor Leaf", "grass")])],
      opponentName: "Volkner",
      their: [
        // Moves known: Ice Beam, though it is Water.
        {
          ...opponent("Lanturn", ["water", "electric"], 40),
          moves: [theirMove("Ice Beam", "ice")],
        },
        // Moves unknown: its own Fire type.
        opponent("Rapidash", ["fire"], 40),
      ],
      types,
    });

    expect(reading.members[0].weakTo.map((type) => type.slug).sort()).toEqual([
      "fire",
      "ice",
    ]);
  });

  it("gives Tera Blast the Tera Type and leaves Hidden Power out", () => {
    const reading = readStoryBattle({
      generationOrder: 9,
      members: [member("a", ["fire"], 62, [move("Flamethrower", "fire")])],
      opponentName: "Geeta",
      their: [
        {
          ...opponent("Glimmora", ["rock", "poison"], 62, "rock"),
          moves: [theirMove("Tera Blast", "normal")],
        },
        {
          ...opponent("Unown", ["psychic"], 62),
          moves: [theirMove("Hidden Power", "normal")],
        },
      ],
      types,
    });

    expect(reading.members[0].weakTo.map((type) => type.slug)).toEqual([
      "rock",
    ]);
  });

  it("reads Strong when every opponent has an answer and the levels hold", () => {
    const reading = readStoryBattle({
      generationOrder: 1,
      members: [member("a", ["water"], 15, [move("Water Gun", "water")])],
      opponentName: "Brock",
      their: brock,
      types,
    });

    expect(reading.state).toBe("strong");
    expect(reading.members[0]).toMatchObject({
      bestHit: { moveName: "Water Gun", multiplier: 4 },
      role: "strong",
      weakTo: [],
    });
    expect(reading.summary).toBe(
      "You have an answer to each of Brock's two Pokémon, and nothing of theirs hits your team for 2×.",
    );
  });

  it("reads Challenging when they are far above your team", () => {
    const reading = readStoryBattle({
      generationOrder: 8,
      members: [
        member("a", ["water"], 50, [move("Surf", "water")]),
        member("b", ["fire"], 53, [move("Flamethrower", "fire")]),
      ],
      opponentName: "Leon",
      their: [opponent("Rhyperior", ["ground", "rock"], 64)],
      types,
    });

    expect(reading.state).toBe("challenging");
    expect(reading.levels).toMatchObject({
      gap: -11,
      state: "challenging",
    });
    expect(reading.summary).toBe(
      "They're 11 levels above your team, but you have an answer to Leon's Pokémon.",
    );
  });

  it("marks a Pokémon at risk when it has no answer and takes 2×", () => {
    const reading = readStoryBattle({
      generationOrder: 1,
      members: [member("a", ["fire"], 10, [move("Ember", "fire")])],
      opponentName: "Brock",
      their: brock,
      types,
    });

    expect(reading.members[0]).toMatchObject({
      bestHit: null,
      role: "challenging",
    });
    expect(reading.members[0]?.weakTo.map((type) => type.slug)).toEqual([
      "rock",
      "ground",
    ]);
    expect(reading.state).toBe("challenging");
    expect(reading.summary).toBe(
      "They're 4 levels above your team, and none of your recorded moves hits Brock's Pokémon for 2×.",
    );
  });

  it("names the types they're weak to that no recorded move has", () => {
    const reading = readStoryBattle({
      generationOrder: 1,
      members: [member("a", ["normal"], 20, [move("Tackle", "normal")])],
      opponentName: "Brock",
      their: brock,
      types,
    });

    expect(reading.uncoveredTypes.map((type) => type.slug)).toEqual([
      "water",
      "grass",
      "ice",
      "fighting",
      "ground",
    ]);
  });

  it("reads a Pokémon by its types while its moves aren't recorded, and status moves don't count", () => {
    const reading = readStoryBattle({
      generationOrder: 1,
      members: [member("a", ["water"], 20, [move("Withdraw", "water", null)])],
      opponentName: "Brock",
      their: brock,
      types,
    });

    expect(reading.members[0]).toMatchObject({
      bestHit: { byType: true, moveName: "Water", multiplier: 4 },
      role: "strong",
    });
    expect(reading.members[0]?.lands[0]).toMatchObject({
      byType: true,
      via: ["Water"],
    });
    expect(reading.uncoveredTypes).toEqual([]);
    expect(reading.state).toBe("strong");
    expect(reading.summary).toBe(
      "You're 6 levels above them, and by type you have an answer to each of Brock's two Pokémon.",
    );
  });

  it("leaves a Pokémon unread while its types aren't recorded", () => {
    const reading = readStoryBattle({
      generationOrder: 1,
      members: [member("a", [], 20, [move("Surf", "water")])],
      opponentName: "Brock",
      their: brock,
      types,
    });

    expect(reading.members[0]).toMatchObject({ role: null, weakTo: [] });
  });

  it("reads no verdict for an empty team, and a rough one at their level while yours aren't recorded", () => {
    expect(
      readStoryBattle({
        generationOrder: 1,
        members: [],
        opponentName: "Brock",
        their: brock,
        types,
      }),
    ).toMatchObject({ levels: null, state: null, summary: null });

    expect(
      readStoryBattle({
        generationOrder: 1,
        members: [member("a", ["water"], null, [move("Surf", "water")])],
        opponentName: null,
        their: brock,
        types,
      }),
    ).toMatchObject({ levels: null, missing: ["levels"], state: "strong" });
  });

  it("follows the generation's type chart", () => {
    const gengar = [opponent("Gengar", ["ghost", "poison"], 40)];
    const psychic = member("a", ["psychic"], 40, [move("Psychic", "psychic")]);

    expect(
      readStoryBattle({
        generationOrder: 1,
        members: [psychic],
        opponentName: "Agatha",
        their: gengar,
        types,
      }).members[0]?.weakTo,
    ).toEqual([]);
    expect(
      readStoryBattle({
        generationOrder: 2,
        members: [psychic],
        opponentName: "Agatha",
        their: gengar,
        types,
      }).members[0]?.weakTo.map((type) => type.slug),
    ).toEqual(["ghost"]);
  });
});

describe("readStoryBattle for a legendary", () => {
  const raikou = [opponent("Raikou", ["electric"], 40)];
  const read = (
    members: MainlinePlayTeamMember[],
    opponentKind: "legendary" | "trainer" = "legendary",
  ) =>
    readStoryBattle({
      generationOrder: 2,
      members,
      opponentKind,
      opponentName: "Raikou",
      their: raikou,
      types,
    });

  it("names the legendary where a trainer would be 'their team'", () => {
    const ground = member("a", ["ground"], 40, [move("Earthquake", "ground")]);

    expect(read([ground]).summary).toBe(
      "You have an answer to Raikou, and it doesn't hit your team for 2×.",
    );
    expect(read([ground], "trainer").summary).toBe(
      "You have an answer to Raikou's Pokémon, and nothing of theirs hits your team for 2×.",
    );
  });

  it("says when none of your moves hits it for 2×, and when it is above your team", () => {
    expect(
      read([member("a", ["water"], 40, [move("Surf", "water")])]).summary,
    ).toBe(
      "None of your recorded moves hits Raikou for 2×, and your Pokémon takes 2× or more.",
    );
    expect(
      read([member("a", ["grass"], 20, [move("Vine Whip", "grass")])]).summary,
    ).toBe(
      "It's 20 levels above your team, and none of your recorded moves hits Raikou for 2×.",
    );
  });
});

describe("level wording", () => {
  it("writes ranges and the gap", () => {
    expect(formatLevelRange({ max: 65, min: 62 })).toBe("Lv. 62–65");
    expect(formatLevelRange({ max: 14, min: 14 })).toBe("Lv. 14");
    expect(
      getLevelsSentence({
        gap: -12,
        state: "challenging",
        team: { max: 53, min: 48 },
        their: { max: 65, min: 62 },
      }),
    ).toBe("They're 12 levels above your team");
    expect(
      getLevelsSentence({
        gap: 1,
        state: "balanced",
        team: { max: 15, min: 15 },
        their: { max: 14, min: 12 },
      }),
    ).toBe("Your levels are close to theirs");
  });

  it("reads 'it' for a legendary", () => {
    const levels = (gap: number) => ({
      gap,
      state: "balanced" as const,
      team: { max: 50, min: 50 },
      their: { max: 50 - gap, min: 50 - gap },
    });

    expect(getLevelsSentence(levels(-12), "legendary")).toBe(
      "It's 12 levels above your team",
    );
    expect(getLevelsSentence(levels(5), "legendary")).toBe(
      "You're 5 levels above it",
    );
    expect(getLevelsSentence(levels(1), "legendary")).toBe(
      "Your levels are close to its",
    );
  });
});

describe("getPowerUpSentence", () => {
  it("says what it holds and how it powers up", () => {
    expect(
      getPowerUpSentence({
        heldItem: { name: "Assault Vest", slug: "assault-vest" },
        mechanic: { kind: "tera", label: "Tera Fighting" },

        name: "Hydrapple",
      }),
    ).toBe("Hydrapple holds Assault Vest and Terastallizes into Fighting.");
    expect(
      getPowerUpSentence({
        heldItem: { name: "Rockium Z", slug: "rockium-z" },
        mechanic: { kind: "z-move", label: "Z-Move" },

        name: "Lycanroc",
      }),
    ).toBe("Lycanroc holds Rockium Z for a Z-Move.");
    expect(
      getPowerUpSentence({
        heldItem: null,
        mechanic: { kind: "dynamax", label: "Dynamax" },

        name: "Eldegoss",
      }),
    ).toBe("Eldegoss Dynamaxes.");
  });

  it("doesn't repeat a battle form its name already says", () => {
    expect(
      getPowerUpSentence({
        heldItem: { name: "Gardevoirite", slug: "gardevoirite" },
        mechanic: { kind: "mega", label: "Mega" },

        name: "Mega Gardevoir",
      }),
    ).toBe("Mega Gardevoir holds Gardevoirite.");
    expect(
      getPowerUpSentence({
        heldItem: null,
        mechanic: { kind: "gigantamax", label: "Gigantamax" },

        name: "Gigantamax Charizard",
      }),
    ).toBeNull();
  });
});

describe("readStoryBattle by the battle math", () => {
  const grassTeam = (level: number, count: number) =>
    Array.from({ length: count }, (_, index) =>
      opponent(`Grass${index}`, ["grass"], level),
    );
  const water = (level: number) =>
    member("a", ["water"], level, [move("Surf", "water")]);
  const read = (
    members: MainlinePlayTeamMember[],
    their: StoryOpponentPokemon[],
  ) =>
    readStoryBattle({
      generationOrder: 9,
      members,
      opponentName: "Gardenia",
      their,
      types,
    });

  it("lets level come first: Lv. 70 wipes six Lv. 20s that hit it for 2×", () => {
    expect(read([water(70)], grassTeam(20, 6)).state).toBe("strong");
    expect(read([water(20)], grassTeam(20, 6)).state).toBe("challenging");
  });

  it("weighs how many they bring", () => {
    const normalTeam = (count: number) =>
      Array.from({ length: count }, (_, index) =>
        opponent(`Normal${index}`, ["normal"], 30),
      );

    expect(read([water(38)], normalTeam(1)).state).toBe("strong");
    expect(read([water(38)], normalTeam(6)).state).toBe("challenging");
  });

  it("says it's a rough read while your levels or moves aren't recorded", () => {
    expect(read([water(30)], grassTeam(30, 1)).missing).toEqual([]);
    expect(
      read([member("a", ["water"], null, [])], grassTeam(30, 1)).missing,
    ).toEqual(["levels", "moves"]);
  });
});

describe("battle verdict", () => {
  it("mixes your best answer with your second best, as the average player fights", () => {
    expect(getAnswerCost([0.2, 0.6, 1])).toBeCloseTo(0.36);
    /* One Pokémon is its own second best. */
    expect(getAnswerCost([0.5])).toBeCloseTo(0.5);
    /* A duel you can't win counts as three of yours lost, never more. */
    expect(getAnswerCost([Infinity])).toBe(3);
  });

  it("weighs what their whole team costs against the team you bring", () => {
    expect(getBattleState({ answerCosts: [0.2, 0.3], teamCount: 2 })).toBe(
      "strong",
    );
    expect(getBattleState({ answerCosts: [0.2, 0.3], teamCount: 1 })).toBe(
      "balanced",
    );
    expect(
      getBattleState({ answerCosts: [0.5, 0.5, 0.5, 0.5], teamCount: 2 }),
    ).toBe("challenging");
  });
});
