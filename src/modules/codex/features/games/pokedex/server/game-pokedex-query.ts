import { notFound, permanentRedirect } from "next/navigation";
import { cache } from "react";

import { appRoutes } from "@/config/routes";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { buildGamePokedexData } from "@/modules/codex/features/games/pokedex/data/game-pokedex-mappers";
import {
  selectGamePokedexAbilityIds,
  selectGamePokedexFormIds,
  selectGamePokedexSpeciesIds,
} from "@/modules/codex/features/games/pokedex/data/game-pokedex-selectors";
import {
  loadGamePokedexAbilities,
  loadGamePokedexAttributes,
  loadGamePokedexBaseRows,
  loadGamePokedexEntries,
  loadGamePokedexForms,
  loadGamePokedexSpecies,
  loadVersionGroupFamilyPokedexes,
} from "@/modules/codex/features/games/pokedex/server/game-pokedex-loaders";
import { getCodexVersionGroupRouteRows } from "@/modules/codex/shared/server/version-group-route-query";
import {
  resolveVersionGroupRoute,
  type VersionGroupRoute,
} from "@/modules/reference/features/games/domain/version-groups";
import type {
  GamePokedexData,
  Pokedex,
  VersionGroup,
} from "@/modules/reference/types";

type GamePokedexRoute =
  | { route: VersionGroupRoute; status: "redirect" }
  | {
      pokedex: Pokedex;
      /* The group's Pokédexes and its expansions'. */
      pokedexes: Pokedex[];
      status: "found";
      versionGroup: VersionGroup;
      versionGroups: VersionGroup[];
    }
  | { status: "not-found" };

/*
 * What a Pokédex address names, from small reads only: the base group and
 * its family's Pokédexes (the Isle of Armor Pokédex is read under Sword and
 * Shield). A game's or an expansion's slug asks for a redirect. Read once per
 * request: the layout and the page share it.
 */
const getGamePokedexRoute = cache(
  async (
    versionGroupSlug: string,
    pokedexSlug: string,
  ): Promise<GamePokedexRoute> => {
    const [supabase, routeRows] = await Promise.all([
      createServerSupabaseClient(),
      getCodexVersionGroupRouteRows(),
    ]);
    const route = resolveVersionGroupRoute(versionGroupSlug, routeRows);

    if (!route) {
      return { status: "not-found" };
    }

    if (!route.isCanonical) {
      return { route, status: "redirect" };
    }

    const pokedexes = await loadVersionGroupFamilyPokedexes(
      supabase,
      route.versionGroup,
      routeRows.versionGroups,
    );
    const pokedex = pokedexes.find((entry) => entry.slug === pokedexSlug);

    return pokedex
      ? {
          pokedex,
          pokedexes,
          status: "found",
          versionGroup: route.versionGroup,
          versionGroups: routeRows.versionGroups,
        }
      : { status: "not-found" };
  },
);

/*
 * Runs in the Pokédex page's layout, before anything streams, so an unknown
 * group or Pokédex is a real 404 and an old game address a real 308. It waits
 * only for the address; the entries load under the page's loading state.
 */
export const ensureGamePokedexRoute = async (
  versionGroupSlug: string,
  pokedexSlug: string,
) => {
  const result = await getGamePokedexRoute(versionGroupSlug, pokedexSlug);

  if (result.status === "not-found") {
    notFound();
  }

  if (result.status === "redirect") {
    permanentRedirect(
      appRoutes.codexVersionGroupPokedex(
        result.route.versionGroup.slug,
        pokedexSlug,
      ),
    );
  }
};

/*
 * One Pokédex of a version group with its entries. Null when the address
 * names no Pokédex of a base group; the layout has already answered those
 * with a 404 or a redirect.
 */
export const getGamePokedexPage = async (
  versionGroupSlug: string,
  pokedexSlug: string,
): Promise<GamePokedexData | null> => {
  const [supabase, route] = await Promise.all([
    createServerSupabaseClient(),
    getGamePokedexRoute(versionGroupSlug, pokedexSlug),
  ]);

  if (route.status !== "found") {
    return null;
  }

  const [baseRows, entries] = await Promise.all([
    loadGamePokedexBaseRows(supabase, route.versionGroup),
    loadGamePokedexEntries(supabase, route.pokedex.id),
  ]);
  const speciesIds = selectGamePokedexSpeciesIds(entries);
  const [species, forms] = await Promise.all([
    loadGamePokedexSpecies(supabase, speciesIds),
    loadGamePokedexForms(supabase, speciesIds),
  ]);
  const formIds = selectGamePokedexFormIds({ entries, forms });
  const attributes = await loadGamePokedexAttributes(supabase, formIds);
  const abilities = await loadGamePokedexAbilities(
    supabase,
    selectGamePokedexAbilityIds(attributes),
  );

  return buildGamePokedexData({
    abilities,
    attributes,
    entries,
    forms,
    games: baseRows.games,
    generations: baseRows.generations,
    pokedex: route.pokedex,
    pokedexes: route.pokedexes,
    species,
    types: baseRows.types,
    versionGroupById: new Map(
      route.versionGroups.map((versionGroup) => [
        versionGroup.id,
        versionGroup,
      ]),
    ),
    versionGroup: route.versionGroup,
  });
};
