import { choosePlayPartnerAction } from "@/modules/mainline/features/plays/shared/server/play-partner-action";
import {
  NewPlayInputError,
  type NewPlayInput,
} from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import { findPartnerDecision } from "@/modules/mainline/features/plays/shared/utils/partner-milestone";
import { readGameStarters } from "@/modules/reference/features/games/server/game-shelf-reader";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

const playingStatusSlug = "playing";
const activeRosterStateId = 1;

const readGame = async (supabase: ServerSupabaseClient, gameSlug: string) => {
  const { data, error } = await supabase
    .schema("reference")
    .from("games")
    .select("id, name, slug, version_group_id")
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

/* The expansions the trainer picked, kept only when they belong to the game. */
const readOwnedExpansions = async (
  supabase: ServerSupabaseClient,
  gameId: number,
  versionGroupIds: number[],
) => {
  if (!versionGroupIds.length) {
    return [];
  }

  const { data, error } = await supabase
    .schema("reference")
    .from("game_content_scopes")
    .select("version_group_id")
    .eq("game_id", gameId)
    .eq("is_base_scope", false)
    .in("version_group_id", versionGroupIds);

  if (error) {
    throw new Error("Unable to read the game's expansions.");
  }

  if ((data ?? []).length !== versionGroupIds.length) {
    throw new NewPlayInputError("Those expansions aren't part of this game.");
  }

  return versionGroupIds;
};

/* The partner must be one the game offers (its trio, or the one it gives you). */
const assertGamePartner = async (
  gameSlug: string,
  partner: NonNullable<NewPlayInput["partner"]>,
) => {
  const starters = await readGameStarters(gameSlug);
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
 * The partner joins the new Play: through its partner milestone when the game
 * asks you to choose (the Overview's own partner flow records the choice and
 * puts the partner in slot 1), else straight onto the team in slot 1.
 */
const addPartner = async (
  supabase: ServerSupabaseClient,
  playId: string,
  baseVersionGroupId: number,
  partner: NonNullable<NewPlayInput["partner"]>,
) => {
  const milestonesResult = await supabase
    .schema("views")
    .from("mainline_play_milestone_detail")
    .select(
      "category_sort_order, decision_options, milestone_id, sort_order, version_group_id",
    )
    .eq("play_id", playId)
    .eq("version_group_id", baseVersionGroupId);

  if (milestonesResult.error) {
    throw new Error("Unable to read the Play's first milestone.");
  }

  const decision = findPartnerDecision({
    baseVersionGroupId,
    partner,
    rows: milestonesResult.data ?? [],
  });

  if (decision) {
    const result = await choosePlayPartnerAction({ ...decision, playId });

    if (result.status === "error") {
      throw new Error(result.message);
    }

    return;
  }

  const addResult = await supabase
    .schema("gameplay")
    .rpc("add_mainline_play_pokemon", {
      p_create_event: true,
      p_form_id: partner.formId,
      p_play_id: playId,
      p_roster_state_id: activeRosterStateId,
      p_slot: 1,
      p_species_id: partner.speciesId,
    });

  if (addResult.error) {
    throw new Error("Unable to add your partner to the team.");
  }
};

/*
 * Starts a Play: the Play itself (playing, started on the viewer's day), its
 * settings, the expansions it owns and its partner. There is no single
 * create-Play database function yet, so a failure after the Play is written
 * deletes it again rather than leave half a Play behind.
 */
export const createMainlinePlay = async ({
  input,
  supabase,
  userId,
}: {
  input: NewPlayInput;
  supabase: ServerSupabaseClient;
  userId: string;
}): Promise<{ playId: string; playName: string }> => {
  const game = await readGame(supabase, input.gameSlug);
  const [expansionIds, statusResult] = await Promise.all([
    readOwnedExpansions(supabase, game.id, input.expansionVersionGroupIds),
    supabase
      .schema("gameplay")
      .from("mainline_play_statuses")
      .select("id")
      .eq("slug", playingStatusSlug)
      .single(),
    input.partner ? assertGamePartner(game.slug, input.partner) : null,
  ]);

  if (statusResult.error) {
    throw new Error("Unable to start a Play right now.");
  }

  const playResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .insert({
      game_id: game.id,
      name: input.playName,
      started_on: input.startedOn,
      status_id: statusResult.data.id,
      trainer_name: input.trainerName,
      user_id: userId,
      version_group_id: game.version_group_id,
    })
    .select("id")
    .single();

  if (playResult.error) {
    throw new Error("Unable to start a Play right now.");
  }

  const playId = playResult.data.id;

  try {
    const settingsResult = await supabase
      .schema("gameplay")
      .from("mainline_play_settings")
      .insert({ play_id: playId });

    if (settingsResult.error) {
      throw new Error("Unable to save the Play's settings.");
    }

    if (expansionIds.length) {
      const scopesResult = await supabase
        .schema("gameplay")
        .from("mainline_play_optional_content_scopes")
        .insert(
          expansionIds.map((versionGroupId) => ({
            game_id: game.id,
            play_id: playId,
            version_group_id: versionGroupId,
          })),
        );

      if (scopesResult.error) {
        throw new Error("Unable to save the Play's expansions.");
      }
    }

    if (input.partner) {
      await addPartner(supabase, playId, game.version_group_id, input.partner);
    }
  } catch (error) {
    const removeResult = await supabase
      .schema("gameplay")
      .from("mainline_plays")
      .delete()
      .eq("id", playId)
      .eq("user_id", userId);

    if (removeResult.error) {
      /* Half a Play is left behind; it shows in Plays and can be deleted there. */
      console.error(
        `Play ${playId}: unable to remove it after a failed start.`,
      );
    }

    throw error;
  }

  return { playId, playName: input.playName };
};
