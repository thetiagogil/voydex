import { countLibraryUsage } from "@/modules/mainline/features/library/data/library-model";
import type { LibraryPageData } from "@/modules/mainline/features/library/types";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Every rule you can pick (Voydex's and yours) and every tag of yours, with
 * how many of your Plays and Plans use each. The links read are your own,
 * so the counts never include another trainer's.
 */
export const getLibraryPageData = async (): Promise<LibraryPageData> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const [
    kindsResult,
    rulesResult,
    playRulesResult,
    planRulesResult,
    tagsResult,
    playTagsResult,
    planTagsResult,
  ] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rule_types")
      .select("id, name, slug")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rules")
      .select("id, name, user_id, rule_type_id")
      .order("name", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_challenge_rules")
      .select("challenge_rule_id"),
    supabase
      .schema("planning")
      .from("mainline_team_plan_challenge_rules")
      .select("challenge_rule_id"),
    supabase
      .from("tags")
      .select("id, name")
      .eq("user_id", userId)
      .order("name", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_tags")
      .select("tag_id")
      .eq("user_id", userId),
    supabase
      .schema("planning")
      .from("mainline_team_plan_tags")
      .select("tag_id")
      .eq("user_id", userId),
  ]);

  if (
    kindsResult.error ||
    rulesResult.error ||
    playRulesResult.error ||
    planRulesResult.error ||
    tagsResult.error ||
    playTagsResult.error ||
    planTagsResult.error
  ) {
    throw new Error("Unable to load your Library.");
  }

  const kinds = kindsResult.data ?? [];
  const kindsById = new Map(kinds.map((kind) => [kind.id, kind]));
  const ruleUsage = countLibraryUsage({
    planIds: (planRulesResult.data ?? []).map((link) => link.challenge_rule_id),
    playIds: (playRulesResult.data ?? []).map((link) => link.challenge_rule_id),
  });
  const tagUsage = countLibraryUsage({
    planIds: (planTagsResult.data ?? []).map((link) => link.tag_id),
    playIds: (playTagsResult.data ?? []).map((link) => link.tag_id),
  });

  return {
    kinds,
    rules: (rulesResult.data ?? []).flatMap((rule) => {
      const kind = kindsById.get(rule.rule_type_id);

      return kind
        ? [
            {
              ...ruleUsage(rule.id),
              id: rule.id,
              isBuiltIn: rule.user_id === null,
              kind,
              name: rule.name,
            },
          ]
        : [];
    }),
    tags: (tagsResult.data ?? []).map((tag) => ({
      ...tagUsage(tag.id),
      id: tag.id,
      name: tag.name,
    })),
  };
};
