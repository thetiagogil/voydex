import {
  gameMechanics,
  resolveGameMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { findUnofferedEditorChoice } from "../utils/team-member-editor-model";
import { readPokemonBuildOptions } from "./pokemon-build-options-reader";

export type AddedBuild = {
  abilityId: number | null;
  heldItemId: number | null;
  /* In slot order; at most four, each once. */
  moveIds: number[];
  natureId: number | null;
};

/*
 * What More details picked, checked as Edit's save is: a mechanic the Play's
 * game doesn't have can't be recorded, nor a choice More details wouldn't
 * offer this form. Nothing picked reads nothing.
 */
export const assertAddedBuildOffered = async (
  supabase: ServerSupabaseClient,
  {
    build,
    formId,
    playId,
  }: { build: AddedBuild; formId: number; playId: string },
) => {
  if (
    build.abilityId === null &&
    build.heldItemId === null &&
    build.natureId === null &&
    !build.moveIds.length
  ) {
    return;
  }

  const playResult = await supabase
    .schema("views")
    .from("mainline_play_summary")
    .select("game_id, generation_id, version_group_id")
    .eq("play_id", playId)
    .maybeSingle();
  const play = playResult.data;

  if (
    playResult.error ||
    !play?.game_id ||
    !play.generation_id ||
    !play.version_group_id
  ) {
    throw new Error("This Play isn't available.");
  }

  const mechanics = resolveGameMechanics({
    gameId: play.game_id,
    generationId: play.generation_id,
    versionGroupId: play.version_group_id,
  });
  const refuses = (mechanic: Parameters<typeof supportsGameMechanic>[1]) =>
    !supportsGameMechanic(mechanics, mechanic);

  if (
    (build.natureId !== null && refuses(gameMechanics.natures)) ||
    (build.abilityId !== null && refuses(gameMechanics.abilities)) ||
    (build.heldItemId !== null && refuses(gameMechanics.heldItems))
  ) {
    throw new Error("This game doesn't record that.");
  }

  const options = await readPokemonBuildOptions(supabase, {
    formId,
    gameId: play.game_id,
    generationId: play.generation_id,
    mechanics,
    playId,
    versionGroupId: play.version_group_id,
  });
  const unoffered = findUnofferedEditorChoice(
    { ...build, teraTypeId: null },
    { ...options, teraTypes: [] },
    { abilityId: null, heldItemId: null, moveIds: [], natureId: null },
  );

  if (unoffered) {
    throw new Error(unoffered);
  }
};
