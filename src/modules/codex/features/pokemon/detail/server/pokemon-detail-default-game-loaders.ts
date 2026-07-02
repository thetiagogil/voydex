import type { createServerSupabaseClient } from "@/lib/supabase/server";

type ServerSupabaseClient = Awaited<
  ReturnType<typeof createServerSupabaseClient>
>;

type PokemonDetailDefaultGameSpeciesRow = {
  introduced_generation_id: number | null;
};

type PokemonDetailDefaultGameRow = {
  slug: string;
};

export const loadPokemonDetailDefaultGameSpeciesRow = async (
  supabase: ServerSupabaseClient,
  speciesSlug: string,
): Promise<PokemonDetailDefaultGameSpeciesRow | null> => {
  const speciesResult = await supabase
    .schema("reference")
    .from("pokemon_species")
    .select("introduced_generation_id")
    .eq("slug", speciesSlug)
    .maybeSingle();

  if (speciesResult.error) {
    throw new Error("Unable to load Pokemon species.");
  }

  return speciesResult.data;
};

export const loadPokemonDetailDefaultGameRow = async (
  supabase: ServerSupabaseClient,
  generationId: number,
): Promise<PokemonDetailDefaultGameRow | null> => {
  const gamesResult = await supabase
    .schema("reference")
    .from("games")
    .select("slug")
    .eq("generation_id", generationId)
    .order("sort_order", { ascending: true })
    .limit(1);

  if (gamesResult.error) {
    throw new Error("Unable to load default Pokemon detail game.");
  }

  return gamesResult.data?.[0] ?? null;
};
