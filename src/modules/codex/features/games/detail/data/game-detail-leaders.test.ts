import { describe, expect, it } from "vitest";

import {
  buildGameLeaders,
  pickLeaderAce,
  type CodexLeaderRows,
  type CodexLeaderTeamMemberRow,
} from "./game-detail-leaders";

const member = (
  fields: Partial<CodexLeaderTeamMemberRow> & { level: number },
): CodexLeaderTeamMemberRow => ({
  ally_opponent_id: null,
  decision_option_slug: null,
  form_id: 100,
  game_id: null,
  milestone_id: 1,
  opponent_id: 1,
  slot: 1,
  species_id: 1,
  variant_slug: null,
  ...fields,
});

describe("pickLeaderAce", () => {
  it("takes the highest level of the lowest-level battle, the last slot on a tie", () => {
    const ace = pickLeaderAce([
      /* The Gym battle: Galarian Yamper 23, Drednaw 24. */
      member({ form_id: 83600, level: 23, milestone_id: 10, slot: 1 }),
      member({ form_id: 83400, level: 24, milestone_id: 10, slot: 2 }),
      /* The Champion Cup rematch, higher and later. */
      member({ form_id: 83600, level: 51, milestone_id: 20, slot: 1 }),
      member({ form_id: 83400, level: 53, milestone_id: 20, slot: 2 }),
      member({ form_id: 83400, level: 53, milestone_id: 20, slot: 3 }),
    ]);

    expect(ace?.form_id).toBe(83400);
    expect(ace?.level).toBe(24);
    expect(
      pickLeaderAce([
        member({ form_id: 1, level: 20, milestone_id: 1, slot: 1 }),
        member({ form_id: 2, level: 20, milestone_id: 1, slot: 2 }),
      ])?.form_id,
    ).toBe(2);
    expect(pickLeaderAce([])).toBeNull();
  });

  it("ignores an ally's Pokémon fighting beside the player", () => {
    expect(
      pickLeaderAce([
        member({ form_id: 1, level: 30, slot: 1 }),
        member({ ally_opponent_id: 9, form_id: 2, level: 60, slot: 1 }),
      ])?.form_id,
    ).toBe(1);
  });

  it("names the Pokémon a leader brings whatever you chose, else the first version's", () => {
    /* Leon: Charizard in every version, the rest follows your starter. */
    const leon = ["grookey", "scorbunny", "sobble"].flatMap((option, index) => [
      member({
        decision_option_slug: option,
        form_id: 600,
        level: 65,
        slot: 1,
      }),
      member({
        decision_option_slug: option,
        form_id: 81200 + index,
        level: 64,
        slot: 6,
      }),
    ]);

    expect(pickLeaderAce(leon)?.form_id).toBe(600);

    /* Nothing shared: the first version by name (bulbasaur) decides. */
    const rival = ["squirtle", "bulbasaur"].map((option, index) =>
      member({ decision_option_slug: option, form_id: 300 + index, level: 65 }),
    );

    expect(pickLeaderAce(rival)?.form_id).toBe(301);
  });
});

