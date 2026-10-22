"use server";

import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";

import { getOwnedPlayPokemon } from "./team-member-action-support";
import type { TeamMemberEditorOptions } from "../utils/team-member-editor-model";
import { readTeamMemberEditorOptions } from "./team-member-editor-options-reader";

export type TeamMemberEditorOptionsResult =
  | { options: TeamMemberEditorOptions; status: "success" }
  | { message: string; status: "error" };

/*
 * The editor loads its choices (natures, abilities, items, moves, where it
 * can evolve) when it opens, resolved through the Play's exact game.
 */
export const loadTeamMemberEditorOptionsAction = async ({
  playId,
  playPokemonId,
}: {
  playId: string;
  playPokemonId: string;
}): Promise<TeamMemberEditorOptionsResult> => {
  try {
    const { pokemon, supabase } = await getOwnedPlayPokemon({
      playId,
      playPokemonId,
    });
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
      throw new Error("This Play's game isn't complete enough to edit.");
    }

    const options = await readTeamMemberEditorOptions(supabase, {
      formId: pokemon.form_id,
      gameId: play.game_id,
      generationId: play.generation_id,
      mechanics: resolveGameMechanics({
        gameId: play.game_id,
        generationId: play.generation_id,
        versionGroupId: play.version_group_id,
      }),
      playId,
      speciesId: pokemon.species_id,
      versionGroupId: play.version_group_id,
    });

    return { options, status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to open the editor.",
      status: "error",
    };
  }
};
