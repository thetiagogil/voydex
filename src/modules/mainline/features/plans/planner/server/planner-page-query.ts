import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { buildPlannerContext } from "@/modules/mainline/features/plans/planner/data/planner-pool-model";
import {
  buildPlannerVersionGroupOptions,
  getPlannerFamilyIds,
  resolvePlannerVersionGroup,
} from "@/modules/mainline/features/plans/planner/data/planner-version-groups";
import {
  readPlannerCatalogue,
  readPlannerPoolRows,
} from "@/modules/mainline/features/plans/planner/server/planner-pool-reader";
import type {
  PlanGender,
  PlannerPageData,
  SavedPlan,
} from "@/modules/mainline/features/plans/types";
import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

import { toPlanMoveSlots } from "../utils/plan-move-slots";

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
        "linked_play_count, status_slug, team_plan_id, team_plan_name, updated_at, version_group_slug",
      )
      .eq("team_plan_id", planId)
      .eq("user_id", userId)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_team_plan_detail")
      .select(
        "ability_id, gender, held_item_id, moves, nature_id, notes, role_label, slot, target_form_id, target_species_id",
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
              role: member.role_label,
              slot: member.slot,
              speciesId: member.target_species_id,
            },
          ]
        : [],
    ),
    name: summary.team_plan_name ?? "Untitled Plan",
    statusSlug: summary.status_slug,
    updatedAt: summary.updated_at,
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

/*
 * The Team Planner: a saved Plan (by id) or a blank one, read in the
 * version group asked for (`?vg=`), else the Plan's own, else the newest.
 * Null when the Plan doesn't exist or isn't the trainer's.
 */
export const getPlannerPageData = async ({
  planId,
  versionGroupSlug,
}: {
  planId: string | null;
  versionGroupSlug: string | null;
}): Promise<PlannerPageData | null> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const [catalogue, plan, planCount] = await Promise.all([
    readPlannerCatalogue(supabase),
    planId ? readSavedPlan(supabase, userId, planId) : null,
    readPlanCount(supabase, userId),
  ]);

  if (planId && !plan) {
    return null;
  }

  const versionGroups = buildPlannerVersionGroupOptions(catalogue);
  const versionGroup = resolvePlannerVersionGroup(
    catalogue,
    versionGroupSlug ?? plan?.versionGroupSlug ?? null,
    versionGroups,
  );

  if (!versionGroup) {
    throw new Error("Unable to find a game for the Team Planner.");
  }

  const pool = await readPlannerPoolRows(
    supabase,
    getPlannerFamilyIds(catalogue, versionGroup),
    plan?.members.map((member) => member.speciesId) ?? [],
  );

  return {
    context: buildPlannerContext({ catalogue, pool, versionGroup }),
    plan,
    planCount,
    trainerId: userId,
    versionGroups,
  };
};
