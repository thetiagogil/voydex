import { describe, expect, it } from "vitest";

import {
  buildGameDetailData,
  buildGameFirstPartners,
  pickGameDetailVersion,
} from "@/modules/codex/features/games/detail/data/game-detail-mappers";
import type { GameDetailRows } from "@/modules/codex/features/games/detail/server/game-detail-loaders";
import type {
  Game,
  GameStarters,
  Generation,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  Type,
  VersionGroup,
} from "@/modules/reference/types";

const game = (id: number, slug: string, sortOrder: number) =>
  ({
    game_type_id: 1,
    generation_id: 8,
    id,
    name: `Pokémon ${slug[0].toUpperCase()}${slug.slice(1)}`,
    region_id: 1,
    release_year: 2019,
    slug,
    sort_order: sortOrder,
    version_group_id: 18,
  }) as Game;

const sword = game(31, "sword", 1);
const shield = game(32, "shield", 2);
const versionGroup = {
  generation_id: 8,
  id: 18,
  name: "Sword / Shield",
  parent_version_group_id: null,
  slug: "swsh",
  sort_order: 1,
} as VersionGroup;

const form = (id: number, speciesId: number, name: string, isDefault = true) =>
  ({
    form_order: isDefault ? 1 : 2,
    id,
    is_default: isDefault,
    name,
    slug: name.toLowerCase().replace(/[^a-z]+/g, "-"),
    species_id: speciesId,
    sprite_slug: name.toLowerCase().replace(/[^a-z]+/g, "-"),
  }) as PokemonForm;

const species = (id: number, name: string) =>
  ({
    id,
    name,
    national_number: id,
    slug: name.toLowerCase(),
  }) as PokemonSpecies;

const rows = (): GameDetailRows => ({
  gamePlatforms: [],
  gameTypes: [],
  generations: [
    { id: 8, name: "Generation VIII", sort_order: 8 },
  ] as Generation[],
  platforms: [],
  pokedexEntries: [],
  pokedexes: [],
  relatedGames: [],
  regions: [],
  versionExclusives: {
    attributes: [
      { form_id: 8301, generation_start_id: 8, primary_type_id: 2 },
    ] as PokemonAttributes[],
    exclusivesByGameId: new Map([
      [
        sword.id,
        [
          { formId: 8301, speciesId: 83 },
          { formId: 63300, speciesId: 633 },
        ],
      ],
      [shield.id, [{ formId: 24600, speciesId: 246 }]],
    ]),
    forms: [
      form(8301, 83, "Galarian Farfetch'd", false),
      form(63300, 633, "Deino"),
      form(24600, 246, "Larvitar"),
    ],
    species: [
      species(83, "Farfetch'd"),
      species(633, "Deino"),
      species(246, "Larvitar"),
    ],
    types: [{ id: 2, name: "Fighting", slug: "fighting" }] as Type[],
  },
  versionGroup,
  versionGroups: [versionGroup],
  versions: [sword, shield],
});

describe("pickGameDetailVersion", () => {
  it("picks the named game, else the group's first", () => {
    expect(pickGameDetailVersion([sword, shield], "shield")).toBe(shield);
    expect(pickGameDetailVersion([sword, shield], "red")).toBe(sword);
    expect(pickGameDetailVersion([], "red")).toBeNull();
  });
});

describe("buildGameFirstPartners", () => {
  it("links each partner to its entry in the group, a special form by name", () => {
    const starters: GameStarters = {
      gameSlug: "lets-go-pikachu",
      isSolo: true,
      starters: [
        {
          formId: 2501,
          formName: "Pikachu (Partner)",
          formSlug: "pikachu-partner",
          imageUrl: null,
          isDefaultForm: false,
          name: "Pikachu",
          nationalNumber: 25,
          speciesId: 25,
          speciesSlug: "pikachu",
          typePair: {
            primaryType: { name: "Electric", slug: "electric" } as Type,
            secondaryType: null,
          },
        },
      ],
    };

    expect(buildGameFirstPartners(starters, "lgpe")).toEqual({
      isSolo: true,
      pokemon: [
        {
          href: "/codex/pokemon/lgpe/pikachu?form=pikachu-partner",
          imageUrl: null,
          key: "2501",
          name: "Pikachu (Partner)",
          nationalNumber: 25,
          types: [{ name: "Electric", slug: "electric" }],
        },
      ],
    });
    expect(buildGameFirstPartners(null, "lgpe")).toEqual({
      isSolo: false,
      pokemon: [],
    });
  });
});

describe("buildGameDetailData version exclusives", () => {
  it("puts the picked game's column first, in National Pokédex order", () => {
    const data = buildGameDetailData(rows(), "shield");

    expect(
      data?.versionExclusives.map((column) => column.version.game.slug),
    ).toEqual(["shield", "sword"]);
    expect(
      data?.versionExclusives[1].pokemon.map((pokemon) => pokemon.name),
    ).toEqual(["Galarian Farfetch'd", "Deino"]);
    expect(data?.versionExclusives[1].pokemon[0]).toMatchObject({
      href: "/codex/pokemon/swsh/farfetch'd?form=galarian-farfetch-d",
      types: [{ name: "Fighting", slug: "fighting" }],
    });
    expect(data?.versionExclusives[1].pokemon[1].href).toBe(
      "/codex/pokemon/swsh/deino",
    );
  });

  it("has no columns for a group with one game", () => {
    const single = { ...rows(), versions: [sword] };

    expect(buildGameDetailData(single)?.versionExclusives).toEqual([]);
  });
});
