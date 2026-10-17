import {
  NewPlayInputError,
  type NewPlayInput,
} from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import { readGameStarters } from "@/modules/reference/features/games/server/game-shelf-reader";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/* The function's refusal of an expansion the game doesn't have. */
const isExpansionRefusal = (error: { code: string; message: string }) =>
  error.code === "23514" && error.message.startsWith("Version groups ");

const readGame = async (supabase: ServerSupabaseClient, gameSlug: string) => {
  const { data, error } = await supabase
    .schema("reference")
    .from("games")
    .select("id, slug")
    .eq("slug", gameSlug)
    .maybeSingle();

  if (error) {
    throw new Error("Unable to read that game right now.");
  }

  if (!data) {
    throw new NewPlayInputError("That game isn't one Voydex knows.");
  }

  return data;
};

/* The partner must be one the game offers (its trio, or the one it gives you). */
const assertGamePartner = async (
  supabase: ServerSupabaseClient,
  gameSlug: string,
  partner: NonNullable<NewPlayInput["partner"]>,
) => {
  const starters = await readGameStarters(supabase, gameSlug);
  const isOffered = starters?.starters.some(
    (starter) =>
      starter.speciesId === partner.speciesId &&
      starter.formId === partner.formId,
  );

  if (!isOffered) {
    throw new NewPlayInputError("That partner isn't one this game offers.");
  }
};

/*
 * Starts a Play through `gameplay.create_mainline_play`, in one transaction:
 * the Play itself (playing, started on the viewer's day), its settings, the
 * expansions it owns and its partner, through its partner milestone when the
 * game asks you to choose, else straight onto the team in slot 1.
 */
export const createMainlinePlay = async ({
  input,
  supabase,
}: {
  input: NewPlayInput;
  supabase: ServerSupabaseClient;
}): Promise<{ playId: string; playName: string }> => {
  const game = await readGame(supabase, input.gameSlug);

  if (input.partner) {
    await assertGamePartner(supabase, game.slug, input.partner);
  }

  const { data, error } = await supabase
    .schema("gameplay")
    .rpc("create_mainline_play", {
      p_expansion_version_group_ids: input.expansionVersionGroupIds,
      p_game_id: game.id,
      p_name: input.playName,
      p_partner_form_id: input.partner?.formId,
      p_partner_species_id: input.partner?.speciesId,
      p_started_on: input.startedOn,
      p_trainer_name: input.trainerName ?? undefined,
    });
  const playId = data?.[0]?.result_play_id;

  if (error && isExpansionRefusal(error)) {
    throw new NewPlayInputError("Those expansions aren't part of this game.");
  }

  if (error || !playId) {
    throw new Error("Unable to start a Play right now.");
  }

  return { playId, playName: input.playName };
};
