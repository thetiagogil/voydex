import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  type AddMainlinePlayPokemonRepository,
  type AddMainlinePlayPokemonResult,
} from "./add-team-member-command";
import type { AddMainlinePlayPokemonInput } from "../utils/team-member-validation";

export const createMainlineTeamRepository = (
  supabase: ServerSupabaseClient,
): AddMainlinePlayPokemonRepository => {
  return {
    addPlayPokemon: async (
      input: AddMainlinePlayPokemonInput,
    ): Promise<AddMainlinePlayPokemonResult> => {
      const { data, error } = await supabase
        .schema("gameplay")
        .rpc("add_mainline_play_pokemon", {
          p_ability_id: input.abilityId ?? undefined,
          p_create_event: input.createEvent,
          p_event_body: input.eventBody ?? undefined,
          p_event_title: input.eventTitle ?? undefined,
          p_form_id: input.formId,
          p_gender: input.gender,
          p_held_item_id: input.heldItemId ?? undefined,
          p_is_shiny: input.isShiny,
          p_level: input.level ?? undefined,
          p_move_ids: input.moveIds,
          p_nature_id: input.natureId ?? undefined,
          p_nickname: input.nickname ?? undefined,
          p_play_id: input.playId,
          p_roster_state_id: input.rosterStateId,
          p_slot: input.slot,
          p_species_id: input.speciesId,
        });

      if (error) {
        throw new Error("Unable to add Pokémon to the play team.");
      }

      const result = data?.[0];
      if (!result) {
        throw new Error("The play team write returned no result.");
      }

      return {
        eventId: result.result_event_id ?? null,
        playPokemonId: result.result_play_pokemon_id,
      };
    },
  };
};
