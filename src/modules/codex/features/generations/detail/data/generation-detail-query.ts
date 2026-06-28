import { createServerSupabaseClient } from "@/lib/supabase/server";
import { byId } from "@/modules/codex/shared/data/query-utils";
import { getGameCoverImageUrl } from "@/modules/codex/shared/media/game-images";
import type { GenerationDetailData } from "@/modules/codex/shared/types";

export const getGenerationDetailData = async (
  identifier: string,
): Promise<GenerationDetailData | null> => {
  const supabase = await createServerSupabaseClient();
  const numericId = Number(identifier);
  const generationQuery = supabase
    .schema("reference")
    .from("generations")
    .select("*");
  const generationResult = Number.isInteger(numericId)
    ? await generationQuery.eq("id", numericId).maybeSingle()
    : await generationQuery.eq("slug", identifier).maybeSingle();

  if (generationResult.error) {
    throw new Error("Unable to load generation.");
  }

  if (!generationResult.data) {
    return null;
  }

  const generation = generationResult.data;
  const [gamesResult, versionGroupsResult, speciesResult, regionsResult] =
    await Promise.all([
      supabase
        .schema("reference")
        .from("games")
        .select("*")
        .eq("generation_id", generation.id)
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("version_groups")
        .select("*")
        .eq("generation_id", generation.id)
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("*")
        .eq("introduced_generation_id", generation.id)
        .order("national_number", { ascending: true }),
      supabase
        .schema("reference")
        .from("regions")
        .select("*")
        .order("sort_order", { ascending: true }),
    ]);

  if (
    gamesResult.error ||
    versionGroupsResult.error ||
    speciesResult.error ||
    regionsResult.error
  ) {
    throw new Error("Unable to load generation detail data.");
  }

  const regionById = byId(regionsResult.data ?? []);
  const versionGroupById = byId(versionGroupsResult.data ?? []);

  return {
    generation,
    games: (gamesResult.data ?? []).map((game) => ({
      coverImageUrl: getGameCoverImageUrl(game),
      game,
      region: regionById.get(game.region_id) ?? null,
      versionGroup: versionGroupById.get(game.version_group_id) ?? null,
    })),
    versionGroups: versionGroupsResult.data ?? [],
    introducedSpecies: speciesResult.data ?? [],
  };
};
