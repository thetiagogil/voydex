import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The form whose learnset a form uses in a version group: its own, or,
 * with none recorded there, its species' default (a Vivillon pattern or
 * Original Color Magearna learns what the default learns). A failed read
 * throws.
 */
export const readLearnsetFormId = async (
  supabase: ServerSupabaseClient,
  { formId, versionGroupId }: { formId: number; versionGroupId: number },
): Promise<number> => {
  const [ownResult, formResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_learnsets")
      .select("id")
      .eq("form_id", formId)
      .eq("version_group_id", versionGroupId)
      .limit(1),
    supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("species_id, is_default")
      .eq("id", formId)
      .maybeSingle(),
  ]);

  if (ownResult.error || formResult.error) {
    throw new Error("Unable to load its moves.");
  }

  if (
    ownResult.data?.length ||
    !formResult.data ||
    formResult.data.is_default
  ) {
    return formId;
  }

  const defaultResult = await supabase
    .schema("reference")
    .from("pokemon_forms")
    .select("id")
    .eq("species_id", formResult.data.species_id)
    .eq("is_default", true)
    .maybeSingle();

  if (defaultResult.error) {
    throw new Error("Unable to load its moves.");
  }

  return defaultResult.data?.id ?? formId;
};
