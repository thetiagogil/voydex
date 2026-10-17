import { insertMainlinePlayEvent } from "@/modules/mainline/features/plays/hub/server/play-event-writer";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import {
  diffIdSets,
  parsePlayGeneralSettings,
  type PlayGeneralSettingsInput,
} from "../utils/play-settings-validation";

export type OwnedPlay = {
  game_id: number;
  id: string;
  status_id: number;
};

/* The signed-in owner's Play, or an error the form can show. */
export const readOwnedPlay = async (
  supabase: ServerSupabaseClient,
  { playId, userId }: { playId: string; userId: string },
): Promise<OwnedPlay> => {
  const playResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .select("id, game_id, status_id")
    .eq("id", playId)
    .eq("user_id", userId)
    .maybeSingle();

  if (playResult.error || !playResult.data) {
    throw new Error("This Play isn't available.");
  }

  return playResult.data;
};

/*
 * General: name, trainer, start day, playtime and status. A status change
 * also joins History, as v3's History shows it.
 */
export const updatePlayGeneralSettings = async (
  supabase: ServerSupabaseClient,
  {
    input,
    play,
    userId,
  }: { input: PlayGeneralSettingsInput; play: OwnedPlay; userId: string },
) => {
  const statusesResult = await supabase
    .schema("gameplay")
    .from("mainline_play_statuses")
    .select("id, name");

  if (statusesResult.error) {
    throw new Error("Unable to read the Play statuses.");
  }

  const statuses = statusesResult.data ?? [];
  const settings = parsePlayGeneralSettings(
    input,
    statuses.map((status) => status.id),
  );
  const updateResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .update(settings)
    .eq("id", play.id)
    .eq("user_id", userId);

  if (updateResult.error) {
    throw new Error(
      updateResult.error.message.includes("completed_not_before_started")
        ? "The start day can't be after the day the Play was completed."
        : "Unable to save these settings.",
    );
  }

  const newStatus = statuses.find((status) => status.id === settings.status_id);

  if (newStatus && settings.status_id !== play.status_id) {
    await insertMainlinePlayEvent(supabase, {
      eventTypeSlug: "status_change",
      originSlug: "recorded_action",
      playId: play.id,
      title: newStatus.name,
    }).catch(() => undefined);
  }
};

/*
 * Expansions you own: the game's optional content scopes this Play tracks.
 * Turning one off hides it; nothing recorded in it is deleted.
 */
export const updatePlayExpansions = async (
  supabase: ServerSupabaseClient,
  { play, versionGroupIds }: { play: OwnedPlay; versionGroupIds: number[] },
) => {
  const [scopesResult, selectedResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("game_content_scopes")
      .select("version_group_id")
      .eq("game_id", play.game_id)
      .eq("is_base_scope", false),
    supabase
      .schema("gameplay")
      .from("mainline_play_optional_content_scopes")
      .select("version_group_id")
      .eq("play_id", play.id),
  ]);

  if (scopesResult.error || selectedResult.error) {
    throw new Error("Unable to read this game's expansions.");
  }

  const allowed = new Set(
    (scopesResult.data ?? []).map((scope) => scope.version_group_id),
  );

  if (versionGroupIds.some((id) => !allowed.has(id))) {
    throw new Error("That expansion isn't part of this game.");
  }

  const { added, removed } = diffIdSets(
    (selectedResult.data ?? []).map((scope) => scope.version_group_id),
    [...new Set(versionGroupIds)],
  );

  if (added.length) {
    const insertResult = await supabase
      .schema("gameplay")
      .from("mainline_play_optional_content_scopes")
      .insert(
        added.map((versionGroupId) => ({
          game_id: play.game_id,
          play_id: play.id,
          version_group_id: versionGroupId,
        })),
      );

    if (insertResult.error) {
      throw new Error("Unable to turn that expansion on.");
    }
  }

  if (removed.length) {
    const deleteResult = await supabase
      .schema("gameplay")
      .from("mainline_play_optional_content_scopes")
      .delete()
      .eq("play_id", play.id)
      .in("version_group_id", removed);

    if (deleteResult.error) {
      throw new Error("Unable to turn that expansion off.");
    }
  }
};

