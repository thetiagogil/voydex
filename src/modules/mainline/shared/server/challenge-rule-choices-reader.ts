import {
  pickRuleChoicesByName,
  toChallengeRuleChoice,
  type ChallengeRuleChoice,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The challenge rules you can pick for a new Play: Voydex's own and yours
 * (row-level security shows no one else's), each name once.
 */
export const readChallengeRuleChoices = async (
  supabase: ServerSupabaseClient,
): Promise<ChallengeRuleChoice[]> => {
  const { data, error } = await supabase
    .schema("gameplay")
    .from("mainline_challenge_rules")
    .select("id, name, description, config, user_id");

  if (error) {
    throw new Error("Unable to read the challenge rules.");
  }

  return pickRuleChoicesByName((data ?? []).map(toChallengeRuleChoice));
};
