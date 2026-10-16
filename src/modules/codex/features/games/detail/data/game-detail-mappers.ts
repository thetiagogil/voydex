import { appRoutes } from "@/config/routes";
import {
  getPokedexPokemonCounts,
  sortVersionGroupPokedexes,
} from "@/modules/codex/features/games/shared/data/version-group-pokedexes";
import type { GameDetailRows } from "@/modules/codex/features/games/detail/server/game-detail-loaders";
import type {
  CodexGameDetailData,
  CodexGameFirstPartners,
  CodexGamePokemon,
  CodexGameVersionExclusives,
} from "@/modules/codex/features/games/detail/types";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import {
  buildGameCards,
  byId,
  resolveTypePair,
  selectAttributesInGeneration,
} from "@/modules/reference/reference-data";
import type {
  Game,
  GameCard,
  GameStarters,
  Generation,
  PokemonTypePair,
  VersionGroup,
} from "@/modules/reference/types";

const fallbackSortOrder = Number.MAX_SAFE_INTEGER;
const RELATED_GAME_LIMIT = 5;

/* Same generation and region first, then same generation, then same region. */
const getRelatedGameSortScore = (versions: Game[], relatedGame: Game) => {
  const sameGeneration = versions.some((version) => {
    return version.generation_id === relatedGame.generation_id;
  });
  const sameRegion = versions.some((version) => {
    return version.region_id === relatedGame.region_id;
  });

  if (sameGeneration && sameRegion) {
    return 0;
  }

  return sameGeneration ? 1 : 2;
};

const sortRelatedGames = (
  versions: Game[],
  generationById: Map<number, Generation>,
  versionGroupById: Map<number, VersionGroup>,
) => {
  return (firstCard: GameCard, secondCard: GameCard) => {
    const getGenerationOrder = (card: GameCard) =>
      generationById.get(card.game.generation_id)?.sort_order ??
      fallbackSortOrder;
    const getVersionGroupOrder = (card: GameCard) =>
      versionGroupById.get(card.game.version_group_id)?.sort_order ??
      fallbackSortOrder;

    return (
      getRelatedGameSortScore(versions, firstCard.game) -
        getRelatedGameSortScore(versions, secondCard.game) ||
      getGenerationOrder(firstCard) - getGenerationOrder(secondCard) ||
      firstCard.game.release_year - secondCard.game.release_year ||
      getVersionGroupOrder(firstCard) - getVersionGroupOrder(secondCard) ||
      firstCard.game.sort_order - secondCard.game.sort_order ||
      firstCard.game.name.localeCompare(secondCard.game.name)
    );
  };
};

const buildPokedexSummaries = (
  rows: GameDetailRows,
): CodexGameDetailData["pokedexes"] => {
  const pokemonCountByPokedexId = getPokedexPokemonCounts(rows.pokedexEntries);

  return rows.pokedexes.map((pokedex) => ({
    pokedex,
    pokemonCount: pokemonCountByPokedexId.get(pokedex.id) ?? 0,
  }));
};

/* The game the version switch picks: the one the address names, else the group's first. */
export const pickGameDetailVersion = (
  versions: Game[],
  versionSlug?: string,
): Game | null => {
  return (
    versions.find((game) => game.slug === versionSlug) ?? versions[0] ?? null
  );
};

/* A Pokémon's entry in this group, with a special form as `?form=`. */
const getEntryHref = (
  versionGroupSlug: string,
  speciesSlug: string,
  form: { isDefault: boolean; slug: string },
) => {
  const href = appRoutes.codexPokemonEntry(versionGroupSlug, speciesSlug);

  return form.isDefault
    ? href
    : `${href}?${new URLSearchParams({ form: form.slug })}`;
};

const toCardTypes = (typePair: PokemonTypePair) => {
  return [typePair.primaryType, typePair.secondaryType].flatMap((type) =>
    type ? [{ name: type.name, slug: type.slug }] : [],
  );
};

