import type { createServerSupabaseClient } from "@/lib/supabase/server";
import type { Generation } from "@/modules/codex/shared/types";

type ServerSupabaseClient = Awaited<
  ReturnType<typeof createServerSupabaseClient>
>;

type GenerationGameCountRow = {
  generation_id: number;
  id: number;
};

type GenerationSpeciesCountRow = {
  id: number;
  introduced_generation_id: number;
};

export type GenerationsPageRows = {
  games: GenerationGameCountRow[];
  generations: Generation[];
  species: GenerationSpeciesCountRow[];
};

export const loadGenerationsPageRows = async (
  supabase: ServerSupabaseClient,
): Promise<GenerationsPageRows> => {
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

  return {
    games: gamesResult.data ?? [],
    generations: generationsResult.data ?? [],
    species: speciesResult.data ?? [],
  };
};
