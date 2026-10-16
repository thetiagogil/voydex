import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

import { playTeamSize } from "@/modules/mainline/features/plays/shared/utils/play-team-slots";

export type TeamMemberActionResult =
  | {
      eventId?: string | null;
      message: string;
      playPokemonId?: string;
      status: "success";
      /* Done, but part of it wasn't: shown instead of the usual toast. */
      warning?: string;
    }
  | { message: string; status: "error" };

export const revalidateTeamPaths = (playId: string) => {
  revalidatePath(appRoutes.mainlinePlay(playId));
  revalidatePath(appRoutes.mainlinePlayTeam(playId));
  revalidatePath(appRoutes.mainlinePlayTeamPlan(playId));
  revalidatePath(appRoutes.mainlinePlayTeamAnalysis(playId));
  revalidatePath(appRoutes.mainlinePlayHistory(playId));
};

/* The first open slot: 1 to 6 on the team, 7 to 12 (R1 to R6) in reserve. */
export const findOpenRosterSlot = async (
  supabase: ServerSupabaseClient,
  { placement, playId }: { placement: "reserve" | "team"; playId: string },
) => {
  const slotsResult = await supabase
    .schema("gameplay")
    .from("mainline_play_pokemon")
    .select("slot")
    .eq("play_id", playId)
    .not("slot", "is", null);

  if (slotsResult.error) {
    throw new Error("Unable to read the Play's team.");
  }

  const taken = new Set((slotsResult.data ?? []).map((row) => row.slot));
  const first = placement === "team" ? 1 : playTeamSize + 1;
  const slot = Array.from(
    { length: playTeamSize },
    (_, index) => first + index,
  ).find((candidate) => !taken.has(candidate));

  if (slot === undefined) {
    throw new Error(
      placement === "team" ? "Your team is full." : "The reserve is full.",
    );
  }

  return slot;
};

/*
 * The signed-in owner's client and one of their Play's Pokémon, or an error
 * the sheet can show. Row-level security is the authority; this only turns
 * an unknown id into a clear message.
 */
export const getOwnedPlayPokemon = async ({
  playId,
  playPokemonId,
}: {
  playId: string;
  playPokemonId: string;
}) => {
  if (!isUuid(playId) || !isUuid(playPokemonId)) {
    throw new Error("A valid Pokémon is required.");
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    throw new Error("You must be logged in to change your team.");
  }

  const pokemonResult = await supabase
    .schema("gameplay")
    .from("mainline_play_pokemon")
    .select("id, species_id, form_id, roster_state_id, slot")
    .eq("id", playPokemonId)
    .eq("play_id", playId)
    .maybeSingle();

  if (pokemonResult.error || !pokemonResult.data) {
    throw new Error("That Pokémon isn't in this Play.");
  }

  return { pokemon: pokemonResult.data, supabase };
};
