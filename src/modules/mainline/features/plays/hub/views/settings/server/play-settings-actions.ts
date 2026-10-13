"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { insertMainlinePlayEvent } from "@/modules/mainline/features/plays/hub/server/play-event-writer";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

import {
  diffIdSets,
  parsePlayGeneralSettings,
  type PlayGeneralSettingsInput,
} from "../utils/play-settings-validation";

export type PlaySettingsActionResult = {
  message: string;
  status: "error" | "success";
};

const success = (message: string): PlaySettingsActionResult => ({
  message,
  status: "success",
});

const failure = (
  error: unknown,
  fallback: string,
): PlaySettingsActionResult => ({
  message: error instanceof Error ? error.message : fallback,
  status: "error",
});

/* The owner's client and the Play's game, or an error the form can show. */
const getOwnedPlay = async (playId: string) => {
  if (!isUuid(playId)) {
    throw new Error("A valid Play is required.");
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("You must be logged in to change Play settings.");
  }

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

  return { play: playResult.data, supabase, userId };
};

const revalidatePlay = (playId: string) => {
  revalidatePath(appRoutes.mainlinePlay(playId), "layout");
  revalidatePath(appRoutes.mainlinePlays);
};

/*
 * General: name, trainer, start day, playtime and status. A status change
 * also joins History, as v3's History shows it.
 */
export const updatePlayGeneralSettingsAction = async ({
  input,
  playId,
}: {
  input: PlayGeneralSettingsInput;
  playId: string;
}): Promise<PlaySettingsActionResult> => {
  try {
    const { play, supabase, userId } = await getOwnedPlay(playId);
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
      .eq("id", playId)
      .eq("user_id", userId);

    if (updateResult.error) {
      throw new Error(
        updateResult.error.message.includes("completed_not_before_started")
          ? "The start day can't be after the day the Play was completed."
          : "Unable to save these settings.",
      );
    }

    const newStatus = statuses.find(
      (status) => status.id === settings.status_id,
    );

    if (newStatus && settings.status_id !== play.status_id) {
      await insertMainlinePlayEvent(supabase, {
        eventTypeSlug: "status_change",
        originSlug: "recorded_action",
        playId,
        title: newStatus.name,
      }).catch(() => undefined);
    }

    revalidatePlay(playId);

    return success("General settings saved");
  } catch (error) {
    return failure(error, "Unable to save these settings.");
  }
};

/*
 * Expansions you own: the game's optional content scopes this Play tracks.
 * Turning one off hides it; nothing recorded in it is deleted.
 */
export const updatePlayExpansionsAction = async ({
  playId,
  versionGroupIds,
}: {
  playId: string;
  versionGroupIds: number[];
}): Promise<PlaySettingsActionResult> => {
  try {
    if (
      !Array.isArray(versionGroupIds) ||
      versionGroupIds.some((id) => !Number.isInteger(id) || id <= 0)
    ) {
      throw new Error("Pick expansions from the list.");
    }

    const { play, supabase } = await getOwnedPlay(playId);
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
        .eq("play_id", playId),
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
            play_id: playId,
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
        .eq("play_id", playId)
        .in("version_group_id", removed);

      if (deleteResult.error) {
        throw new Error("Unable to turn that expansion off.");
      }
    }

    revalidatePlay(playId);

    return success("Tracking saved");
  } catch (error) {
    return failure(error, "Unable to save tracking.");
  }
};

/* Challenge rules: which of the available rules this Play keeps. */
export const updatePlayChallengeRulesAction = async ({
  playId,
  ruleIds,
}: {
  playId: string;
  ruleIds: string[];
}): Promise<PlaySettingsActionResult> => {
  try {
    if (!Array.isArray(ruleIds) || ruleIds.some((id) => !isUuid(id))) {
      throw new Error("Pick rules from the list.");
    }

    const { supabase } = await getOwnedPlay(playId);
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

    revalidatePlay(playId);

    return success("Challenge rules saved");
  } catch (error) {
    return failure(error, "Unable to save the challenge rules.");
  }
};

/*
 * Deletes the Play and everything recorded in it (team, Story, Pokédex,
 * History) through the database's cascades. Row-level security keeps it to
 * your own Play; it can't be undone.
 */
export const deletePlayAction = async ({
  playId,
}: {
  playId: string;
}): Promise<PlaySettingsActionResult> => {
  try {
    const { supabase, userId } = await getOwnedPlay(playId);
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

    revalidatePath(appRoutes.mainlinePlays);
    revalidatePath(appRoutes.mainline);

    return success("Play deleted");
  } catch (error) {
    return failure(error, "Unable to delete this Play.");
  }
};
