import {
  buildSpeciesGenerations,
  type SpeciesGeneration,
} from "@/modules/reference/features/pokemon/data/species-generations";
import { loadPagedReferenceRows } from "@/modules/reference/shared/server/reference-row-loaders";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

type SpeciesGenerationRow = {
  introduced_generation_id: number;
  national_number: number;
};

const ERROR_MESSAGE = "Unable to load the generations' species.";

/*
 * Every generation with the species it introduced (the Collection's album
 * pages). Public reference data; a failed read throws, never reads as no
 * generations.
 */
export const readSpeciesGenerations = async (
  supabase: ServerSupabaseClient,
): Promise<SpeciesGeneration[]> => {
  const reference = supabase.schema("reference");
  const [generationsResult, species] = await Promise.all([
    reference.from("generations").select("id, name, sort_order"),
    loadPagedReferenceRows<SpeciesGenerationRow>(
      (from, to) =>
        reference
          .from("pokemon_species")
          .select("introduced_generation_id, national_number")
          .order("national_number")
          .range(from, to),
      ERROR_MESSAGE,
    ),
  ]);

  if (generationsResult.error) {
    throw new Error(ERROR_MESSAGE);
  }

  return buildSpeciesGenerations(generationsResult.data, species);
};
