import {
  buildRulePresets,
  type RulePreset,
} from "@/modules/mainline/shared/data/rule-presets";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The presets you can pick (Voydex's and yours; row-level security shows no
 * one else's), each with its rules in order, keeping only `pickableRuleIds`.
 */
export const readRulePresets = async (
  supabase: ServerSupabaseClient,
  pickableRuleIds: ReadonlySet<string>,
): Promise<RulePreset[]> => {
  const [presetsResult, linksResult] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rule_sets")
      .select("id, name, description, user_id"),
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rule_set_rules")
      .select("rule_set_id, challenge_rule_id, sort_order"),
  ]);

  if (presetsResult.error || linksResult.error) {
    throw new Error("Unable to read the presets.");
  }

  return buildRulePresets(
    presetsResult.data ?? [],
    linksResult.data ?? [],
    pickableRuleIds,
  );
};