/* Challenge rules: which of the available rules this Play keeps. */
export const updatePlayChallengeRules = async (
  supabase: ServerSupabaseClient,
  { playId, ruleIds }: { playId: string; ruleIds: string[] },
) => {
  const uniqueRuleIds = [...new Set(ruleIds)];
  const [availableResult, selectedResult] = await Promise.all([
    uniqueRuleIds.length
      ? supabase
          .schema("gameplay")
          .from("mainline_challenge_rules")
          .select("id")
          .in("id", uniqueRuleIds)
      : null,
    supabase
      .schema("gameplay")
      .from("mainline_play_challenge_rules")
      .select("challenge_rule_id")
      .eq("play_id", playId),
  ]);

  if (availableResult?.error || selectedResult.error) {
    throw new Error("Unable to read the challenge rules.");
  }

  /* Row-level security only shows Voydex's rules and your own. */
  if ((availableResult?.data ?? []).length !== uniqueRuleIds.length) {
    throw new Error("One of those rules isn't available.");
  }

  const { added, removed } = diffIdSets(
    (selectedResult.data ?? []).map((link) => link.challenge_rule_id),
    uniqueRuleIds,
  );

  if (added.length) {
    const insertResult = await supabase
      .schema("gameplay")
      .from("mainline_play_challenge_rules")
      .insert(
        added.map((challengeRuleId) => ({
          challenge_rule_id: challengeRuleId,
          play_id: playId,
        })),
      );

    if (insertResult.error) {
      throw new Error("Unable to add that rule.");
    }
  }

  if (removed.length) {
    const deleteResult = await supabase
      .schema("gameplay")
      .from("mainline_play_challenge_rules")
      .delete()
      .eq("play_id", playId)
      .in("challenge_rule_id", removed);

    if (deleteResult.error) {
      throw new Error("Unable to remove that rule.");
    }
  }
};

/* Tags: which of your tags this Play wears. */
export const updatePlayTags = async (
  supabase: ServerSupabaseClient,
  {
    playId,
    tagIds,
    userId,
  }: { playId: string; tagIds: string[]; userId: string },
) => {
  const uniqueTagIds = [...new Set(tagIds)];
  const [availableResult, selectedResult] = await Promise.all([
    uniqueTagIds.length
      ? supabase
          .from("tags")
          .select("id")
          .eq("user_id", userId)
          .in("id", uniqueTagIds)
      : null,
    supabase
      .schema("gameplay")
      .from("mainline_play_tags")
      .select("tag_id")
      .eq("play_id", playId),
  ]);

  if (availableResult?.error || selectedResult.error) {
    throw new Error("Unable to read your tags.");
  }

  if ((availableResult?.data ?? []).length !== uniqueTagIds.length) {
    throw new Error("One of those tags isn't available.");
  }

  const { added, removed } = diffIdSets(
    (selectedResult.data ?? []).map((link) => link.tag_id),
    uniqueTagIds,
  );

  if (added.length) {
    const insertResult = await supabase
      .schema("gameplay")
      .from("mainline_play_tags")
      .insert(
        added.map((tagId) => ({
          play_id: playId,
          tag_id: tagId,
          user_id: userId,
        })),
      );

    if (insertResult.error) {
      throw new Error("Unable to add that tag.");
    }
  }

  if (removed.length) {
    const deleteResult = await supabase
      .schema("gameplay")
      .from("mainline_play_tags")
      .delete()
      .eq("play_id", playId)
      .in("tag_id", removed);

    if (deleteResult.error) {
      throw new Error("Unable to remove that tag.");
    }
  }
};

/*
 * Deletes the Play and everything recorded in it (team, Story, Pokédex,
 * History) through the database's cascades. Row-level security keeps it to
 * your own Play; it can't be undone.
 */
export const deleteMainlinePlay = async (
  supabase: ServerSupabaseClient,
  { playId, userId }: { playId: string; userId: string },
) => {
  const deleteResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .delete()
    .eq("id", playId)
    .eq("user_id", userId)
    .select("id");

  if (deleteResult.error || !deleteResult.data?.length) {
    throw new Error("Unable to delete this Play.");
  }
};
