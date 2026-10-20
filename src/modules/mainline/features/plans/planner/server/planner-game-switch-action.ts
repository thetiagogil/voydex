"use server";

import {
  describePlanSwitchLoss,
  fitPlanMembersForSwitch,
  type PlanSwitchChange,
  type PlanSwitchLossNames,
} from "@/modules/mainline/features/plans/planner/data/plan-switch-fit";
import { readPlanGame } from "@/modules/mainline/features/plans/planner/server/plan-game-reader";
import { readPlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/server/plan-member-check-reader";
import { getPlanBuildFields } from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import {
  parsePlanSaveInput,
  PlanSaveInputError,
} from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type { PlanMember } from "@/modules/mainline/features/plans/types";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export type PlannerGameSwitchCheck =
  | {
      /* Each Pokémon that stays but loses part of its build, by name. */
      changed: { lost: string[]; slot: number; speciesId: number }[];
      kept: PlanMember[];
      removedSpeciesIds: number[];
      status: "success";
      versionGroupName: string;
    }
  | { message: string; status: "error" };

/* The names of the abilities, items, natures and moves a switch would lose. */
const readLossNames = async (
  supabase: ServerSupabaseClient,
  changed: PlanSwitchChange[],
): Promise<PlanSwitchLossNames> => {
  const reference = supabase.schema("reference");
  const ids = (pick: (change: PlanSwitchChange) => (number | null)[]) =>
    uniqueNumberIds(changed.flatMap(pick));
  const read = async (
    table: "abilities" | "items" | "moves" | "natures",
    wanted: number[],
  ) => {
    if (!wanted.length) {
      return new Map<number, string>();
    }

    const { data, error } = await reference
      .from(table)
      .select("id, name")
      .in("id", wanted);

    if (error) {
      throw new Error("Unable to read the build's names.");
    }

    return new Map((data ?? []).map((row) => [row.id, row.name]));
  };
  const [abilities, items, moves, natures] = await Promise.all([
    read(
      "abilities",
      ids((change) => [change.loss.abilityId]),
    ),
    read(
      "items",
      ids((change) => [change.loss.heldItemId]),
    ),
    read(
      "moves",
      ids((change) => change.loss.moveIds),
    ),
    read(
      "natures",
      ids((change) => [change.loss.natureId]),
    ),
  ]);

  return { abilities, items, moves, natures };
};

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

    const fit = fitPlanMembersForSwitch(members, rows, fields);
    const names = await readLossNames(supabase, fit.changed);

    return {
      changed: fit.changed.map(({ loss, slot, speciesId }) => ({
        lost: describePlanSwitchLoss(loss, names),
        slot,
        speciesId,
      })),
      kept: fit.kept,
      removedSpeciesIds: fit.removedSpeciesIds,
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
