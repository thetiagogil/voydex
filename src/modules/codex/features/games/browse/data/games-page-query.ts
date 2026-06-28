import { createServerSupabaseClient } from "@/lib/supabase/server";
import type { GamesPageData } from "@/modules/codex/shared/types";
import {
  buildGameCards,
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
