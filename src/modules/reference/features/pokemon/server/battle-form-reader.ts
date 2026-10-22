import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The forms a Pokémon only takes in battle (Megas, Gigantamax, Primals and
 * the like), by id. A Play or Plan member is never stored in one, so pickers
 * leave them out; a failed read throws.
 */
export const readBattleFormIds = async (
  supabase: ServerSupabaseClient,
): Promise<ReadonlySet<number>> => {
  const result = await supabase
    .schema("reference")
    .from("pokemon_form_rules")
    .select("form_id")
    .eq("is_team_selectable", false);

  if (result.error) {
    throw new Error("Unable to load battle forms.");
  }

  return new Set((result.data ?? []).map((rule) => rule.form_id));
};
