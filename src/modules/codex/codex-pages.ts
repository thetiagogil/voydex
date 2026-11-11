import type { Metadata } from "next";

import {
  listPrebuiltFiles,
  readPrebuiltFile,
} from "@/platform/prebuilt-data/prebuilt-files";

/*
 * The Codex pages the build makes ahead of time, from the pre-built files:
 * one per Pokémon (named for search engines), one per game and one per
 * Pokédex. Build time only; the pages draw themselves in the browser.
 */

type BrowsePokemon = {
  name: string;
  nationalNumber: number;
  primaryType: { name: string } | null;
  secondaryType: { name: string } | null;
  slug: string;
};

type RouteRows = {
  games: { slug: string; version_group_id: number }[];
  versionGroups: { id: number; slug: string }[];
};

let browsePokemon: BrowsePokemon[] | null = null;

const readBrowsePokemon = () => {
  browsePokemon ??= readPrebuiltFile<{ pokemon: BrowsePokemon[] }>(
    "pokemon",
  ).pokemon;

  return browsePokemon;
};

/* Every species' page: `/codex/pokemon/{species}`. */
export const getCodexPokemonPageParams = () =>
  readBrowsePokemon().map(({ slug }) => ({ speciesSlug: slug }));

/* A species page's title and description, as search results show them. */
export const getCodexPokemonPageMetadata = (speciesSlug: string): Metadata => {
  const pokemon = readBrowsePokemon().find(({ slug }) => slug === speciesSlug);

  if (!pokemon) return {};

  const number = String(pokemon.nationalNumber).padStart(4, "0");
  const types = [pokemon.primaryType, pokemon.secondaryType]
    .flatMap((type) => (type ? [type.name] : []))
    .join("/");

  return {
    description: `${pokemon.name}, #${number}, ${types} type: where to find it, how it evolves, its moves and forms, in every Pokémon game.`,
    title: `${pokemon.name} · Codex · Voydex`,
  };
};

/*
 * Every game's page: each base version group, and each game's and
 * expansion's own slug, which moves on to its group.
 */
export const getCodexGamePageParams = () => {
  const { games, versionGroups } =
    readPrebuiltFile<RouteRows>("version-groups");

  return [...versionGroups, ...games].map(({ slug }) => ({
    versionGroupSlug: slug,
  }));
};

/*
 * Every Pokédex page of a base version group, under the group's slug and
 * under each of its games' slugs, which move on to the group's.
 */
export const getCodexPokedexPageParams = () => {
  const { games, versionGroups } =
    readPrebuiltFile<RouteRows>("version-groups");

  return listPrebuiltFiles("games").flatMap((groupSlug) => {
    const group = versionGroups.find(({ slug }) => slug === groupSlug);
    const slugs = [
      groupSlug,
      ...games
        .filter((game) => game.version_group_id === group?.id)
        .map(({ slug }) => slug),
    ];

    return listPrebuiltFiles("games", groupSlug).flatMap((pokedexSlug) =>
      slugs.map((versionGroupSlug) => ({ pokedexSlug, versionGroupSlug })),
    );
  });
};
