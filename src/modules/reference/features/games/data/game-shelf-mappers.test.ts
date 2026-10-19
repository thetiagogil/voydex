import { describe, expect, it } from "vitest";

import {
  buildGameShelfGames,
  buildGameStarters,
  type GameStarterRows,
} from "@/modules/reference/features/games/data/game-shelf-mappers";
import type {
  Game,
  Generation,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  Region,
  Type,
  VersionGroup,
} from "@/modules/reference/shared/database-types";

const createdAt = "2026-01-01T00:00:00Z";

const generation = (id: number, name: string): Generation => ({
  created_at: createdAt,
  id,
  name,
  slug: name.toLowerCase().replace(" ", "-"),
  sort_order: id,
  start_year: 1995 + id,
});

const generations = [
  generation(1, "Generation I"),
  generation(6, "Generation VI"),
  generation(7, "Generation VII"),
  generation(8, "Generation VIII"),
];

const versionGroup = (
  id: number,
  slug: string,
  generationId: number,
  parentId: number | null = null,
): VersionGroup => ({
  created_at: createdAt,
  generation_id: generationId,
  id,
  is_open_world: false,
  name: slug,
  parent_version_group_id: parentId,
  slug,
  sort_order: id,
});

const game = (
  id: number,
  slug: string,
  name: string,
  versionGroupId: number,
  generationId: number,
  releaseYear: number,
): Game => ({
  created_at: createdAt,
  game_type_id: 1,
  generation_id: generationId,
  id,
  name,
  product_family_id: 1,
  region_id: 1,
  release_year: releaseYear,
  slug,
  sort_order: id,
  version_group_id: versionGroupId,
});

const region: Region = {
  created_at: createdAt,
  id: 1,
  name: "Kanto",
  slug: "kanto",
  sort_order: 1,
};

const species = (
  id: number,
  name: string,
  introducedGenerationId = 1,
): PokemonSpecies => ({
  color: null,
  created_at: createdAt,
  evolution_family_id: id,
  id,
  introduced_generation_id: introducedGenerationId,
  is_baby: false,
  is_legendary: false,
  is_mythical: false,
  name,
  national_number: id,
  slug: name.toLowerCase(),
});

const form = (
  id: number,
  speciesId: number,
  name: string,
  formSlug: string,
): PokemonForm => ({
  created_at: createdAt,
  form_order: 1,
  height_decimeters: null,
  id,
  introduced_generation_id: 1,
  is_default: id % 100 === 0,
  name,
  slug: formSlug,
  species_id: speciesId,
  weight_hectograms: null,
});

const type = (id: number, slug: string): Type =>
  ({
    created_at: createdAt,
    id,
    name: slug[0].toUpperCase() + slug.slice(1),
    slug,
    sort_order: id,
  }) as Type;

const attributes = (
  formId: number,
  speciesId: number,
  generationStartId: number,
  primaryTypeId: number,
  secondaryTypeId: number | null = null,
): PokemonAttributes => ({
  base_attack: 1,
  base_defense: 1,
  base_hp: 1,
  base_special_attack: 1,
  base_special_defense: 1,
  base_speed: 1,
  created_at: createdAt,
  form_id: formId,
  generation_start_id: generationStartId,
  hidden_ability_id: null,
  primary_ability_id: null,
  primary_egg_group_id: null,
  primary_type_id: primaryTypeId,
  secondary_ability_id: null,
  secondary_egg_group_id: null,
  secondary_type_id: secondaryTypeId,
  species_id: speciesId,
});

