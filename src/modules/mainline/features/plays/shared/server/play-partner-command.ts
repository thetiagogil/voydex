import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

type DatabaseError = { code?: string; message?: string };

/* What the partner choice can show when the database refuses it. */
const toChoosePartnerErrorMessage = ({ code, message }: DatabaseError) => {
  if (code === "23505") {
    return "Your partner is already recorded. Change it from Story.";
  }

  if (code === "23503" && message?.includes("partner choice")) {
    return "That partner isn't one of this game's choices.";
  }

  return code === "23503"
    ? "This Play isn't available."
    : "Unable to record your partner right now.";
};

/* What Undo can show when the database refuses it. */
const toUndoPartnerErrorMessage = ({ code }: DatabaseError) =>
  code === "40001"
    ? "Couldn't undo: something recorded since depends on it. Change it from Story."
    : "Unable to undo that right now.";

/*
 * A brand-new Play's first decision (v3 `fresh`), in one database call:
 * `gameplay.choose_mainline_play_partner` finds the game's partner
 * milestone, accepts only one of its Pokémon options, puts the partner in
 * slot 1 when the team is empty and records the milestone with that choice.
 * Its one moment reads "X chose you".
 */
export const choosePlayPartner = async (
  supabase: ServerSupabaseClient,
  { decisionOptionId, playId }: { decisionOptionId: number; playId: string },
): Promise<{ addedPlayPokemonId: string | null; partnerName: string }> => {
  const { data, error } = await supabase
    .schema("gameplay")
    .rpc("choose_mainline_play_partner", {
      p_decision_option_id: decisionOptionId,
      p_play_id: playId,
    });

  if (error) {
    throw new Error(toChoosePartnerErrorMessage(error));
  }

  const result = data?.[0];

  if (!result) {
    throw new Error("Unable to record your partner right now.");
  }

  return {
    addedPlayPokemonId: result.result_partner_play_pokemon_id ?? null,
    partnerName: result.result_partner_name,
  };
};

/*
 * Undo for the partner just chosen, in one database call: the partner
 * milestone (with its decision and moment) is unrecorded and the partner
 * this choice added leaves the team again. Refused when anything recorded
 * since depends on it.
 */
export const undoPlayPartner = async (
  supabase: ServerSupabaseClient,
  {
    addedPlayPokemonId,
    playId,
  }: { addedPlayPokemonId: string | null; playId: string },
) => {
  const { error } = await supabase
    .schema("gameplay")
    .rpc("undo_mainline_play_partner", {
      p_partner_play_pokemon_id: addedPlayPokemonId ?? undefined,
      p_play_id: playId,
    });

  if (error) {
    throw new Error(toUndoPartnerErrorMessage(error));
  }
};
