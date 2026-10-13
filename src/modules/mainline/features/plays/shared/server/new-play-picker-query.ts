import type {
  NewPlayExpansion,
  NewPlayPickerData,
} from "@/modules/mainline/features/plays/shared/types";
import { readTrainerDisplayName } from "@/modules/mainline/features/plays/shared/server/trainer-profile-reader";
import {
  readGameShelfGames,
  readGameStartersByGameSlug,
} from "@/modules/reference/features/games/server/game-shelf-reader";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/* Every game's optional content scopes (DLC), by game slug, in the game's order. */
const readExpansionsByGameSlug = async (
  supabase: ServerSupabaseClient,
): Promise<Record<string, NewPlayExpansion[]>> => {
  const reference = supabase.schema("reference");
  const [scopesResult, gamesResult, versionGroupsResult] = await Promise.all([
    reference
      .from("game_content_scopes")
      .select("game_id, sort_order, version_group_id")
      .eq("is_base_scope", false)
      .order("sort_order"),
    reference.from("games").select("id, slug"),
    reference.from("version_groups").select("id, name"),
  ]);

  if (scopesResult.error || gamesResult.error || versionGroupsResult.error) {
    throw new Error("Unable to load the games' expansions.");
  }

  const slugByGameId = new Map(
    gamesResult.data.map((game) => [game.id, game.slug]),
  );
  const nameByVersionGroupId = new Map(
    versionGroupsResult.data.map((group) => [group.id, group.name]),
  );
  const expansions: Record<string, NewPlayExpansion[]> = {};

  for (const scope of scopesResult.data) {
    const gameSlug = slugByGameId.get(scope.game_id);
    const name = nameByVersionGroupId.get(scope.version_group_id);

    if (gameSlug && name) {
      (expansions[gameSlug] ??= []).push({
        name,
        versionGroupId: scope.version_group_id,
      });
    }
  }

  return expansions;
};

/*
 * What the game picker that starts a Play reads (New Play, Home with no
 * Plays): every game's cover, first partners and expansions, and the trainer
 * name a new Play starts with.
 */
export const readNewPlayPickerData = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<NewPlayPickerData> => {
  const [games, startersByGameSlug, expansionsByGameSlug, trainerName] =
    await Promise.all([
      readGameShelfGames(),
      readGameStartersByGameSlug(),
      readExpansionsByGameSlug(supabase),
      readTrainerDisplayName(supabase, userId),
    ]);

  return { expansionsByGameSlug, games, startersByGameSlug, trainerName };
};
