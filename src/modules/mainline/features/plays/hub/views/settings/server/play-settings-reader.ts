import {
  pickRuleChoicesByName,
  resolveRuleConfig,
  toChallengeRuleChoice,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import { readMainlinePlayCollectiblesAvailability } from "@/modules/mainline/features/plays/hub/server/play-collectibles-availability-reader";
import { readPlayTracking } from "@/modules/mainline/features/plays/hub/server/play-tracking-reader";
import { readRulePresets } from "@/modules/mainline/shared/server/rule-presets-reader";
import { getGameTypes } from "@/modules/reference/features/games/domain/game-types";
import { readTypeIntroductions } from "@/modules/reference/features/games/server/type-introduction-reader";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type { MainlinePlaySettingsData } from "../types";

/*
 * Everything Play settings shows, read as the owner (archived Plays too): the
 * Play's own row, the statuses, the game's optional content (expansions)
 * and which are on, what it tracks, the challenge rules and tags you can attach with the
 * ones attached (and each rule's options), and the types its game has.
 */
export const readMainlinePlaySettings = async (
  supabase: ServerSupabaseClient,
  { playId, userId }: { playId: string; userId: string },
): Promise<MainlinePlaySettingsData | null> => {
  const playResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .select(
      "id, name, trainer_name, started_on, playtime_minutes, status_id, game_id, version_group_id, archived_at",
    )
    .eq("id", playId)
    .eq("user_id", userId)
    .maybeSingle();

  if (playResult.error) {
    throw new Error("Unable to load Play settings.");
  }

  const play = playResult.data;

  if (!play) {
    return null;
  }

  const [
    statusesResult,
    scopesResult,
    selectedScopesResult,
    rulesResult,
    selectedRulesResult,
    tagsResult,
    selectedTagsResult,
    generationResult,
    typeIntroductions,
    tracking,
    hasCollectibles,
  ] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_play_statuses")
      .select("id, name, slug")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("game_content_scopes")
      .select("version_group_id, sort_order")
      .eq("game_id", play.game_id)
      .eq("is_base_scope", false)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_optional_content_scopes")
      .select("version_group_id")
      .eq("play_id", playId),
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rules")
      .select("id, name, description, config, user_id")
      .order("name", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_challenge_rules")
      .select("challenge_rule_id, config_override")
      .eq("play_id", playId)
      .order("created_at", { ascending: true }),
    supabase
      .from("tags")
      .select("id, name")
      .eq("user_id", userId)
      .order("name", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_tags")
      .select("tag_id")
      .eq("play_id", playId),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("generation:generations(sort_order)")
      .eq("id", play.version_group_id)
      .single(),
    readTypeIntroductions(supabase),
    readPlayTracking(supabase, playId),
    readMainlinePlayCollectiblesAvailability(supabase, playId),
  ]);

  if (
    statusesResult.error ||
    scopesResult.error ||
    selectedScopesResult.error ||
    rulesResult.error ||
    selectedRulesResult.error ||
    tagsResult.error ||
    selectedTagsResult.error ||
    generationResult.error
  ) {
    throw new Error("Unable to load Play settings.");
  }

  const scopeIds = (scopesResult.data ?? []).map(
    (scope) => scope.version_group_id,
  );
  const versionGroupsResult = scopeIds.length
    ? await supabase
        .schema("reference")
        .from("version_groups")
        .select("id, name")
        .in("id", scopeIds)
    : null;

  if (versionGroupsResult?.error) {
    throw new Error("Unable to load this game's expansions.");
  }

  const nameById = new Map(
    (versionGroupsResult?.data ?? []).map((group) => [group.id, group.name]),
  );
  const selectedLinks = selectedRulesResult.data ?? [];
  const selectedRuleIds = selectedLinks.map((link) => link.challenge_rule_id);
  const pickableRules = pickRuleChoicesByName(
    (rulesResult.data ?? []).map(toChallengeRuleChoice),
    selectedRuleIds,
  );
  const presets = await readRulePresets(
    supabase,
    new Set(pickableRules.map((rule) => rule.id)),
  );
  const ruleConfigById = new Map(
    (rulesResult.data ?? []).map((rule) => [rule.id, rule.config]),
  );

  return {
    expansions: scopeIds.map((versionGroupId) => ({
      name: nameById.get(versionGroupId) ?? "Expansion",
      versionGroupId,
    })),
    general: {
      name: play.name,
      playtimeMinutes: play.playtime_minutes,
      startedOn: play.started_on,
      statusId: play.status_id,
      trainerName: play.trainer_name,
    },
    hasCollectibles,
    isArchived: play.archived_at !== null,
    presets,
    rules: pickableRules,
    selectedExpansionIds: (selectedScopesResult.data ?? []).map(
      (scope) => scope.version_group_id,
    ),
    selectedRules: selectedLinks.map((link) => ({
      config: resolveRuleConfig(
        ruleConfigById.get(link.challenge_rule_id),
        link.config_override,
      ),
      ruleId: link.challenge_rule_id,
    })),
    selectedTagIds: (selectedTagsResult.data ?? []).map((link) => link.tag_id),
    statuses: statusesResult.data ?? [],
    tags: tagsResult.data ?? [],
    tracking,
    types: getGameTypes(
      typeIntroductions,
      generationResult.data.generation.sort_order,
    ),
  };
};
