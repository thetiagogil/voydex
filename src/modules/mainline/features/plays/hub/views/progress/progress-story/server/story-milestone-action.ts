"use server";

import { revalidatePath } from "next/cache";
import { z } from "zod";

import { appRoutes } from "@/config/routes";
import { getStoryMilestoneMoment } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/data/story-milestone-moment";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";
import {
  parseInput,
  positiveIntegerSchema,
} from "@/shared/utils/input-schemas";

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

const requiredTextSchema = (key: string) =>
  z
    .string({ error: `${key} is required.` })
    .trim()
    .min(1, { error: `${key} is required.` });

const positiveIntegerFieldSchema = (key: string) =>
  positiveIntegerSchema(`${key} must be a positive integer.`);

/* The form fields every intent sends. */
const storyMilestoneFormSchema = z.object({
  playId: requiredTextSchema("playId").refine(isUuid, {
    error: "A valid play is required.",
  }),
  milestoneId: requiredTextSchema("milestoneId")
    .transform(Number)
    .pipe(positiveIntegerFieldSchema("milestoneId")),
  intent: requiredTextSchema("intent").pipe(
    z.enum(["complete", "decision", "incomplete", "note", "story-moment"], {
      error: "Unknown milestone action.",
    }),
  ),
});

const decisionOptionIdSchema = z
  .unknown()
  .transform((value) => (value === null || value === "" ? null : Number(value)))
  .pipe(positiveIntegerFieldSchema("decisionOptionId").nullable());

const notesSchema = z
  .unknown()
  .transform((value) => (typeof value === "string" ? value.trim() : ""))
  .pipe(
    z
      .string()
      .max(4000, { error: "Milestone notes cannot exceed 4,000 characters." }),
  )
  .transform((notes) => notes || null);

const affectedMilestoneIdsSchema = z
  .array(z.unknown())
  .transform((values) => values.map(Number))
  .pipe(
    z
      .array(
        positiveIntegerSchema(
          "affectedMilestoneId must contain positive integers.",
        ),
      )
      .min(1, { error: "affectedMilestoneId must contain positive integers." }),
  )
  .transform((ids) =>
    [...new Set(ids)].sort((first, second) => first - second),
  );

export const updateStoryMilestoneAction = async (
  _previousState: StoryMilestoneActionState,
  formData: FormData,
): Promise<StoryMilestoneActionState> => {
  try {
    const { intent, milestoneId, playId } = parseInput(
      storyMilestoneFormSchema,
      {
        intent: formData.get("intent"),
        milestoneId: formData.get("milestoneId"),
        playId: formData.get("playId"),
      },
    );

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
      const expectedAffectedMilestoneIds = parseInput(
        affectedMilestoneIdsSchema,
        formData.getAll("affectedMilestoneId"),
      );

      if (!expectedAffectedMilestoneIds.includes(milestoneId)) {
        throw new Error(
          "The milestone correction preview is incomplete. Refresh and try again.",
        );
      }

      const incompleteResult = await supabase
        .schema("gameplay")
        .rpc("mark_mainline_play_milestone_incomplete", {
          p_expected_affected_milestone_ids: expectedAffectedMilestoneIds,
          p_milestone_id: milestoneId,
          p_play_id: playId,
        });

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
        ? parseInput(decisionOptionIdSchema, formData.get("decisionOptionId"))
        : null;
    const notes =
      intent === "complete" || intent === "note"
        ? parseInput(notesSchema, formData.get("notes"))
        : null;
    const { createMoment, includeTeamSnapshot } = getStoryMilestoneMoment({
      intent,
      recordTeamSnapshot: formData.get("recordStoryMoment") === "true",
    });
    const canRecordSnapshot =
      milestoneResult.data.snapshot_policy_slug !== "none";

    if (includeTeamSnapshot && !canRecordSnapshot) {
      throw new Error("This milestone does not support a team snapshot.");
    }

    const completedAt =
      milestoneResult.data.completed_at ?? new Date().toISOString();
    const mutationResult = await supabase
      .schema("gameplay")
      .rpc("complete_mainline_play_milestone", {
        p_completed_at: completedAt,
        p_create_event: createMoment,
        p_decision_option_id: decisionOptionId ?? undefined,
        p_include_team_snapshot: includeTeamSnapshot,
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

    if (createMoment) {
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
