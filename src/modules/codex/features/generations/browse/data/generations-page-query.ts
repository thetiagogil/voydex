import { createServerSupabaseClient } from "@/lib/supabase/server";
import type {
  GenerationCard,
  GenerationsPageData,
} from "@/modules/codex/shared/types";

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
