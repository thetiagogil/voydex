import type { LegendaryRarity } from "@/modules/reference/features/pokemon/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/* Every Legendary and Mythical species, by id; a failed read throws. */
export const readLegendarySpecies = async (
  supabase: ServerSupabaseClient,
): Promise<Record<number, LegendaryRarity>> => {
  const result = await supabase
    .schema("reference")
    .from("pokemon_species")
    .select("id, is_legendary, is_mythical")
    .or("is_legendary.eq.true,is_mythical.eq.true");

  if (result.error) {
    throw new Error("Unable to load legendary Pokémon.");
  }

  return Object.fromEntries(
    (result.data ?? []).map((species) => [
      species.id,
      species.is_mythical ? ("Mythical" as const) : ("Legendary" as const),
    ]),
  );
};
