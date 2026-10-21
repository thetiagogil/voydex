import { getRuleOptionKeys } from "@/modules/mainline/shared/data/challenge-rule-options";
import { gatherLibraryUsage } from "@/modules/mainline/features/library/data/library-model";
import type { LibraryPageData } from "@/modules/mainline/features/library/types";
import { readRulePresets } from "@/modules/mainline/shared/server/rule-presets-reader";
import { readPlayTeams } from "@/modules/mainline/shared/server/play-team-reader";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Every rule you can pick (Voydex's and yours) and every tag of yours, with
 * which of your Plays use each, with each Play's team. The links read are your own, so they never
 * include another trainer's Plays.
 */
export const getLibraryPageData = async (): Promise<LibraryPageData> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const [
    kindsResult,
    rulesResult,
    playRulesResult,
    tagsResult,
    playTagsResult,
  ] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rule_types")
      .select("id, name, slug")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rules")
      .select("id, name, description, config, user_id, rule_type_id")
      .order("name", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_challenge_rules")
      .select("challenge_rule_id, play_id"),
    supabase
      .from("tags")
      .select("id, name")
      .eq("user_id", userId)
      .order("name", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_tags")
      .select("tag_id, play_id")
      .eq("user_id", userId),
  ]);

  if (
    kindsResult.error ||
    rulesResult.error ||
    playRulesResult.error ||
    tagsResult.error ||
    playTagsResult.error
  ) {
    throw new Error("Unable to load your Library.");
  }

  const kinds = kindsResult.data ?? [];
  const kindsById = new Map(kinds.map((kind) => [kind.id, kind]));
  const plays = await readPlayTeams(supabase, [
    ...(playRulesResult.data ?? []).map((link) => link.play_id),
    ...(playTagsResult.data ?? []).map((link) => link.play_id),
  ]);
  const ruleUsage = gatherLibraryUsage(
    (playRulesResult.data ?? []).map((link) => ({
      itemId: link.challenge_rule_id,
      playId: link.play_id,
    })),
    plays,
  );
  const tagUsage = gatherLibraryUsage(
    (playTagsResult.data ?? []).map((link) => ({
      itemId: link.tag_id,
      playId: link.play_id,
    })),
    plays,
  );

  const presets = await readRulePresets(
    supabase,
    new Set((rulesResult.data ?? []).map((rule) => rule.id)),
  );

  return {
    kinds,
    presets,
    rules: (rulesResult.data ?? []).flatMap((rule) => {
      const kind = kindsById.get(rule.rule_type_id);

      return kind
        ? [
            {
              ...ruleUsage(rule.id),
              description: rule.description,
              id: rule.id,
              optionKeys: getRuleOptionKeys(rule.config),
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
