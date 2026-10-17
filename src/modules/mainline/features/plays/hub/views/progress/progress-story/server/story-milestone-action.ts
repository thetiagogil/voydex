"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

export type StoryMilestoneActionIntent =
  | "complete"
  | "decision"
  | "incomplete"
  | "note"
  | "story-moment";

export type StoryMilestoneActionState = {
  message: string | null;
  status: "idle" | "error" | "success";
};

type StoryMilestoneIncompletionResult = {
  affected_milestone_count: number;
};

type StoryMilestoneIncompletionRpc = {
  rpc: (
    functionName: "mark_mainline_play_milestone_incomplete",
    args: {
      p_expected_affected_milestone_ids: number[];
      p_milestone_id: number;
      p_play_id: string;
    },
  ) => PromiseLike<{
    data: StoryMilestoneIncompletionResult[] | null;
    error: { message: string } | null;
  }>;
};

const getRequiredString = (formData: FormData, key: string) => {
  const value = formData.get(key);

  if (typeof value !== "string" || !value.trim()) {
    throw new Error(`${key} is required.`);
  }

  return value.trim();
};

const getRequiredInteger = (formData: FormData, key: string) => {
  const value = Number(getRequiredString(formData, key));

  if (!Number.isInteger(value) || value <= 0) {
    throw new Error(`${key} must be a positive integer.`);
  }

  return value;
};

const getOptionalInteger = (formData: FormData, key: string) => {
  const value = formData.get(key);

  if (value === null || value === "") {
    return null;
  }

  const parsed = Number(value);

  if (!Number.isInteger(parsed) || parsed <= 0) {
    throw new Error(`${key} must be a positive integer.`);
  }

  return parsed;
};

const getRequiredIntegerList = (formData: FormData, key: string) => {
  const values = formData.getAll(key).map((value) => Number(value));

  if (
    !values.length ||
    values.some((value) => !Number.isInteger(value) || value <= 0)
  ) {
    throw new Error(`${key} must contain positive integers.`);
  }

  return [...new Set(values)].sort((first, second) => first - second);
};

const getIntent = (formData: FormData): StoryMilestoneActionIntent => {
  const intent = getRequiredString(formData, "intent");

  if (
    intent !== "complete" &&
    intent !== "decision" &&
    intent !== "incomplete" &&
    intent !== "note" &&
    intent !== "story-moment"
  ) {
    throw new Error("Unknown milestone action.");
  }

  return intent;
};

const getOptionalText = (formData: FormData, key: string) => {
  const value = formData.get(key);

  if (typeof value !== "string") {
    return null;
  }

  const trimmed = value.trim();

  if (trimmed.length > 4000) {
    throw new Error("Milestone notes cannot exceed 4,000 characters.");
  }

  return trimmed || null;
};

export const updateStoryMilestoneAction = async (
  _previousState: StoryMilestoneActionState,
  formData: FormData,
): Promise<StoryMilestoneActionState> => {
  try {
    const playId = getRequiredString(formData, "playId");
    const milestoneId = getRequiredInteger(formData, "milestoneId");
    const intent = getIntent(formData);

    if (!isUuid(playId)) {
      throw new Error("A valid play is required.");
    }

    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);

    if (!claimsResult?.data?.claims?.sub) {
      throw new Error("You must be signed in to update Story progress.");
    }

    const milestoneResult = await supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select(
        "completed_at, completion_event_team_snapshot_count, is_completed, snapshot_policy_slug",
      )
      .eq("play_id", playId)
      .eq("milestone_id", milestoneId)
      .maybeSingle();

    if (milestoneResult.error || !milestoneResult.data) {
      throw new Error("This Story milestone is not available for the Play.");
    }

    if (intent !== "complete" && !milestoneResult.data.is_completed) {
      throw new Error("Complete this milestone before updating its details.");
    }

    if (intent === "incomplete") {
      const expectedAffectedMilestoneIds = getRequiredIntegerList(
        formData,
        "affectedMilestoneId",
      );

      if (!expectedAffectedMilestoneIds.includes(milestoneId)) {
        throw new Error(
          "The milestone correction preview is incomplete. Refresh and try again.",
        );
      }

      // The generated schema types cannot include this local migration until it
      // is applied to a database. Keep the temporary cast scoped to this RPC.
      const gameplaySchema = supabase.schema(
        "gameplay",
      ) as unknown as StoryMilestoneIncompletionRpc;
      const incompleteResult = await gameplaySchema.rpc(
        "mark_mainline_play_milestone_incomplete",
        {
          p_expected_affected_milestone_ids: expectedAffectedMilestoneIds,
          p_milestone_id: milestoneId,
          p_play_id: playId,
        },
      );

      if (incompleteResult.error) {
        throw new Error(incompleteResult.error.message);
      }

      const affectedMilestoneCount =
        incompleteResult.data?.[0]?.affected_milestone_count ??
        expectedAffectedMilestoneIds.length;

      revalidatePath(appRoutes.mainlinePlay(playId));
      revalidatePath(appRoutes.mainlinePlayProgressStory(playId));
      revalidatePath(appRoutes.mainlinePlayHistory(playId));

      return {
        message:
          affectedMilestoneCount === 1
            ? "Milestone marked incomplete."
            : `${affectedMilestoneCount} milestones marked incomplete.`,
        status: "success",
      };
    }

    const decisionOptionId =
      intent === "complete" || intent === "decision"
        ? getOptionalInteger(formData, "decisionOptionId")
        : null;
    const notes =
      intent === "complete" || intent === "note"
        ? getOptionalText(formData, "notes")
        : null;
    const requestedStoryMoment =
      intent === "story-moment" ||
      (intent === "complete" && formData.get("recordStoryMoment") === "true");
    const canRecordSnapshot =
      milestoneResult.data.snapshot_policy_slug !== "none";

    if (requestedStoryMoment && !canRecordSnapshot) {
      throw new Error("This milestone does not support a team snapshot.");
    }

    const completedAt =
      milestoneResult.data.completed_at ?? new Date().toISOString();
    const mutationResult = await supabase
      .schema("gameplay")
      .rpc("complete_mainline_play_milestone", {
        p_completed_at: completedAt,
        p_create_event: requestedStoryMoment,
        p_decision_option_id: decisionOptionId ?? undefined,
        p_include_team_snapshot: requestedStoryMoment,
        p_milestone_id: milestoneId,
        p_play_id: playId,
        p_progress_notes: notes ?? undefined,
        p_replace_decision: intent === "complete" || intent === "decision",
        p_replace_progress_notes: intent === "complete" || intent === "note",
      });

    if (mutationResult.error) {
      throw new Error(mutationResult.error.message);
    }

    revalidatePath(appRoutes.mainlinePlay(playId));
    revalidatePath(appRoutes.mainlinePlayProgressStory(playId));

    if (requestedStoryMoment) {
      revalidatePath(appRoutes.mainlinePlayHistory(playId));
    }

    /* Recording is announced by the page, which knows the milestone's name. */
    return {
      message:
        intent === "complete"
          ? null
          : intent === "note"
            ? "Milestone note updated."
            : intent === "decision"
              ? "Milestone decision updated."
              : milestoneResult.data.completion_event_team_snapshot_count
                ? "Team snapshot updated."
                : "Team snapshot recorded.",
      status: "success",
    };
  } catch (error) {
    return {
      message:
        error instanceof Error
          ? error.message
          : "Unable to update this Story milestone.",
      status: "error",
    };
  }
};
