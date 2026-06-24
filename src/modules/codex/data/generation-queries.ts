import { createServerSupabaseClient } from "@/lib/supabase/server";
import { getGameCoverImageUrl } from "@/modules/codex/media/game-images";
import type {
  GenerationCard,
  GenerationDetailData,
  GenerationsPageData,
} from "@/modules/codex/types";
import { byId } from "@/modules/codex/data/query-utils";

export const getGenerationsPageData =
  async (): Promise<GenerationsPageData> => {
    const supabase = await createServerSupabaseClient();
    const [generationsResult, gamesResult, speciesResult] = await Promise.all([
      supabase
        .schema("reference")
        .from("generations")
        .select("*")
        .order("sort_order", { ascending: true }),
      supabase.schema("reference").from("games").select("id,generation_id"),
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("id,introduced_generation_id"),
    ]);

    if (generationsResult.error || gamesResult.error || speciesResult.error) {
      throw new Error("Unable to load generations.");
    }

    const gamesByGeneration = new Map<number, number>();
    const speciesByGeneration = new Map<number, number>();

    for (const game of gamesResult.data ?? []) {
      gamesByGeneration.set(
        game.generation_id,
        (gamesByGeneration.get(game.generation_id) ?? 0) + 1,
      );
    }

    for (const species of speciesResult.data ?? []) {
      speciesByGeneration.set(
        species.introduced_generation_id,
        (speciesByGeneration.get(species.introduced_generation_id) ?? 0) + 1,
      );
    }

    const generations: GenerationCard[] = (generationsResult.data ?? []).map(
      (generation) => ({
        generation,
        gameCount: gamesByGeneration.get(generation.id) ?? 0,
        speciesCount: speciesByGeneration.get(generation.id) ?? 0,
      }),
    );

    return { generations };
  };

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
