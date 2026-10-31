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
import { assertAddedBuildOffered } from "./add-team-member-build-check";
import { addMainlinePlayPokemon } from "./add-team-member-command";
import { createMainlineTeamRepository } from "./team-repository";
import {
  findOpenRosterSlot,
  revalidateTeamPaths,
  type TeamMemberActionResult,
} from "./team-member-action-support";

export type AddTeamMemberInput = {
  /* More details: null (and no moves) when it wasn't recorded. */
  abilityId?: number | null;
  formId: number;
  heldItemId?: number | null;
  level: number | null;
  /* In slot order; at most four, each once. */
  moveIds?: number[];
  natureId?: number | null;
  nickname: string | null;
  playId: string;
  placement: "reserve" | "team";
  speciesId: number;
};

const optionalIdSchema = (label: string) =>
  positiveIntegerSchema(`Pick a ${label} from the list.`)
    .nullable()
    .default(null);

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
  natureId: optionalIdSchema("nature"),
  abilityId: optionalIdSchema("ability"),
  heldItemId: optionalIdSchema("held item"),
  moveIds: z
    .array(positiveIntegerSchema("Pick moves from the list."))
    .max(4, { error: "A team member can have at most four moves." })
    .refine((moveIds) => new Set(moveIds).size === moveIds.length, {
      error: "A move can only be known once.",
    })
    .default([]),
});

/*
 * Add Pokémon (v3 `addMonSheet`): a species of the Play's Pokédexes joins
 * the first open slot of the team or the reserve, with any nature, ability,
 * held item and moves picked in More details, through
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

    const [entryResult] = await Promise.all([
      supabase
        .schema("views")
        .from("mainline_play_pokedex_detail")
        .select("species_id")
        .eq("play_id", input.playId)
        .eq("species_id", input.speciesId)
        .limit(1),
      assertAddedBuildOffered(supabase, {
        build: {
          abilityId: input.abilityId,
          heldItemId: input.heldItemId,
          moveIds: input.moveIds,
          natureId: input.natureId,
        },
        formId: input.formId,
        playId: input.playId,
      }),
    ]);

    if (entryResult.error || !entryResult.data?.length) {
      throw new Error("That Pokémon isn't in this Play's Pokédex.");
    }

    const slot = await findOpenRosterSlot(supabase, {
      placement: input.placement,
      playId: input.playId,
    });
    const result = await addMainlinePlayPokemon({
      input: {
        abilityId: input.abilityId,
        formId: input.formId,
        heldItemId: input.heldItemId,
        level: input.level,
        moveIds: input.moveIds,
        natureId: input.natureId,
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
