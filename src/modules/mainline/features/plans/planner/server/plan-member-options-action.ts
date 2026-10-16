"use server";

import { z } from "zod";

import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import {
  getLearnableMoveIds,
  readFormLearnsetRows,
  readHeldItemOptions,
  readMoveOptions,
  type BuildMoveOption,
  type BuildOption,
} from "@/modules/mainline/shared/server/build-option-readers";
import {
  gameMechanics,
  resolveVersionGroupMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  parseInput,
  positiveIntegerSchema,
  slugSchema,
} from "@/shared/utils/input-schemas";

export type PlanMemberOptions = {
  /* Empty when the version group has no held items. */
  heldItems: BuildOption[];
  /* What it can learn in every game of the version group. */
  moves: BuildMoveOption[];
};

export type PlanMemberOptionsResult =
  | { options: PlanMemberOptions; status: "success" }
  | { message: string; status: "error" };

const planMemberOptionsInputSchema = z.object({
  formId: positiveIntegerSchema("That Pokémon isn't one Voydex knows."),
  versionGroupSlug: slugSchema("That Pokémon isn't one Voydex knows."),
});

/*
 * The slot sheet loads a planned Pokémon's held items and moves when its
 * build opens. A Plan is for a whole version group, so a move counts only
 * when every game in it teaches it, and held items only when the group's
 * capability profile has them.
 */
export const loadPlanMemberOptionsAction = async (input: {
  formId: number;
  versionGroupSlug: string;
}): Promise<PlanMemberOptionsResult> => {
  try {
    const { formId, versionGroupSlug } = parseInput(
      planMemberOptionsInputSchema,
      input,
    );

    const supabase = await createServerSupabaseClient();

    await getSignedInTrainerId(supabase);

    const groupResult = await supabase
      .schema("reference")
      .from("version_groups")
      .select("id, generation_id, parent_version_group_id")
      .eq("slug", versionGroupSlug)
      .maybeSingle();

    if (groupResult.error) {
      throw new Error("Unable to read the Plan's game.");
    }

    const group = groupResult.data;

    if (!group || group.parent_version_group_id !== null) {
      throw new Error("Pick a game for the Plan.");
    }

    const [gamesResult, learnsets] = await Promise.all([
      supabase
        .schema("reference")
        .from("games")
        .select("id")
        .eq("version_group_id", group.id),
      readFormLearnsetRows(supabase, {
        formId,
        versionGroupId: group.id,
      }),
    ]);

    if (gamesResult.error) {
      throw new Error("Unable to read the Plan's game.");
    }

    const gameIds = (gamesResult.data ?? []).map((game) => game.id);
    const mechanics = resolveVersionGroupMechanics({
      gameIds,
      generationId: group.generation_id,
      versionGroupId: group.id,
    });
    const [heldItems, moves] = await Promise.all([
      supportsGameMechanic(mechanics, gameMechanics.heldItems)
        ? readHeldItemOptions(supabase, group.generation_id)
        : [],
      readMoveOptions(supabase, {
        generationId: group.generation_id,
        moveIds: getLearnableMoveIds(learnsets, gameIds),
      }),
    ]);

    return { options: { heldItems, moves }, status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof Error
          ? error.message
          : "Unable to load its held items and moves.",
      status: "error",
    };
  }
};
