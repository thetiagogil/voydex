import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import { compareGamesByRelease } from "@/modules/reference/features/games/data/game-release-order";
import { getGameCoverShape } from "@/modules/reference/features/games/domain/game-cover-shapes";
import type {
  GameShelfGame,
  GameStarter,
  GameStarters,
} from "@/modules/reference/features/games/types";
import {
  getGameShortName,
  getGenerationNumeral,
} from "@/modules/reference/features/games/utils/game-display";
import {
  resolveTypePair,
  selectAttributesInGeneration,
} from "@/modules/reference/features/pokemon/data/pokemon-attribute-selectors";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import type {
  Game,
  GamePlatform,
  Generation,
  Platform,
  Pokedex,
  PokedexEntry,
  PokemonAttributes,
  PokemonAvailability,
  PokemonForm,
  PokemonSpecies,
  Region,
  Type,
  VersionGroup,
} from "@/modules/reference/shared/database-types";
import { byId } from "@/shared/utils/collections";

type GameShelfRows = {
  gamePlatforms: GamePlatform[];
  games: Game[];
  generations: Generation[];
  platforms: Platform[];
  regions: Region[];
  versionGroups: VersionGroup[];
};

/* Every game on the picker's shelf, in release order. */
export const buildGameShelfGames = (rows: GameShelfRows): GameShelfGame[] => {
  const generationById = byId(rows.generations);
  const regionById = byId(rows.regions);
  const versionGroupById = byId(rows.versionGroups);
  const platformById = byId(rows.platforms);
  const compareByRelease = compareGamesByRelease(rows);
  const platformNamesByGameId = new Map<number, string[]>();
  const firstPlatformSlugByGameId = new Map<number, string>();

  for (const gamePlatform of rows.gamePlatforms.toSorted(
    (first, second) => first.sort_order - second.sort_order,
  )) {
    const platform = platformById.get(gamePlatform.platform_id);

    if (!platform) {
      continue;
    }

    const names = platformNamesByGameId.get(gamePlatform.game_id) ?? [];

    if (!firstPlatformSlugByGameId.has(gamePlatform.game_id)) {
      firstPlatformSlugByGameId.set(gamePlatform.game_id, platform.slug);
    }

    names.push(platform.name);
    platformNamesByGameId.set(gamePlatform.game_id, names);
  }

  return rows.games.toSorted(compareByRelease).map((game) => {
    const generation = generationById.get(game.generation_id);
    const versionGroup = versionGroupById.get(game.version_group_id);
    const baseVersionGroup = versionGroup?.parent_version_group_id
      ? versionGroupById.get(versionGroup.parent_version_group_id)
      : versionGroup;

    if (!generation || !baseVersionGroup) {
      throw new Error(`Unable to place ${game.slug} on the game shelf.`);
    }

    return {
      coverImageUrl: getGameCoverImageUrl(game),
      coverShape: getGameCoverShape(firstPlatformSlugByGameId.get(game.id)),
      generation: {
        id: generation.id,
        name: generation.name,
        numeral: getGenerationNumeral(generation.name),
        number: generation.sort_order,
      },
      id: game.id,
      name: game.name,
      platformNames: platformNamesByGameId.get(game.id) ?? [],
      regionName: regionById.get(game.region_id)?.name ?? null,
      releaseYear: game.release_year,
      shortName: getGameShortName(game.name),
      slug: game.slug,
      versionGroupSlug: baseVersionGroup.slug,
    };
  });
};

/*
 * A first partner choice is a trio, or one partner chosen for you. The
 * `starter` availability method also lists the starters a game gives later
 * (X and Y's Kanto trio from Professor Sycamore, Omega Ruby and Alpha
 * Sapphire's postgame trios from Professor Birch); those sit later in, or
 * outside, the game's own Pokédex, so the choice is the first three by that
 * Pokédex's number.
 */
const FIRST_PARTNER_CHOICE_SIZE = 3;

export type GameStarterRows = {
  attributes: PokemonAttributes[];
  forms: PokemonForm[];
  generations: Generation[];
  /* The entries of each version group's first Pokédex (its own regional one). */
  pokedexEntries: Pick<
    PokedexEntry,
    "pokedex_id" | "pokedex_number" | "species_id"
  >[];
  pokedexes: Pick<Pokedex, "id" | "sort_order" | "version_group_id">[];
  species: PokemonSpecies[];
  /* Availability rows with the `starter` method. */
  starterAvailability: Pick<
    PokemonAvailability,
    "form_id" | "game_id" | "species_id" | "version_group_id"
  >[];
  types: Type[];
};

const getFirstPokedexId = (
  versionGroupId: number,
  pokedexes: GameStarterRows["pokedexes"],
) => {
  return (
    pokedexes
      .filter((pokedex) => pokedex.version_group_id === versionGroupId)
      .toSorted((first, second) => first.sort_order - second.sort_order)[0]
      ?.id ?? null
  );
};

/* One game's first partner choice, from its `starter` availability. */
export const buildGameStarters = (
  game: Game,
  rows: GameStarterRows,
): GameStarters => {
  const speciesById = byId(rows.species);
  const formById = byId(rows.forms);
  const typeById = byId(rows.types);
  const generation = byId(rows.generations).get(game.generation_id);
  const firstPokedexId = getFirstPokedexId(
    game.version_group_id,
    rows.pokedexes,
  );
  const pokedexNumberBySpeciesId = new Map(
    rows.pokedexEntries
      .filter((entry) => entry.pokedex_id === firstPokedexId)
      .map((entry) => [entry.species_id, entry.pokedex_number]),
  );
  const seenFormIds = new Set<number>();
  const starters: GameStarter[] = [];

  for (const row of rows.starterAvailability) {
    const appliesToGame =
      row.version_group_id === game.version_group_id &&
      (row.game_id === null || row.game_id === game.id);
    const species = speciesById.get(row.species_id);
    const form = formById.get(row.form_id);

    if (!appliesToGame || !species || !form || seenFormIds.has(form.id)) {
      continue;
    }

    seenFormIds.add(form.id);
    starters.push({
      formId: form.id,
      formName: form.name,
      formSlug: form.slug,
      imageUrl: getPokemonFormImageUrl(form),
      isDefaultForm: form.is_default,
      name: species.name,
      nationalNumber: species.national_number,
      speciesId: species.id,
      speciesSlug: species.slug,
      typePair: resolveTypePair(
        selectAttributesInGeneration({
          attributes: rows.attributes,
          formId: form.id,
          generation,
          generations: rows.generations,
        }),
        typeById,
      ),
    });
  }

  const pokedexOrder = (starter: GameStarter) =>
    pokedexNumberBySpeciesId.get(starter.speciesId) ?? Number.MAX_SAFE_INTEGER;
  const choice = starters
    .toSorted(
      (first, second) =>
        pokedexOrder(first) - pokedexOrder(second) ||
        first.nationalNumber - second.nationalNumber ||
        first.formId - second.formId,
    )
    .slice(0, FIRST_PARTNER_CHOICE_SIZE);

  return {
    gameSlug: game.slug,
    isSolo: choice.length === 1,
    starters: choice,
  };
};
