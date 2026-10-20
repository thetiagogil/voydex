import {
  buildPlayRuleOverrides,
  type PlayRuleSelection,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import {
  diffIdSets,
  parsePlayGeneralSettings,
  type PlayGeneralSettingsInput,
} from "../utils/play-settings-validation";

/* The rule check's refusal of a type the Play's game doesn't have. */
const isTypeRefusal = (error: { code: string; message: string }) =>
  error.code === "23514" && error.message.startsWith("Type ");

export type OwnedPlay = {
  game_id: number;
  id: string;
};

/* The signed-in owner's Play, or an error the form can show. */
export const readOwnedPlay = async (
  supabase: ServerSupabaseClient,
  { playId, userId }: { playId: string; userId: string },
): Promise<OwnedPlay> => {
  const playResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .select("id, game_id")
    .eq("id", playId)
    .eq("user_id", userId)
    .maybeSingle();

  if (playResult.error || !playResult.data) {
    throw new Error("This Play isn't available.");
  }

  return playResult.data;
};

/*
 * General: name, trainer, start day, playtime and status. One database call
 * saves them and, when the status actually changes, adds its moment to
 * History (titled with the new status) in the same transaction.
 */
export const updatePlayGeneralSettings = async (
  supabase: ServerSupabaseClient,
  { input, play }: { input: PlayGeneralSettingsInput; play: OwnedPlay },
) => {
  const statusesResult = await supabase
    .schema("gameplay")
    .from("mainline_play_statuses")
    .select("id");

  if (statusesResult.error) {
    throw new Error("Unable to read the Play statuses.");
  }

  const settings = parsePlayGeneralSettings(
    input,
    (statusesResult.data ?? []).map((status) => status.id),
  );
  const saveResult = await supabase
    .schema("gameplay")
    .rpc("update_mainline_play_general_settings", {
      p_name: settings.name,
      p_play_id: play.id,
      p_playtime_minutes: settings.playtime_minutes ?? undefined,
      p_started_on: settings.started_on ?? undefined,
      p_status_id: settings.status_id,
      p_trainer_name: settings.trainer_name ?? undefined,
    });

  if (saveResult.error) {
    throw new Error(
      saveResult.error.message.includes("completed_not_before_started")
        ? "The start day can't be after the day the Play was completed."
        : "Unable to save these settings.",
    );
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

/*
 * Challenge rules: which of the available rules this Play keeps, each with
 * its values for the options the rule offers. The database refuses a type
 * the Play's game doesn't have.
 */
export const updatePlayChallengeRules = async (
  supabase: ServerSupabaseClient,
  { playId, rules }: { playId: string; rules: PlayRuleSelection[] },
) => {
  const ruleIds = [...new Set(rules.map((rule) => rule.ruleId))];
  const [availableResult, selectedResult] = await Promise.all([
    ruleIds.length
      ? supabase
          .schema("gameplay")
          .from("mainline_challenge_rules")
          .select("id, name, config")
          .in("id", ruleIds)
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
  const overrides = buildPlayRuleOverrides(availableResult?.data ?? [], rules);

  if (overrides.status === "error") {
    throw new Error(overrides.message);
  }

  const rows = overrides.rows.map((row) => ({
    challenge_rule_id: row.ruleId,
    config_override: row.config,
    play_id: playId,
  }));
  const { removed } = diffIdSets(
    (selectedResult.data ?? []).map((link) => link.challenge_rule_id),
    ruleIds,
  );

  /* Saving the kept rules first means a refused option changes nothing. */
  if (rows.length) {
    const upsertResult = await supabase
      .schema("gameplay")
      .from("mainline_play_challenge_rules")
      .upsert(rows, { onConflict: "play_id,challenge_rule_id" });

    if (upsertResult.error && isTypeRefusal(upsertResult.error)) {
      throw new Error("That type isn't in this Play's game.");
    }

    if (upsertResult.error) {
      throw new Error("Unable to save those rules.");
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