export const buildGameFirstPartners = (
  starters: GameStarters | null,
  versionGroupSlug: string,
): CodexGameFirstPartners => {
  return {
    isSolo: starters?.isSolo ?? false,
    pokemon: (starters?.starters ?? []).map((starter) => ({
      href: getEntryHref(versionGroupSlug, starter.speciesSlug, {
        isDefault: starter.isDefaultForm,
        slug: starter.formSlug,
      }),
      imageUrl: starter.imageUrl,
      key: String(starter.formId),
      name: starter.isDefaultForm ? starter.name : starter.formName,
      nationalNumber: starter.nationalNumber,
      types: toCardTypes(starter.typePair),
    })),
  };
};

/* Each game's exclusives as cards, the picked game's column first. */
const buildVersionExclusives = (
  rows: GameDetailRows,
  versions: GameCard[],
  version: GameCard,
): CodexGameVersionExclusives[] => {
  if (versions.length < 2) {
    return [];
  }

  const { attributes, exclusivesByGameId, forms, species, types } =
    rows.versionExclusives;
  const formById = byId(forms);
  const speciesById = byId(species);
  const typeById = byId(types);
  const generation = rows.generations.find(
    (candidate) => candidate.id === rows.versionGroup.generation_id,
  );
  const toPokemon = (formId: number, speciesId: number) => {
    const form = formById.get(formId);
    const speciesRow = speciesById.get(speciesId);

    if (!form || !speciesRow) {
      return [];
    }

    const pokemon: CodexGamePokemon = {
      href: getEntryHref(rows.versionGroup.slug, speciesRow.slug, {
        isDefault: form.is_default,
        slug: form.slug,
      }),
      imageUrl: getPokemonFormImageUrl(form),
      key: String(form.id),
      name: form.is_default ? speciesRow.name : form.name,
      nationalNumber: speciesRow.national_number,
      types: toCardTypes(
        resolveTypePair(
          selectAttributesInGeneration({
            attributes,
            formId: form.id,
            generation,
            generations: rows.generations,
          }),
          typeById,
        ),
      ),
    };

    return [{ formOrder: form.form_order, pokemon }];
  };

  return versions
    .toSorted(
      (first, second) =>
        Number(second.game.id === version.game.id) -
        Number(first.game.id === version.game.id),
    )
    .map((card) => ({
      pokemon: (exclusivesByGameId.get(card.game.id) ?? [])
        .flatMap((exclusive) =>
          toPokemon(exclusive.formId, exclusive.speciesId),
        )
        .toSorted(
          (first, second) =>
            first.pokemon.nationalNumber - second.pokemon.nationalNumber ||
            first.formOrder - second.formOrder,
        )
        .map(({ pokemon }) => pokemon),
      version: card,
    }));
};

export const buildGameDetailData = (
  rows: GameDetailRows,
  versionSlug?: string,
  starters: GameStarters | null = null,
): CodexGameDetailData | null => {
  const cardRows = {
    gamePlatforms: rows.gamePlatforms,
    gameTypes: rows.gameTypes,
    generations: rows.generations,
    platforms: rows.platforms,
    regions: rows.regions,
    versionGroups: rows.versionGroups,
  };
  const versions = buildGameCards({ ...cardRows, games: rows.versions });
  const pickedGame = pickGameDetailVersion(rows.versions, versionSlug);
  const version = versions.find((card) => card.game.id === pickedGame?.id);

  if (!version) {
    return null;
  }

  const generationById = byId(rows.generations);
  const versionGroupById = byId(rows.versionGroups);
  const relatedGames = buildGameCards({ ...cardRows, games: rows.relatedGames })
    .sort(sortRelatedGames(rows.versions, generationById, versionGroupById))
    .slice(0, RELATED_GAME_LIMIT);
  const pokedexes = buildPokedexSummaries({
    ...rows,
    pokedexes: sortVersionGroupPokedexes(rows.pokedexes, versionGroupById),
  });
  return {
    firstPartners: buildGameFirstPartners(starters, rows.versionGroup.slug),
    pokedexes,
    relatedGames,
    version,
    versionExclusives: buildVersionExclusives(rows, versions, version),
    versionGroup: rows.versionGroup,
    versions,
  };
};
