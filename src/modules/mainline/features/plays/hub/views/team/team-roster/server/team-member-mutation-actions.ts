"use server";

import {
  gameMechanics,
  resolveGameMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

import { findUnofferedEditorChoice } from "../utils/team-member-editor-model";
import {
  validateUpdateMainlinePlayPokemon,
  type UpdateMainlinePlayPokemonInput,
} from "../utils/team-member-validation";
import {
  getOwnedPlayPokemon,
  revalidateTeamPaths,
  type TeamMemberActionResult,
} from "./team-member-action-support";
import { readTeamMemberEditorOptions } from "./team-member-editor-options-reader";

/*
 * Moves replace the current four in slot order. With no single database
 * function for it, the old moves are written back if the new ones can't be.
 */
const replacePlayPokemonMoves = async (
  supabase: ServerSupabaseClient,
  {
    currentMoves,
    moveIds,
    playPokemonId,
  }: {
    currentMoves: { move_id: number; slot: number }[];
    moveIds: number[];
    playPokemonId: string;
  },
) => {
  /* A fresh builder per request: a builder's filters stay on its URL. */
  const moves = () =>
    supabase.schema("gameplay").from("mainline_play_pokemon_moves");
  const deleteResult = await moves()
    .delete()
    .eq("play_pokemon_id", playPokemonId);

  if (deleteResult.error) {
    throw new Error("Saved, but the moves couldn't be changed.");
  }

  if (!moveIds.length) {
    return;
  }

  const insertResult = await moves().insert(
    moveIds.map((moveId, index) => ({
      move_id: moveId,
      play_pokemon_id: playPokemonId,
      slot: index + 1,
    })),
  );

  if (!insertResult.error) {
    return;
  }

  const restoreResult = currentMoves.length
    ? await moves().insert(
        currentMoves.map((move) => ({
          move_id: move.move_id,
          play_pokemon_id: playPokemonId,
          slot: move.slot,
        })),
      )
    : { error: null };

  if (restoreResult.error) {
    console.error(
      `Play Pokémon ${playPokemonId}: unable to restore its moves after a failed change.`,
    );
    throw new Error(
      "Saved, but its moves couldn't be changed or put back. Check its moves.",
    );
  }

  throw new Error("Saved, but the moves couldn't be changed.");
};

const failure = (error: unknown, fallback: string): TeamMemberActionResult => ({
  message: error instanceof Error ? error.message : fallback,
  status: "error",
});

/*
 * Saves the editor's fields. A mechanic the Play's game doesn't have (a
 * nature before Ruby and Sapphire, say) can't be recorded; moves replace the
 * current four in slot order.
 */
export const updateMainlinePlayPokemonAction = async ({
  changes,
  playId,
  playPokemonId,
}: {
  changes: UpdateMainlinePlayPokemonInput;
  playId: string;
  playPokemonId: string;
}): Promise<TeamMemberActionResult> => {
  try {
    const { pokemon, supabase } = await getOwnedPlayPokemon({
      playId,
      playPokemonId,
    });
    const input = validateUpdateMainlinePlayPokemon(changes);
    const [playResult, currentResult, currentMovesResult] = await Promise.all([
      supabase
        .schema("views")
        .from("mainline_play_summary")
        .select("game_id, generation_id, version_group_id")
        .eq("play_id", playId)
        .maybeSingle(),
      supabase
        .schema("gameplay")
        .from("mainline_play_pokemon")
        .select("ability_id, held_item_id, nature_id")
        .eq("id", playPokemonId)
        .eq("play_id", playId)
        .maybeSingle(),
      supabase
        .schema("gameplay")
        .from("mainline_play_pokemon_moves")
        .select("slot, move_id")
        .eq("play_pokemon_id", playPokemonId)
        .order("slot", { ascending: true }),
    ]);
    const play = playResult.data;

    if (
      playResult.error ||
      !play?.game_id ||
      !play.generation_id ||
      !play.version_group_id
    ) {
      throw new Error("This Play isn't available.");
    }

    if (
      currentResult.error ||
      !currentResult.data ||
      currentMovesResult.error
    ) {
      throw new Error("Unable to read what it has recorded.");
    }

    const mechanics = resolveGameMechanics({
      gameId: play.game_id,
      generationId: play.generation_id,
      versionGroupId: play.version_group_id,
    });
    const refuses = (mechanic: Parameters<typeof supportsGameMechanic>[1]) =>
      !supportsGameMechanic(mechanics, mechanic);

    if (
      (input.natureId !== null && refuses(gameMechanics.natures)) ||
      (input.abilityId !== null && refuses(gameMechanics.abilities)) ||
      (input.heldItemId !== null && refuses(gameMechanics.heldItems)) ||
      (input.gender !== "unknown" && refuses(gameMechanics.pokemonGender))
    ) {
      throw new Error("This game doesn't record that.");
    }

    const currentMoves = currentMovesResult.data ?? [];
    const currentMoveIds = currentMoves.map((move) => move.move_id);
    /* The same choices the editor offered, read for this Pokémon and game. */
    const options = await readTeamMemberEditorOptions(supabase, {
      formId: pokemon.form_id,
      gameId: play.game_id,
      generationId: play.generation_id,
      mechanics,
      speciesId: pokemon.species_id,
      versionGroupId: play.version_group_id,
    });
    const unoffered = findUnofferedEditorChoice(input, options, {
      abilityId: currentResult.data.ability_id,
      heldItemId: currentResult.data.held_item_id,
      moveIds: currentMoveIds,
      natureId: currentResult.data.nature_id,
    });

    if (unoffered) {
      throw new Error(unoffered);
    }

    const updateResult = await supabase
      .schema("gameplay")
      .from("mainline_play_pokemon")
      .update({
        ability_id: input.abilityId,
        ball_item_id: input.ballItemId,
        gender: input.gender,
        held_item_id: input.heldItemId,
        is_shiny: input.isShiny,
        level: input.level,
        met_level: input.metLevel,
        met_location_label: input.metLocation,
        nature_id: input.natureId,
        nickname: input.nickname,
        personal_notes: input.notes,
      })
      .eq("id", playPokemonId)
      .eq("play_id", playId);

    if (updateResult.error) {
      throw new Error("Unable to save those changes.");
    }

    const movesChanged =
      currentMoveIds.length !== input.moveIds.length ||
      currentMoveIds.some((moveId, index) => moveId !== input.moveIds[index]);

    if (movesChanged) {
      await replacePlayPokemonMoves(supabase, {
        currentMoves,
        moveIds: input.moveIds,
        playPokemonId,
      });
    }

    revalidateTeamPaths(playId);

    return { message: "Changes saved", playPokemonId, status: "success" };
  } catch (error) {
    return failure(error, "Unable to save those changes.");
  }
};

/* Evolve: records the evolution and its moment in History. */
export const evolveMainlinePlayPokemonAction = async ({
  playId,
  playPokemonId,
  toFormId,
  toSpeciesId,
}: {
  playId: string;
  playPokemonId: string;
  toFormId: number;
  toSpeciesId: number;
}): Promise<TeamMemberActionResult> => {
  try {
    const { pokemon, supabase } = await getOwnedPlayPokemon({
      playId,
      playPokemonId,
    });
    const edgeResult = await supabase
      .schema("reference")
      .from("pokemon_evolution_edges")
      .select("id")
      .eq("from_form_id", pokemon.form_id)
      .eq("to_form_id", toFormId)
      .eq("to_species_id", toSpeciesId)
      .limit(1);

    if (edgeResult.error || !edgeResult.data?.length) {
      throw new Error("It doesn't evolve into that.");
    }

    const result = await supabase
      .schema("gameplay")
      .rpc("evolve_mainline_play_pokemon", {
        p_play_pokemon_id: playPokemonId,
        p_to_form_id: toFormId,
        p_to_species_id: toSpeciesId,
      });

    if (result.error) {
      throw new Error("Unable to record the evolution.");
    }

    revalidateTeamPaths(playId);

    return { message: "Evolved", playPokemonId, status: "success" };
  } catch (error) {
    return failure(error, "Unable to record the evolution.");
  }
};

/* Change form: another form of the same species, with its moment. */
export const changeMainlinePlayPokemonFormAction = async ({
  playId,
  playPokemonId,
  toFormId,
}: {
  playId: string;
  playPokemonId: string;
  toFormId: number;
}): Promise<TeamMemberActionResult> => {
  try {
    const { pokemon, supabase } = await getOwnedPlayPokemon({
      playId,
      playPokemonId,
    });
    const formResult = await supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("id")
      .eq("id", toFormId)
      .eq("species_id", pokemon.species_id)
      .maybeSingle();

    if (formResult.error || !formResult.data || toFormId === pokemon.form_id) {
      throw new Error("Pick another form of the same Pokémon.");
    }

    const result = await supabase
      .schema("gameplay")
      .rpc("change_mainline_play_pokemon_form", {
        p_play_pokemon_id: playPokemonId,
        p_to_form_id: toFormId,
      });

    if (result.error) {
      throw new Error("Unable to change its form.");
    }

    revalidateTeamPaths(playId);

    return { message: "Form changed", playPokemonId, status: "success" };
  } catch (error) {
    return failure(error, "Unable to change its form.");
  }
};

/* Retire: it leaves the team and the reserve, and History keeps it. */
export const retireMainlinePlayPokemonAction = async ({
  playId,
  playPokemonId,
}: {
  playId: string;
  playPokemonId: string;
}): Promise<TeamMemberActionResult> => {
  try {
    const { supabase } = await getOwnedPlayPokemon({ playId, playPokemonId });
    const result = await supabase
      .schema("gameplay")
      .rpc("retire_mainline_play_pokemon", {
        p_play_pokemon_id: playPokemonId,
      });

    if (result.error) {
      throw new Error("Unable to retire it.");
    }

    revalidateTeamPaths(playId);

    return { message: "Retired", playPokemonId, status: "success" };
  } catch (error) {
    return failure(error, "Unable to retire it.");
  }
};

/*
 * Replace: another species of the Play's Pokédex takes its place (its slot
 * on the team or in reserve), and the one replaced is kept in History.
 */
export const replaceMainlinePlayPokemonAction = async ({
  level,
  nickname,
  playId,
  playPokemonId,
  replacementFormId,
  replacementSpeciesId,
}: {
  level: number | null;
  nickname: string | null;
  playId: string;
  playPokemonId: string;
  replacementFormId: number;
  replacementSpeciesId: number;
}): Promise<TeamMemberActionResult> => {
  try {
    const { supabase } = await getOwnedPlayPokemon({ playId, playPokemonId });
    const entryResult = await supabase
      .schema("views")
      .from("mainline_play_pokedex_detail")
      .select("species_id")
      .eq("play_id", playId)
      .eq("species_id", replacementSpeciesId)
      .limit(1);

    if (entryResult.error || !entryResult.data?.length) {
      throw new Error("That Pokémon isn't in this Play's Pokédex.");
    }

    const changes = validateUpdateMainlinePlayPokemon({
      abilityId: null,
      ballItemId: null,
      gender: "unknown",
      heldItemId: null,
      isShiny: false,
      level,
      metLevel: null,
      metLocation: null,
      moveIds: [],
      natureId: null,
      nickname,
      notes: null,
    });
    const result = await supabase
      .schema("gameplay")
      .rpc("replace_mainline_play_pokemon", {
        p_replaced_play_pokemon_id: playPokemonId,
        p_replacement_form_id: replacementFormId,
        p_replacement_level: changes.level ?? undefined,
        p_replacement_nickname: changes.nickname ?? undefined,
        p_replacement_species_id: replacementSpeciesId,
      });

    if (result.error) {
      throw new Error("Unable to replace it.");
    }

    revalidateTeamPaths(playId);

    return { message: "Replaced", status: "success" };
  } catch (error) {
    return failure(error, "Unable to replace it.");
  }
};

/*
 * Delete record, for mistakes: the Pokémon goes from the Play. Its moments
 * stay in History unless this undoes an add a moment ago, which also takes
 * that add's moment away.
 */
export const removeMainlinePlayPokemonAction = async ({
  addEventId = null,
  playId,
  playPokemonId,
}: {
  addEventId?: string | null;
  playId: string;
  playPokemonId: string;
}): Promise<TeamMemberActionResult> => {
  try {
    if (addEventId !== null && !isUuid(addEventId)) {
      throw new Error("A valid moment is required.");
    }

    const { supabase } = await getOwnedPlayPokemon({ playId, playPokemonId });
    const deleteResult = await supabase
      .schema("gameplay")
      .from("mainline_play_pokemon")
      .delete()
      .eq("id", playPokemonId)
      .eq("play_id", playId);

    if (deleteResult.error) {
      throw new Error("Unable to delete it.");
    }

    revalidateTeamPaths(playId);

    if (addEventId) {
      const eventResult = await supabase
        .schema("gameplay")
        .from("mainline_play_events")
        .delete()
        .eq("id", addEventId)
        .eq("play_id", playId);

      if (eventResult.error) {
        /* The Pokémon is gone; only its "added" moment stayed in History. */
        return {
          message: "Deleted",
          status: "success",
          warning: "Taken off, but its moment is still in History.",
        };
      }
    }

    return { message: "Deleted", status: "success" };
  } catch (error) {
    return failure(error, "Unable to delete it.");
  }
};
