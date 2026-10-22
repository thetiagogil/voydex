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
 * Saves the editor's fields. A mechanic the Play's game doesn't have (a
 * nature before Ruby and Sapphire, say) can't be recorded, nor a choice the
 * editor wouldn't offer. `gameplay.update_mainline_play_pokemon` then writes
 * every field (an empty one clears it) and replaces the current moves in
 * slot order in one transaction; a details edit is not a History moment.
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
    (input.gender !== "unknown" && refuses(gameMechanics.pokemonGender)) ||
    (input.teraTypeId !== null && refuses(gameMechanics.terastal)) ||
    (input.hasGigantamaxFactor && refuses(gameMechanics.dynamax))
  ) {
    throw new Error("This game doesn't record that.");
  }

  const currentMoveIds = (currentMovesResult.data ?? []).map(
    (move) => move.move_id,
  );
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

  /* One call saves the details and replaces the moves together. */
  const saveResult = await supabase
    .schema("gameplay")
    .rpc("update_mainline_play_pokemon", {
      p_ability_id: input.abilityId ?? undefined,
      p_ball_item_id: input.ballItemId ?? undefined,
      p_gender: input.gender,
      p_has_gigantamax_factor: input.hasGigantamaxFactor,
      p_held_item_id: input.heldItemId ?? undefined,
      p_is_shiny: input.isShiny,
      p_level: input.level ?? undefined,
      p_met_level: input.metLevel ?? undefined,
      p_met_location_label: input.metLocation ?? undefined,
      p_move_ids: input.moveIds,
      p_nature_id: input.natureId ?? undefined,
      p_nickname: input.nickname ?? undefined,
      p_personal_notes: input.notes ?? undefined,
      p_play_pokemon_id: playPokemonId,
      p_tera_type_id: input.teraTypeId ?? undefined,
    });

  if (saveResult.error) {
    throw new Error("Unable to save those changes.");
  }
};
