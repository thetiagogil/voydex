import {
  gameMechanics,
  resolveGameMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { findUnofferedEditorChoice } from "../utils/team-member-editor-model";
import type { UpdateMainlinePlayPokemonInput } from "../utils/team-member-validation";
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

/*
 * Saves the editor's fields. A mechanic the Play's game doesn't have (a
 * nature before Ruby and Sapphire, say) can't be recorded, nor a choice the
 * editor wouldn't offer; moves replace the current four in slot order.
 */
export const updatePlayPokemon = async (
  supabase: ServerSupabaseClient,
  {
    input,
    playId,
    playPokemonId,
    pokemon,
  }: {
    input: UpdateMainlinePlayPokemonInput;
    playId: string;
    playPokemonId: string;
    pokemon: { form_id: number; species_id: number };
  },
) => {
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

  if (currentResult.error || !currentResult.data || currentMovesResult.error) {
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
};
