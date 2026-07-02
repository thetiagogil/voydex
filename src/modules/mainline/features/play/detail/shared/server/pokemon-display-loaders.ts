import type { ServerSupabaseClient } from "@/lib/supabase/server";
import type {
  PokemonAttributes,
  PokemonForm,
  Type,
} from "@/modules/codex/shared/types";

export type PokemonDisplayRows = {
  attributes: PokemonAttributes[];
  forms: PokemonForm[];
  types: Type[];
};

export const loadPokemonDisplayRows = async (
  supabase: ServerSupabaseClient,
  formIds: number[],
  generationId: number | null,
): Promise<PokemonDisplayRows> => {
  if (!formIds.length) {
    return {
      attributes: [],
      forms: [],
      types: [],
    };
  }

  const [formsResult, attributesResult, typesResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("*")
      .in("id", formIds),
    supabase
      .schema("reference")
      .from("pokemon_attributes")
      .select("*")
      .in("form_id", formIds)
      .lte("generation_start_id", generationId ?? 99),
    supabase.schema("reference").from("types").select("*"),
  ]);

  if (formsResult.error || attributesResult.error || typesResult.error) {
    throw new Error("Unable to load Pokemon display metadata.");
  }

  return {
    attributes: attributesResult.data ?? [],
    forms: formsResult.data ?? [],
    types: typesResult.data ?? [],
  };
};
