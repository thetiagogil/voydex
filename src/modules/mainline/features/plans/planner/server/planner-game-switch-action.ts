"use server";

import {
  fitPlanMembersForSwitch,
  type PlanSwitchFit,
} from "@/modules/mainline/features/plans/planner/data/plan-switch-fit";
import { readPlanGame } from "@/modules/mainline/features/plans/planner/server/plan-game-reader";
import { readPlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/server/plan-member-check-reader";
import { getPlanBuildFields } from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import {
  parsePlanSaveInput,
  PlanSaveInputError,
} from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type PlannerGameSwitchCheck =
  | (PlanSwitchFit & { status: "success"; versionGroupName: string })
  | { message: string; status: "error" };

/*
 * Before the Planner switches game: the team as the new game can have it
 * (its expansions' Pokédexes included), which Pokémon would leave and which
 * would lose part of their build, so the switch can say so first.
 */
export const checkPlannerGameSwitchAction = async (input: {
  members: unknown;
  versionGroupSlug: unknown;
}): Promise<PlannerGameSwitchCheck> => {
  try {
    /* The same checks a save makes on the Pokémon and the game. */
    const { members, versionGroupSlug } = parsePlanSaveInput({
      expansionVersionGroupIds: [],
      members: input.members,
      name: "Game switch",
      planId: null,
      versionGroupSlug: input.versionGroupSlug,
    });
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);

    if (!claimsResult?.data?.claims?.sub) {
      throw new PlanSaveInputError("Log in to plan a team.");
    }

    const game = await readPlanGame(supabase, versionGroupSlug);
    const rows = await readPlanMemberCheckRows(supabase, {
      familyVersionGroupIds: [game.versionGroupId, ...game.expansionIds],
      gameIds: game.gameIds,
      generationId: game.generationId,
      members,
      versionGroupId: game.versionGroupId,
      versionGroupName: game.name,
    });
    const fields = getPlanBuildFields(
      resolveVersionGroupMechanics({
        gameIds: game.gameIds,
        generationId: game.generationId,
        versionGroupId: game.versionGroupId,
      }),
    );

    return {
      ...fitPlanMembersForSwitch(members, rows, fields),
      status: "success",
      versionGroupName: game.name,
    };
  } catch (error) {
    return {
      message:
        error instanceof PlanSaveInputError
          ? error.message
          : "Unable to check that game right now. Try again.",
      status: "error",
    };
  }
};
