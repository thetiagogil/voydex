import {
  isFormClass,
  type FormClass,
} from "@/modules/reference/features/pokemon/domain/form-classes";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The class of every non-default form of these species, by form id; a
 * default form has none. A failed read throws.
 */
export const readFormClassById = async (
  supabase: ServerSupabaseClient,
  speciesIds: readonly number[],
): Promise<Map<number, FormClass>> => {
  if (!speciesIds.length) {
    return new Map();
  }

  const result = await supabase
    .schema("reference")
    .from("pokemon_form_rules")
    .select("form_id, form_class, pokemon_forms!inner(species_id)")
    .in("pokemon_forms.species_id", [...speciesIds]);

  if (result.error) {
    throw new Error("Unable to load Pokémon forms.");
  }

  return new Map(
    (result.data ?? []).flatMap((rule) =>
      isFormClass(rule.form_class) ? [[rule.form_id, rule.form_class]] : [],
    ),
  );
};
