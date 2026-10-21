"use server";

import { z } from "zod";

import {
  parseInput,
  positiveIntegerSchema,
} from "@/shared/utils/input-schemas";

import { teamNeedsOneMessage } from "../utils/roster-moves";
import {
  validateUpdateMainlinePlayPokemon,
  type UpdateMainlinePlayPokemonInput,
} from "../utils/team-member-validation";
import {
  getOwnedPlayPokemon,
  revalidateTeamPaths,
  type TeamMemberActionResult,
} from "./team-member-action-support";
import { updatePlayPokemon } from "./team-member-update-command";

const failure = (error: unknown, fallback: string): TeamMemberActionResult => ({
  message: error instanceof Error ? error.message : fallback,
  status: "error",
});

const rosterSlotMessage = "Pick a team or reserve slot.";
const rosterSlotSchema = z
  .number({ error: rosterSlotMessage })
  .int({ error: rosterSlotMessage })
  .min(1, { error: rosterSlotMessage })
  .max(12, { error: rosterSlotMessage });

const evolveTargetSchema = z.object({
  toFormId: positiveIntegerSchema("It doesn't evolve into that."),
  toSpeciesId: positiveIntegerSchema("It doesn't evolve into that."),
});

const replacementSchema = z.object({
  replacementFormId: positiveIntegerSchema(
    "That Pokémon isn't in this Play's Pokédex.",
  ),
  replacementSpeciesId: positiveIntegerSchema(
    "That Pokémon isn't in this Play's Pokédex.",
  ),
});

/* Saves the editor's fields (see `updatePlayPokemon`). */
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
    await updatePlayPokemon(supabase, {
      input,
      playId,
      playPokemonId,
      pokemon,
    });
    revalidateTeamPaths(playId);

    return { message: "Changes saved", playPokemonId, status: "success" };
  } catch (error) {
    return failure(error, "Unable to save those changes.");
  }
};

/*
 * Move: to another team or reserve slot, swapping with the Pokémon there, in
 * one database call. The team keeps at least one Pokémon, and a move is not
 * a History moment.
 */
export const moveMainlinePlayPokemonAction = async ({
  playId,
  playPokemonId,
  toSlot: rawToSlot,
}: {
  playId: string;
  playPokemonId: string;
  toSlot: number;
}): Promise<TeamMemberActionResult> => {
  try {
    const { supabase } = await getOwnedPlayPokemon({ playId, playPokemonId });
    const toSlot = parseInput(rosterSlotSchema, rawToSlot);
    const result = await supabase
      .schema("gameplay")
      .rpc("move_mainline_play_pokemon", {
        p_play_pokemon_id: playPokemonId,
        p_to_slot: toSlot,
      });

    if (result.error) {
      throw new Error(
        result.error.message === "The team needs at least one Pokémon"
          ? teamNeedsOneMessage
          : "Unable to move it.",
      );
    }

    revalidateTeamPaths(playId);

    return { message: "Moved", playPokemonId, status: "success" };
  } catch (error) {
    return failure(error, "Unable to move it.");
  }
};

/* Evolve: records the evolution and its moment in History. */
export const evolveMainlinePlayPokemonAction = async ({
  playId,
  playPokemonId,
  ...target
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
    const { toFormId, toSpeciesId } = parseInput(evolveTargetSchema, target);
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
  toFormId: rawToFormId,
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
    const toFormId = parseInput(
      positiveIntegerSchema("Pick another form of the same Pokémon."),
      rawToFormId,
    );
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
  ...replacement
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
    const { replacementFormId, replacementSpeciesId } = parseInput(
      replacementSchema,
      replacement,
    );
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
 * that add's own "added" moment away, in the same database call.
 */
export const removeMainlinePlayPokemonAction = async ({
  playId,
  playPokemonId,
  undoAdd = false,
}: {
  playId: string;
  playPokemonId: string;
  undoAdd?: boolean;
}): Promise<TeamMemberActionResult> => {
  try {
    const { supabase } = await getOwnedPlayPokemon({ playId, playPokemonId });
    const result = await supabase
      .schema("gameplay")
      .rpc("remove_mainline_play_pokemon", {
        p_play_pokemon_id: playPokemonId,
        p_remove_added_moment: undoAdd === true,
      });

    if (result.error) {
      throw new Error("Unable to delete it.");
    }

    revalidateTeamPaths(playId);

    return { message: "Deleted", status: "success" };
  } catch (error) {
    return failure(error, "Unable to delete it.");
  }
};
