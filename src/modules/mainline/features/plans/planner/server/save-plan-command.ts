import {
  readPlanGame,
  type PlanGame,
} from "@/modules/mainline/features/plans/planner/server/plan-game-reader";
import { readPlanStatusSlug } from "@/modules/mainline/features/plans/server/plan-status-reader";
import { readPlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/server/plan-member-check-reader";
import {
  clearUnsupportedBuildFields,
  getPlanBuildFields,
} from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import { assertPlanMembersFitVersionGroup } from "@/modules/mainline/features/plans/planner/utils/plan-member-check";
import {
  PlanSaveInputError,
  type PlanSaveInput,
} from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type { PlanMember } from "@/modules/mainline/features/plans/types";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

const saveFailure = "Unable to save the Plan right now.";

/*
 * The members as the version group allows them: choices the group doesn't
 * have (resolved through its capability profile) are cleared, then any
 * Pokémon, form, move, ability, held item or nature it can't have is
 * rejected with the Pokémon's name.
 */
const fitMembersToVersionGroup = async (
  supabase: ServerSupabaseClient,
  game: PlanGame,
  members: PlanMember[],
): Promise<PlanMember[]> => {
  if (!members.length) {
    return members;
  }

  const fields = getPlanBuildFields(
    resolveVersionGroupMechanics({
      gameIds: game.gameIds,
      generationId: game.generationId,
      versionGroupId: game.versionGroupId,
    }),
  );
  const fitted = members.map((member) =>
    clearUnsupportedBuildFields(member, fields),
  );
  const rows = await readPlanMemberCheckRows(supabase, {
    familyVersionGroupIds: [game.versionGroupId, ...game.expansionIds],
    gameIds: game.gameIds,
    generationId: game.generationId,
    members: fitted,
    versionGroupId: game.versionGroupId,
    versionGroupName: game.name,
  });

  assertPlanMembersFitVersionGroup(fitted, rows);

  return fitted;
};

const toMemberRow = (member: PlanMember) => ({
  ability_id: member.abilityId,
  gender: member.gender,
  held_item_id: member.heldItemId,
  /* The four slots in order, null for an empty one. */
  move_ids: member.moveIds,
  nature_id: member.natureId,
  notes: member.notes,
  role_slug: member.role,
  slot: member.slot,
  target_form_id: member.formId,
  target_species_id: member.speciesId,
});

/* An archived Plan is read-only until it's restored. */
const assertPlanNotArchived = async (
  supabase: ServerSupabaseClient,
  planId: string,
) => {
  const statusSlug = await readPlanStatusSlug(supabase, planId).catch(() => {
    throw new Error(saveFailure);
  });

  if (statusSlug === "archived") {
    throw new PlanSaveInputError("Restore this Plan to change it.");
  }
};

/* The database's refusals, in the Planner's words. */
const toSaveError = (error: { code: string; message: string }) => {
  if (error.code === "55000") {
    return new PlanSaveInputError(
      "A Play follows this Plan, so its game stays the same.",
    );
  }

  if (error.code === "23503" && error.message.includes("team_plan_id")) {
    return new PlanSaveInputError("That Plan isn't one of yours.");
  }

  if (error.code === "23505") {
    return new PlanSaveInputError(
      "One of the planned moves can't be saved. Check its moves.",
    );
  }

  /* Expansions are filtered before the call, so a refusal here is ours. */
  if (error.message.startsWith("Version groups ")) {
    return new Error(saveFailure);
  }

  if (error.code === "23503" || error.code === "23514") {
    return new PlanSaveInputError(
      "One of these Pokémon can't be saved in this Plan. Check its build.",
    );
  }

  return new Error(saveFailure);
};

/*
 * Saves a Plan: a new one, or a saved one's name, game, Pokémon and
 * expansions, after checking every Pokémon fits the version group. The
 * Plan row, its Pokémon, their planned moves and its expansions are written
 * in one transaction by `planning.save_mainline_team_plan`, which keeps a
 * saved Plan's game while its version group stays the same and refuses a new
 * version group while a Play follows it.
 */
export const savePlan = async ({
  input,
  supabase,
}: {
  input: PlanSaveInput;
  supabase: ServerSupabaseClient;
}): Promise<{ created: boolean; planId: string }> => {
  if (input.planId) {
    await assertPlanNotArchived(supabase, input.planId);
  }

  const game = await readPlanGame(supabase, input.versionGroupSlug);
  const expansionIds = input.expansionVersionGroupIds.filter((id) =>
    game.expansionIds.includes(id),
  );
  const members = await fitMembersToVersionGroup(supabase, game, input.members);
  const { data, error } = await supabase
    .schema("planning")
    .rpc("save_mainline_team_plan", {
      p_expansion_version_group_ids: expansionIds,
      p_members: members.map(toMemberRow),
      p_name: input.name,
      p_team_plan_id: input.planId ?? undefined,
      p_version_group_id: game.versionGroupId,
    });
  const saved = data?.[0];

  if (error) {
    throw toSaveError(error);
  }

  if (!saved) {
    throw new Error(saveFailure);
  }

  return { created: saved.result_created, planId: saved.result_team_plan_id };
};
