import { createServerSupabaseClient } from "@/lib/supabase/server";
import {
  buildGameCards,
  byId,
  byNullableId,
} from "@/modules/codex/shared/data/query-utils";
import type { Game, GameDetailData } from "@/modules/codex/shared/types";

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
