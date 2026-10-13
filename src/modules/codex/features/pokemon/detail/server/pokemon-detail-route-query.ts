import { notFound, permanentRedirect, redirect } from "next/navigation";

import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";
import { getCodexVersionGroupRouteRows } from "@/modules/codex/shared/server/version-group-route-query";
import {
  getFirstFoundBaseVersionGroup,
  matchesSlugOrId,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope-defaults";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import {
  resolveVersionGroupRoute,
  type VersionGroupRouteRows,
} from "@/modules/reference/features/games/domain/version-groups";
import type { Generation } from "@/modules/reference/types";

type PokemonDetailRouteSpecies = {
  generations: Pick<Generation, "id" | "slug" | "sort_order">[];
  id: number;
  introducedGenerationId: number;
};

/* The legacy query of `/codex/pokemon/{species}`, from before entries had a group in the path. */
export type PokemonDetailLegacyScope = {
  game?: string;
  generation?: string;
  versionGroup?: string;
};

/* What an entry's address needs about the species: two small reads, not the entry. */
const loadPokemonDetailRouteSpecies = async (
  supabase: ServerSupabaseClient,
  speciesSlug: string,
): Promise<PokemonDetailRouteSpecies | null> => {
  const [speciesResult, generationsResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_species")
      .select("id, introduced_generation_id")
      .eq("slug", speciesSlug)
      .maybeSingle(),
    supabase
      .schema("reference")
      .from("generations")
      .select("id, slug, sort_order"),
  ]);

  if (speciesResult.error || generationsResult.error) {
    throw new Error("Unable to load Pokémon species.");
  }

  if (!speciesResult.data) {
    return null;
  }

  return {
    generations: generationsResult.data ?? [],
    id: speciesResult.data.id,
    introducedGenerationId: speciesResult.data.introduced_generation_id,
  };
};

/* Whether the species exists by a generation: introduced in it or before. */
const existsInGeneration = (
  species: PokemonDetailRouteSpecies,
  generationId: number,
) => {
  const getGenerationOrder = (id: number) =>
    species.generations.find((generation) => generation.id === id)
      ?.sort_order ?? id;

  return (
    getGenerationOrder(generationId) >=
    getGenerationOrder(species.introducedGenerationId)
  );
};

/*
 * Where a generation opens for this species, as its generation pill does:
 * the first base group it can be found in, else the first group. Reads only
 * the species' availability rows that target the generation, as group ids.
 */
const getFoundVersionGroupSlug = async (
  supabase: ServerSupabaseClient,
  species: PokemonDetailRouteSpecies,
  generationId: number,
  { versionGroups }: VersionGroupRouteRows,
) => {
  const { data, error } = await supabase
    .schema("views")
    .from("reference_resolved_pokemon_availability")
    .select("source_version_group_id, target_version_group_id")
    .eq("species_id", species.id)
    .in(
      "target_version_group_id",
      versionGroups
        .filter((versionGroup) => versionGroup.generation_id === generationId)
        .map((versionGroup) => versionGroup.id),
    );

  if (error) {
    throw new Error("Unable to load where the Pokémon can be found.");
  }

  return (
    getFirstFoundBaseVersionGroup({
      availability: data ?? [],
      generationId,
      versionGroups,
    })?.slug ?? null
  );
};

/*
 * Where `/codex/pokemon/{species}` opens: the group a legacy `?game=` or
 * `?versionGroup=` names, else the generation a legacy `?generation=` names,
 * when the species exists there; otherwise the generation it was introduced
 * in. A generation opens its first group the species can be found in (Legends:
 * Arceus for Wyrdeer). Null for an unknown species.
 */
export const getDefaultPokemonDetailVersionGroupSlug = async (
  speciesSlug: string,
  legacyScope: PokemonDetailLegacyScope = {},
): Promise<string | null> => {
  const supabase = await createServerSupabaseClient();
  const [routeRows, species] = await Promise.all([
    getCodexVersionGroupRouteRows(),
    loadPokemonDetailRouteSpecies(supabase, speciesSlug),
  ]);

  if (!species) {
    return null;
  }

  const requestedRoute = [legacyScope.game, legacyScope.versionGroup]
    .map((slug) => (slug ? resolveVersionGroupRoute(slug, routeRows) : null))
    .find((route) => route !== null);

  if (
    requestedRoute &&
    existsInGeneration(species, requestedRoute.versionGroup.generation_id)
  ) {
    return requestedRoute.versionGroup.slug;
  }

  const requestedGeneration = species.generations.find((generation) => {
    return matchesSlugOrId(generation, legacyScope.generation);
  });

  return getFoundVersionGroupSlug(
    supabase,
    species,
    requestedGeneration && existsInGeneration(species, requestedGeneration.id)
      ? requestedGeneration.id
      : species.introducedGenerationId,
    routeRows,
  );
};

/*
 * Runs in the entry's layout, before anything streams: an unknown group or
 * species is a real 404, a game's or an expansion's old address a real 308
 * to its base group, and a group from before the species existed sends you
 * to its introduced generation's first group it can be found in. (A layout
 * has no search params, so a redirect from an old address opens the default
 * form.)
 */
export const ensurePokemonDetailEntryRoute = async (
  versionGroupSlug: string,
  speciesSlug: string,
) => {
  const supabase = await createServerSupabaseClient();
  const [routeRows, species] = await Promise.all([
    getCodexVersionGroupRouteRows(),
    loadPokemonDetailRouteSpecies(supabase, speciesSlug),
  ]);
  const route = resolveVersionGroupRoute(versionGroupSlug, routeRows);

  if (!route || !species) {
    notFound();
  }

  if (!route.isCanonical) {
    permanentRedirect(
      getPokemonDetailScopeHref(speciesSlug, {
        versionGroup: route.versionGroup.slug,
      }),
    );
  }

  if (!existsInGeneration(species, route.versionGroup.generation_id)) {
    const introducedVersionGroupSlug = await getFoundVersionGroupSlug(
      supabase,
      species,
      species.introducedGenerationId,
      routeRows,
    );

    if (!introducedVersionGroupSlug) {
      notFound();
    }

    redirect(
      getPokemonDetailScopeHref(speciesSlug, {
        versionGroup: introducedVersionGroupSlug,
      }),
    );
  }
};
