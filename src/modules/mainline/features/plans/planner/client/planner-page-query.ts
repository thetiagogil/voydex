import { getSignedInTrainerId } from "@/modules/mainline/shared/client/signed-in-trainer";
import {
  plannerFiles,
  type PlannerGameFile,
  type PlannerGamesFile,
} from "@/modules/mainline/features/plans/planner/planner-files";
import type {
  PlanGender,
  PlannerPageData,
  SavedPlan,
} from "@/modules/mainline/features/plans/types";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";
import { fetchPrebuiltData } from "@/platform/prebuilt-data/use-prebuilt-data";
import { type ServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

import { toPlanMoveSlots } from "../utils/plan-move-slots";
import type { MainlinePageRead } from "@/modules/mainline/shared/client/use-local-page-data";

const toGender = (value: string | null): PlanGender | null =>
  value === "female" || value === "male" || value === "genderless"
    ? value
    : null;

/* A saved Plan of the trainer's, or null when there is none by that id. */
const readSavedPlan = async (
  supabase: ServerSupabaseClient,
  userId: string,
  planId: string,
): Promise<SavedPlan | null> => {
  if (!isUuid(planId)) {
    return null;
  }

  const [summaryResult, membersResult, scopesResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_team_plan_summary")
      .select(
        "game_slug, is_either_version, linked_play_count, status_slug, team_plan_id, team_plan_name, updated_at, version_group_slug",
      )
      .eq("team_plan_id", planId)
      .eq("user_id", userId)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_team_plan_detail")
      .select(
        "ability_id, gender, held_item_id, moves, nature_id, notes, slot, target_form_id, target_species_id",
      )
      .eq("team_plan_id", planId)
      .order("slot"),
    supabase
      .schema("planning")
      .from("mainline_team_plan_optional_content_scopes")
      .select("version_group_id")
      .eq("team_plan_id", planId),
  ]);

  if (summaryResult.error || membersResult.error || scopesResult.error) {
    throw new Error("Unable to load this Plan.");
  }

  const summary = summaryResult.data;

  if (!summary?.team_plan_id || !summary.version_group_slug) {
    return null;
  }

  return {
    expansionVersionGroupIds: (scopesResult.data ?? []).map(
      (scope) => scope.version_group_id,
    ),
    id: summary.team_plan_id,
    linkedPlayCount: summary.linked_play_count ?? 0,
    members: (membersResult.data ?? []).flatMap((member) =>
      member.slot !== null &&
      member.target_species_id !== null &&
      member.target_form_id !== null
        ? [
            {
              abilityId: member.ability_id,
              formId: member.target_form_id,
              gender: toGender(member.gender),
              heldItemId: member.held_item_id,
              moveIds: toPlanMoveSlots(member.moves),
              natureId: member.nature_id,
              notes: member.notes,
              slot: member.slot,
              speciesId: member.target_species_id,
            },
          ]
        : [],
    ),
    name: summary.team_plan_name ?? "Untitled Plan",
    statusSlug: summary.status_slug,
    updatedAt: summary.updated_at,
    versionGameSlug:
      summary.is_either_version === false ? summary.game_slug : null,
    versionGroupSlug: summary.version_group_slug,
  };
};

const readPlanCount = async (
  supabase: ServerSupabaseClient,
  userId: string,
) => {
  const { count, error } = await supabase
    .schema("planning")
    .from("mainline_team_plans")
    .select("id", { count: "exact", head: true })
    .eq("user_id", userId);

  if (error) {
    throw new Error("Unable to count your Plans.");
  }

  return count ?? 0;
};

type PlannerPageInput = {
  planId: string | null;
  versionGroupSlug: string | null;
};

const readPlannerFile = async <Data>(path: string | null) => {
  const data = await fetchPrebuiltData<Data>(path);

  if (!data) throw new Error("Unable to find a game for the Team Planner.");

  return data;
};

/*
 * The Team Planner: a saved Plan (by id) or a blank one, read in the
 * version group asked for (`?vg=`), else the Plan's own, else the newest.
 * The game's Pokémon come from its pre-built file, so nothing waits on the
 * game's download (the page starts it in the background). Null when the
 * Plan doesn't exist or isn't the trainer's.
 */
export const getPlannerPageData = async ({
  planId,
  versionGroupSlug,
}: PlannerPageInput): Promise<PlannerPageData | null> => {
  const supabase = await getLocalQueryClient();
  const userId = await getSignedInTrainerId(supabase);
  const [games, plan, planCount] = await Promise.all([
    readPlannerFile<PlannerGamesFile>(plannerFiles.games()),
    planId ? readSavedPlan(supabase, userId, planId) : null,
    readPlanCount(supabase, userId),
  ]);

  if (planId && !plan) {
    return null;
  }

  const slug =
    games.baseSlugBySlug[versionGroupSlug ?? plan?.versionGroupSlug ?? ""] ??
    games.versionGroups[0]?.slug;
  const { context } = await readPlannerFile<PlannerGameFile>(
    slug ? plannerFiles.game(slug) : null,
  );

  return {
    context,
    plan,
    planCount,
    trainerId: userId,
    versionGroups: games.versionGroups,
  };
};

/* The Team Planner's read: a saved Plan, or a blank one on a game. */
export const plannerPageRead = (
  input: PlannerPageInput,
): MainlinePageRead<PlannerPageData> => ({
  key: `planner:${input.planId ?? "new"}:${input.versionGroupSlug ?? ""}`,
  read: () => getPlannerPageData(input),
});
