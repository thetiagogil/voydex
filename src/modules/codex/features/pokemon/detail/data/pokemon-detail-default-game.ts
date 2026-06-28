import { createServerSupabaseClient } from "@/lib/supabase/server";

export const getDefaultPokemonDetailGameSlug = async (
  speciesSlug: string,
): Promise<string | null> => {
  const supabase = await createServerSupabaseClient();
  const speciesResult = await supabase
    .schema("reference")
    .from("pokemon_species")
    .select("introduced_generation_id")
    .eq("slug", speciesSlug)
    .maybeSingle();

  if (speciesResult.error) {
    throw new Error("Unable to load Pokémon species.");
  }

  if (!speciesResult.data) {
    return null;
  }

  const gamesResult = await supabase
    .schema("reference")
    .from("games")
    .select("slug")
    .eq("generation_id", speciesResult.data.introduced_generation_id)
    .order("sort_order", { ascending: true })
    .limit(1);

  if (gamesResult.error) {
    throw new Error("Unable to load default Pokémon detail game.");
  }

  return gamesResult.data?.[0]?.slug ?? null;
};
