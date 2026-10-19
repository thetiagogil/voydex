"use server";

import { z } from "zod";

import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import {
  parseInput,
  positiveIntegerSchema,
} from "@/shared/utils/input-schemas";

import {
  mainlineTeamRosterStates,
  MainlineTeamValidationError,
} from "../utils/team-member-validation";
import { addMainlinePlayPokemon } from "./add-team-member-command";
import { createMainlineTeamRepository } from "./team-repository";
import {
  findOpenRosterSlot,
  revalidateTeamPaths,
  type TeamMemberActionResult,
} from "./team-member-action-support";

export type AddTeamMemberInput = {
  formId: number;
  level: number | null;
  nickname: string | null;
  playId: string;
  placement: "reserve" | "team";
  speciesId: number;
};

const addTeamMemberInputSchema = z.object({
  playId: playIdSchema,
  placement: z.enum(["reserve", "team"], {
    error: "Pick the team or the reserve.",
  }),
  speciesId: positiveIntegerSchema(
    "That Pokémon isn't in this Play's Pokédex.",
  ),
  formId: positiveIntegerSchema("That Pokémon isn't in this Play's Pokédex."),
  level: z.number({ error: "Level must be a number." }).nullable(),
  nickname: z.string({ error: "Nickname must be text." }).nullable(),
});

/*
 * Add Pokémon (v3 `addMonSheet`): a species of the Play's Pokédexes joins
 * the first open slot of the team or the reserve, through
 * `add_mainline_play_pokemon`, and the moment joins History. The slot is
 * picked here, so two quick adds can't both claim the same one.
 */
export const addMainlinePlayPokemonAction = async (
  rawInput: AddTeamMemberInput,
): Promise<TeamMemberActionResult> => {
  try {
    const input = parseInput(
      addTeamMemberInputSchema,
      rawInput,
      (message) => new MainlineTeamValidationError(message),
    );
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);

    if (!claimsResult?.data?.claims?.sub) {
      throw new Error("You must be logged in to add Pokémon.");
    }

    const entryResult = await supabase
      .schema("views")
      .from("mainline_play_pokedex_detail")
      .select("species_id")
      .eq("play_id", input.playId)
      .eq("species_id", input.speciesId)
      .limit(1);

    if (entryResult.error || !entryResult.data?.length) {
      throw new Error("That Pokémon isn't in this Play's Pokédex.");
    }

    const slot = await findOpenRosterSlot(supabase, {
      placement: input.placement,
      playId: input.playId,
    });
    const result = await addMainlinePlayPokemon({
      input: {
        formId: input.formId,
        level: input.level,
        nickname: input.nickname,
        playId: input.playId,
        rosterStateId:
          input.placement === "team"
            ? mainlineTeamRosterStates.active
            : mainlineTeamRosterStates.reserve,
        slot,
        speciesId: input.speciesId,
      },
      repository: createMainlineTeamRepository(supabase),
    });

    revalidateTeamPaths(input.playId);

    return {
      message: input.placement === "team" ? "Team" : "Reserve",
      playPokemonId: result.playPokemonId,
      status: "success",
    };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to add that Pokémon.",
      status: "error",
    };
  }
};