describe("buildGameShelfGames", () => {
  it("lists games in release order with their generation and base group", () => {
    const shelf = buildGameShelfGames({
      gamePlatforms: [
        {
          created_at: createdAt,
          game_id: 31,
          platform_id: 1,
          release_kind: "original",
          sort_order: 1,
        },
      ],
      games: [
        game(31, "sword", "Pokémon Sword", 18, 8, 2019),
        game(1, "red", "Pokémon Red", 1, 1, 1996),
      ],
      generations,
      platforms: [
        {
          created_at: createdAt,
          id: 1,
          name: "Nintendo Switch",
          slug: "nintendo-switch",
          sort_order: 1,
        } as never,
      ],
      regions: [region],
      versionGroups: [
        versionGroup(1, "red-blue", 1),
        versionGroup(18, "sword-shield", 8),
      ],
    });

    expect(shelf.map((entry) => entry.slug)).toEqual(["red", "sword"]);
    expect(shelf[1]).toMatchObject({
      coverShape: "portrait",
      generation: { name: "Generation VIII", numeral: "VIII", number: 8 },
      platformNames: ["Nintendo Switch"],
      shortName: "Sword",
      versionGroupSlug: "sword-shield",
    });
  });

  it("links a game in a child group to its base group", () => {
    const [entry] = buildGameShelfGames({
      gamePlatforms: [],
      games: [game(31, "sword", "Pokémon Sword", 19, 8, 2019)],
      generations,
      platforms: [],
      regions: [],
      versionGroups: [
        versionGroup(18, "sword-shield", 8),
        versionGroup(19, "the-isle-of-armor", 8, 18),
      ],
    });

    expect(entry.versionGroupSlug).toBe("sword-shield");
    expect(entry.regionName).toBeNull();
  });
});

const baseStarterRows: Omit<
  GameStarterRows,
  "pokedexEntries" | "pokedexes" | "starterAvailability"
> = {
  attributes: [
    attributes(65000, 650, 6, 12),
    attributes(65300, 653, 6, 10),
    attributes(65600, 656, 6, 11),
    attributes(100, 1, 1, 12, 4),
    attributes(400, 4, 1, 10),
    attributes(700, 7, 1, 11),
    attributes(2500, 25, 1, 13),
    attributes(2501, 25, 7, 13),
    attributes(13301, 133, 7, 1),
    // Clefairy turned Fairy in Generation VI.
    attributes(3500, 35, 1, 1),
    attributes(3500, 35, 6, 18),
  ],
  forms: [
    form(65000, 650, "Chespin", "chespin"),
    form(65300, 653, "Fennekin", "fennekin"),
    form(65600, 656, "Froakie", "froakie"),
    form(100, 1, "Bulbasaur", "bulbasaur"),
    form(400, 4, "Charmander", "charmander"),
    form(700, 7, "Squirtle", "squirtle"),
    form(2501, 25, "Pikachu (Partner)", "pikachu-partner"),
    form(13301, 133, "Eevee (Partner)", "eevee-partner"),
    form(3500, 35, "Clefairy", "clefairy"),
  ],
  generations,
  species: [
    species(650, "Chespin", 6),
    species(653, "Fennekin", 6),
    species(656, "Froakie", 6),
    species(1, "Bulbasaur"),
    species(4, "Charmander"),
    species(7, "Squirtle"),
    species(25, "Pikachu"),
    species(133, "Eevee"),
    species(35, "Clefairy"),
  ],
  types: [
    type(1, "normal"),
    type(4, "poison"),
    type(10, "fire"),
    type(11, "water"),
    type(12, "grass"),
    type(13, "electric"),
    type(18, "fairy"),
  ],
};

const starterRow = (
  speciesId: number,
  formId: number,
  versionGroupId: number,
  gameId: number | null = null,
) => ({
  form_id: formId,
  game_id: gameId,
  species_id: speciesId,
  version_group_id: versionGroupId,
});