describe("buildGameLeaders", () => {
  const rows: CodexLeaderRows = {
    battleFormBases: [{ base_form_id: 83400, battle_form_id: 83401 }],
    forms: [
      { id: 83400, is_default: true, name: "Drednaw", slug: "drednaw" },
      {
        id: 83401,
        is_default: false,
        name: "Gigantamax Drednaw",
        slug: "gigantamax-drednaw",
      },
      { id: 86100, is_default: true, name: "Grimmsnarl", slug: "grimmsnarl" },
      {
        id: 5202,
        is_default: false,
        name: "Galarian Meowth",
        slug: "galarian-meowth",
      },
    ],
    members: [
      /* Nessa Dynamaxes her Drednaw: the ace reads as Drednaw all the same. */
      member({
        form_id: 83401,
        level: 24,
        milestone_id: 10,
        opponent_id: 2,
        species_id: 834,
      }),
      member({
        form_id: 83400,
        level: 53,
        milestone_id: 20,
        opponent_id: 2,
        species_id: 834,
      }),
      /* Bea's team belongs to Sword; Allister has none seeded here. */
      member({
        form_id: 86100,
        game_id: 31,
        level: 36,
        milestone_id: 11,
        opponent_id: 4,
        species_id: 861,
      }),
      member({
        form_id: 5202,
        level: 50,
        milestone_id: 30,
        opponent_id: 12,
        species_id: 52,
      }),
    ],
    opponents: [
      {
        game_id: null,
        id: 12,
        name: "Leon",
        opponent_role: "champion",
        place: "Wyndon",
        primary_type_id: null,
        slug: "leon",
        sort_order: 10,
      },
      {
        game_id: null,
        id: 2,
        name: "Nessa",
        opponent_role: "gym-leader",
        place: "Hulbury",
        primary_type_id: 3,
        slug: "nessa",
        sort_order: 2,
      },
      {
        game_id: 31,
        id: 4,
        name: "Bea",
        opponent_role: "gym-leader",
        place: "Stow-on-Side",
        primary_type_id: 7,
        slug: "bea",
        sort_order: 4,
      },
      {
        game_id: 32,
        id: 5,
        name: "Allister",
        opponent_role: "gym-leader",
        place: "Stow-on-Side",
        primary_type_id: 9,
        slug: "allister",
        sort_order: 4,
      },
      {
        game_id: null,
        id: 40,
        name: "Hop",
        opponent_role: "rival",
        place: null,
        primary_type_id: null,
        slug: "hop",
        sort_order: 1,
      },
    ],
    species: [
      { id: 834, name: "Drednaw" },
      { id: 861, name: "Grimmsnarl" },
      { id: 52, name: "Meowth" },
    ],
    types: [
      { id: 3, name: "Water", slug: "water" },
      { id: 7, name: "Fighting", slug: "fighting" },
      { id: 9, name: "Ghost", slug: "ghost" },
    ],
  };

  it("lists the picked game's leaders in order, with place, type and first-battle ace", () => {
    const leaders = buildGameLeaders(rows, 31);

    expect(leaders.map((leader) => leader.name)).toEqual([
      "Nessa",
      "Bea",
      "Leon",
    ]);
    expect(leaders[0]).toMatchObject({
      ace: { imageUrl: expect.stringContaining("/drednaw"), name: "Drednaw" },
      place: "Hulbury",
      role: "gym-leader",
      type: { name: "Water", slug: "water" },
    });
    expect(leaders[1].ace?.name).toBe("Grimmsnarl");
    /* A variant ace reads by its form's name; a Champion has no type. */
    expect(leaders[2]).toMatchObject({
      ace: { name: "Galarian Meowth" },
      type: null,
    });
  });

  it("lists a leader fought again under the same role once, where you first meet them", () => {
    const leaders = buildGameLeaders(
      {
        ...rows,
        opponents: [
          ...rows.opponents,
          {
            game_id: null,
            id: 29,
            name: "Nessa",
            opponent_role: "gym-leader",
            place: "Wyndon",
            primary_type_id: 3,
            slug: "nessa-cup",
            sort_order: 27,
          },
        ],
      },
      31,
    );

    expect(leaders.map((leader) => `${leader.name} · ${leader.place}`)).toEqual(
      ["Nessa · Hulbury", "Bea · Stow-on-Side", "Leon · Wyndon"],
    );
  });

  it("keeps a leader's first battle even when a later one sorts earlier (Nanu in Ultra Moon)", () => {
    const leaders = buildGameLeaders(
      {
        ...rows,
        members: [
          ...rows.members,
          member({
            form_id: 86100,
            level: 38,
            milestone_id: 40,
            opponent_id: 50,
            species_id: 861,
          }),
          member({
            form_id: 5202,
            game_id: 31,
            level: 52,
            milestone_id: 41,
            opponent_id: 51,
            species_id: 52,
          }),
        ],
        opponents: [
          ...rows.opponents,
          {
            game_id: null,
            id: 50,
            name: "Nanu",
            opponent_role: "kahuna",
            place: "Malie City",
            primary_type_id: 9,
            slug: "nanu",
            sort_order: 9,
          },
          {
            game_id: 31,
            id: 51,
            name: "Nanu",
            opponent_role: "kahuna",
            place: "Aether House",
            primary_type_id: 9,
            slug: "nanu-mina",
            sort_order: 7,
          },
        ],
      },
      31,
    );
    const nanu = leaders.filter((leader) => leader.name === "Nanu");

    expect(nanu).toHaveLength(1);
    expect(nanu[0]).toMatchObject({
      ace: { name: "Grimmsnarl" },
      place: "Malie City",
    });
  });

  it("swaps in the other game's leader, whose team isn't seeded", () => {
    const leaders = buildGameLeaders(rows, 32);

    expect(leaders.map((leader) => leader.name)).toEqual([
      "Nessa",
      "Allister",
      "Leon",
    ]);
    expect(leaders[1].ace).toBeNull();
  });
});
