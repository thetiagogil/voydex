import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type { MainlinePlaySettingsData } from "../types";

/*
 * Everything Play settings shows, read as the owner (archived Plays too): the
 * Play's own row, the statuses, the game's optional content (expansions) and which are on, and
 * the challenge rules you can attach with the ones attached.
 */
export const readMainlinePlaySettings = async (
  supabase: ServerSupabaseClient,
  { playId, userId }: { playId: string; userId: string },
): Promise<MainlinePlaySettingsData | null> => {
  const playResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .select(
      "id, name, trainer_name, started_on, playtime_minutes, status_id, game_id, archived_at",
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
      .select("id, name, description")
      .order("name", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_challenge_rules")
      .select("challenge_rule_id")
      .eq("play_id", playId),
  ]);

  if (
    statusesResult.error ||
    scopesResult.error ||
    selectedScopesResult.error ||
    rulesResult.error ||
    selectedRulesResult.error
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
  const selectedRuleIds = (selectedRulesResult.data ?? []).map(
    (link) => link.challenge_rule_id,
  );
  /*
   * Your own rule can share a name with Voydex's or another of yours; the
   * chips show each name once, keeping the one this Play already has.
   */
  const rulesByName = new Map<
    string,
    MainlinePlaySettingsData["rules"][number]
  >();

  for (const rule of (rulesResult.data ?? []).toSorted(
    (left, right) =>
      Number(selectedRuleIds.includes(right.id)) -
      Number(selectedRuleIds.includes(left.id)),
  )) {
    const key = rule.name.trim().toLocaleLowerCase();

    if (!rulesByName.has(key)) {
      rulesByName.set(key, rule);
    }
  }

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
    isArchived: play.archived_at !== null,
    rules: [...rulesByName.values()].toSorted((left, right) =>
      left.name.localeCompare(right.name),
    ),
    selectedExpansionIds: (selectedScopesResult.data ?? []).map(
      (scope) => scope.version_group_id,
    ),
    selectedRuleIds,
    statuses: statusesResult.data ?? [],
  };
};
