import { createServerSupabaseClient } from "@/lib/supabase/server";
import type {
  Game,
  GameDetailData,
  GamesPageData,
} from "@/modules/codex/shared/types";
import {
  buildGameCards,
  byId,
  byNullableId,
  normalizeSlug,
  resolveReferenceFilter,
} from "@/modules/codex/shared/data/query-utils";

export const getGamesPageData = async (params?: {
  generation?: string | null;
  region?: string | null;
}): Promise<GamesPageData> => {
  const supabase = await createServerSupabaseClient();
  const requestedGeneration = normalizeSlug(params?.generation);
  const requestedRegion = normalizeSlug(params?.region);
  const [
    gamesResult,
    generationsResult,
    regionsResult,
    versionGroupsResult,
    gameTypesResult,
    gamePlatformsResult,
    platformsResult,
  ] = await Promise.all([
    supabase
      .schema("reference")
      .from("games")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("generations")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("regions")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("game_types")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("game_platforms")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("platforms")
      .select("*")
      .order("sort_order", { ascending: true }),
  ]);

  if (
    gamesResult.error ||
    generationsResult.error ||
    regionsResult.error ||
    versionGroupsResult.error ||
    gameTypesResult.error ||
    gamePlatformsResult.error ||
    platformsResult.error
  ) {
    throw new Error("Unable to load games.");
  }

  const generations = generationsResult.data ?? [];
  const regions = regionsResult.data ?? [];
  const selectedGeneration = resolveReferenceFilter(
    generations,
    requestedGeneration,
  );
  const selectedRegion = resolveReferenceFilter(regions, requestedRegion);
  const filteredGames = (gamesResult.data ?? []).filter((game) => {
    if (selectedGeneration && game.generation_id !== selectedGeneration.id) {
      return false;
    }

    if (selectedRegion && game.region_id !== selectedRegion.id) {
      return false;
    }

    return true;
  });

  return {
    filters: {
      generation: selectedGeneration?.slug ?? "",
      region: selectedRegion?.slug ?? "",
    },
    games: buildGameCards({
      games: filteredGames,
      generations,
      regions,
      versionGroups: versionGroupsResult.data ?? [],
      gameTypes: gameTypesResult.data ?? [],
      gamePlatforms: gamePlatformsResult.data ?? [],
      platforms: platformsResult.data ?? [],
    }),
    generations,
    regions,
  };
};

export const getGameDetailData = async (
  slug: string,
): Promise<GameDetailData | null> => {
  const supabase = await createServerSupabaseClient();
  const gameResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .eq("slug", slug)
    .maybeSingle();

  if (gameResult.error) {
    throw new Error("Unable to load game.");
  }

  if (!gameResult.data) {
    return null;
  }

  const game = gameResult.data;
  const [
    generationsResult,
    regionsResult,
    versionGroupsResult,
    gameTypesResult,
    gamePlatformsResult,
    platformsResult,
    pokedexResult,
    contentScopesResult,
    availabilityCountResult,
  ] = await Promise.all([
    supabase.schema("reference").from("generations").select("*"),
    supabase.schema("reference").from("regions").select("*"),
    supabase.schema("reference").from("version_groups").select("*"),
    supabase.schema("reference").from("game_types").select("*"),
    supabase
      .schema("reference")
      .from("game_platforms")
      .select("*")
      .eq("game_id", game.id)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("platforms")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("pokedex")
      .select("*")
      .eq("version_group_id", game.version_group_id)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("game_content_scopes")
      .select("*")
      .eq("game_id", game.id)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("views")
      .from("reference_resolved_pokemon_availability")
      .select("species_id", { count: "exact", head: true })
      .eq("game_id", game.id),
  ]);

  if (
    generationsResult.error ||
    regionsResult.error ||
    versionGroupsResult.error ||
    gameTypesResult.error ||
    gamePlatformsResult.error ||
    platformsResult.error ||
    pokedexResult.error ||
    contentScopesResult.error ||
    availabilityCountResult.error
  ) {
    throw new Error("Unable to load game detail data.");
  }

  const [card] = buildGameCards({
    games: [game],
    generations: generationsResult.data ?? [],
    regions: regionsResult.data ?? [],
    versionGroups: versionGroupsResult.data ?? [],
    gameTypes: gameTypesResult.data ?? [],
    gamePlatforms: gamePlatformsResult.data ?? [],
    platforms: platformsResult.data ?? [],
  });
  const gameById = byNullableId([game as Game]);
  const versionGroupById = byId(versionGroupsResult.data ?? []);

  return {
    ...card,
    pokedexes: pokedexResult.data ?? [],
    contentScopes: (contentScopesResult.data ?? []).map((scope) => ({
      game: gameById.get(scope.game_id) ?? null,
      versionGroup: versionGroupById.get(scope.version_group_id) ?? null,
      isBaseScope: scope.is_base_scope,
    })),
    availablePokemonCount: availabilityCountResult.count ?? 0,
  };
};
