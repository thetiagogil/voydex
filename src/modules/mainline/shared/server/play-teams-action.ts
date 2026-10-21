"use server";

import { z } from "zod";

import { readPlayTeams } from "@/modules/mainline/shared/server/play-team-reader";
import type { PlayTeamsResult } from "@/modules/mainline/shared/types";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { safeParseInput, uuidSchema } from "@/shared/utils/input-schemas";

const playIdsSchema = z
  .array(uuidSchema("Those Plays couldn't be found."))
  .min(1, { error: "Those Plays couldn't be found." })
  .max(100, { error: "Those Plays couldn't be found." });

/*
 * Your Plays by id, with their current teams, for a dialog such as the
 * earlier Plays that used a Pokémon (No Pokémon reuse). Plays that aren't
 * yours are left out.
 */
export const readPlayTeamsAction = async (
  playIds: unknown,
): Promise<PlayTeamsResult> => {
  const parsed = safeParseInput(playIdsSchema, playIds);

  if (!parsed.ok) {
    return { message: parsed.message, status: "error" };
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    return { message: "Log in to see your Plays.", status: "error" };
  }

  try {
    return {
      plays: await readPlayTeams(supabase, parsed.data),
      status: "success",
    };
  } catch {
    return {
      message: "Unable to load the Plays right now. Try again.",
      status: "error",
    };
  }
};
