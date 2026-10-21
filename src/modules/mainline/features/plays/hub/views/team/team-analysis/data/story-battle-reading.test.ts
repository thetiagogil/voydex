import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import type { Type } from "@/modules/reference/types";

import {
  formatLevelRange,
  getLevelsSentence,
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
): StoryOpponentPokemon => ({
  formSlug: name.toLowerCase(),
  imageUrl: null,
  key: name,
  level,
  name,
  types: opponentTypes.map(typeOf),
});

const brock = [
  opponent("Geodude", ["rock", "ground"], 12),
  opponent("Onix", ["rock", "ground"], 14),
];

describe("readStoryBattle", () => {
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
      "You have an answer to Leon's Pokémon, but they're 11 levels above your team.",
    );
  });

  it("marks a Pokémon at risk when it has no answer and takes 2×", () => {
    const reading = readStoryBattle({
      generationOrder: 1,
      members: [member("a", ["fire"], 20, [move("Ember", "fire")])],
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
      "None of your recorded moves hits Brock's Pokémon for 2×, and your Pokémon takes 2× or more.",
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

  it("leaves a Pokémon unread while its moves aren't recorded, and status moves don't count", () => {
    const reading = readStoryBattle({
      generationOrder: 1,
      members: [member("a", ["water"], 20, [move("Withdraw", "water", null)])],
      opponentName: "Brock",
      their: brock,
      types,
    });

    expect(reading.members[0]).toMatchObject({ bestHit: null, role: null });
    expect(reading.uncoveredTypes).toEqual([]);
    expect(reading.summary).toBe(
      "Your team's moves aren't recorded, but you're 6 levels above them.",
    );
  });

  it("reads no verdict for an empty team and no levels while yours aren't recorded", () => {
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
    ).toMatchObject({ levels: null, state: "balanced" });
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
});
