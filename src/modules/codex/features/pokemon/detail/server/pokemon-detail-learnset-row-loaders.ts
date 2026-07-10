import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { ResolvedPokemonLearnset } from "@/modules/reference/types";

const POKEMON_DETAIL_LEARNSET_PAGE_SIZE = 1000;

export const loadPokemonDetailLearnsetRows = async (
  supabase: ServerSupabaseClient,
  speciesId: number,
): Promise<ResolvedPokemonLearnset[]> => {
  const rows: ResolvedPokemonLearnset[] = [];
  let from = 0;

  while (true) {
    const to = from + POKEMON_DETAIL_LEARNSET_PAGE_SIZE - 1;
    const result = await supabase
      .schema("views")
      .from("reference_resolved_pokemon_learnsets")
      .select("*")
      .eq("species_id", speciesId)
      .order("target_version_group_id", { ascending: true })
      .order("sort_order", { ascending: true })
      .range(from, to);

    if (result.error) {
      throw new Error("Unable to load Pokemon learnset data.");
    }

    const pageRows = result.data ?? [];

    rows.push(...pageRows);

    if (pageRows.length < POKEMON_DETAIL_LEARNSET_PAGE_SIZE) {
      return rows;
    }

    from += POKEMON_DETAIL_LEARNSET_PAGE_SIZE;
  }
};