describe("buildGameStarters", () => {
  it("keeps the trio first in the game's own Pokédex, not the later gifts", () => {
    const x = game(23, "x", "Pokémon X", 13, 6, 2013);
    const result = buildGameStarters(x, {
      ...baseStarterRows,
      pokedexEntries: [
        { pokedex_id: 1301, pokedex_number: 1, species_id: 650 },
        { pokedex_id: 1301, pokedex_number: 4, species_id: 653 },
        { pokedex_id: 1301, pokedex_number: 7, species_id: 656 },
        { pokedex_id: 1301, pokedex_number: 80, species_id: 1 },
        { pokedex_id: 1301, pokedex_number: 83, species_id: 4 },
        { pokedex_id: 1301, pokedex_number: 86, species_id: 7 },
        // The National Pokédex numbers Bulbasaur first; it doesn't count.
        { pokedex_id: 1304, pokedex_number: 1, species_id: 1 },
      ],
      pokedexes: [
        { id: 1304, sort_order: 4, version_group_id: 13 },
        { id: 1301, sort_order: 1, version_group_id: 13 },
      ],
      starterAvailability: [
        starterRow(1, 100, 13),
        starterRow(4, 400, 13),
        starterRow(7, 700, 13),
        starterRow(656, 65600, 13),
        starterRow(653, 65300, 13),
        starterRow(650, 65000, 13),
      ],
    });

    expect(result.gameSlug).toBe("x");
    expect(result.isSolo).toBe(false);
    expect(result.starters.map((starter) => starter.name)).toEqual([
      "Chespin",
      "Fennekin",
      "Froakie",
    ]);
    expect(result.starters[0]).toMatchObject({
      formId: 65000,
      imageUrl: expect.stringContaining("chespin"),
      speciesSlug: "chespin",
    });
    expect(result.starters[0].typePair.primaryType?.slug).toBe("grass");
  });

  it("drops starters outside the game's own Pokédex", () => {
    const omegaRuby = game(25, "omega-ruby", "Pokémon Omega Ruby", 14, 6, 2014);
    const result = buildGameStarters(omegaRuby, {
      ...baseStarterRows,
      pokedexEntries: [
        { pokedex_id: 1401, pokedex_number: 1, species_id: 650 },
        { pokedex_id: 1401, pokedex_number: 4, species_id: 653 },
        { pokedex_id: 1401, pokedex_number: 7, species_id: 656 },
      ],
      pokedexes: [{ id: 1401, sort_order: 1, version_group_id: 14 }],
      starterAvailability: [
        starterRow(1, 100, 14),
        starterRow(650, 65000, 14),
        starterRow(653, 65300, 14),
        starterRow(656, 65600, 14),
      ],
    });

    expect(result.starters.map((starter) => starter.speciesId)).toEqual([
      650, 653, 656,
    ]);
  });

  it("gives each Let's Go game its own solo partner", () => {
    const rows: GameStarterRows = {
      ...baseStarterRows,
      pokedexEntries: [
        { pokedex_id: 1701, pokedex_number: 25, species_id: 25 },
        { pokedex_id: 1701, pokedex_number: 133, species_id: 133 },
      ],
      pokedexes: [{ id: 1701, sort_order: 1, version_group_id: 17 }],
      starterAvailability: [
        starterRow(25, 2501, 17, 29),
        starterRow(133, 13301, 17, 30),
      ],
    };
    const pikachu = buildGameStarters(
      game(29, "lets-go-pikachu", "Pokémon Let's Go, Pikachu!", 17, 7, 2018),
      rows,
    );
    const eevee = buildGameStarters(
      game(30, "lets-go-eevee", "Pokémon Let's Go, Eevee!", 17, 7, 2018),
      rows,
    );

    expect(pikachu.isSolo).toBe(true);
    expect(pikachu.starters).toHaveLength(1);
    expect(pikachu.starters[0]).toMatchObject({
      formName: "Pikachu (Partner)",
      formSlug: "pikachu-partner",
      isDefaultForm: false,
      name: "Pikachu",
    });
    expect(eevee.isSolo).toBe(true);
    expect(eevee.starters[0].name).toBe("Eevee");
  });

  it("reads types as they were in the game's generation", () => {
    const rows: GameStarterRows = {
      ...baseStarterRows,
      pokedexEntries: [],
      pokedexes: [],
      starterAvailability: [starterRow(35, 3500, 1), starterRow(35, 3500, 13)],
    };

    const red = buildGameStarters(
      game(1, "red", "Pokémon Red", 1, 1, 1996),
      rows,
    );
    const x = buildGameStarters(game(23, "x", "Pokémon X", 13, 6, 2013), rows);

    expect(red.starters[0].typePair.primaryType?.slug).toBe("normal");
    expect(x.starters[0].typePair.primaryType?.slug).toBe("fairy");
  });

  it("returns an empty choice for a game without starters", () => {
    const result = buildGameStarters(
      game(31, "sword", "Pokémon Sword", 18, 8, 2019),
      {
        ...baseStarterRows,
        pokedexEntries: [],
        pokedexes: [],
        starterAvailability: [starterRow(650, 65000, 13)],
      },
    );

    expect(result).toEqual({ gameSlug: "sword", isSolo: false, starters: [] });
  });
});
