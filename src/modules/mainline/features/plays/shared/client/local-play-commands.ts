import {
  NewPlayInputError,
  parseNewPlayInput,
} from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import {
  addMainlinePlayPokemon,
  type AddMainlinePlayPokemonRepository,
  type AddMainlinePlayPokemonResult,
} from "@/modules/mainline/features/plays/shared/server/add-team-member-command";
import type { AddMainlinePlayPokemonInput } from "@/modules/mainline/features/plays/shared/utils/team-member-validation";
import { buildPlayRuleOverrides } from "@/modules/mainline/shared/data/challenge-rule-options";
import type { Json } from "@/shared/types/database.types";
import {
  callFunction,
  LocalDbError,
  runQuery,
  type LocalDb,
} from "@/platform/local-db/local-db";

/*
 * Starting a Play and adding a Team member on the device: the same database
 * functions the Server Actions call, through the device database. The proof
 * for the local-data move; New Play itself moves in its own change.
 */

/* The function's refusal of an expansion the game doesn't have. */
const isExpansionRefusal = (error: unknown) =>
  error instanceof LocalDbError &&
  error.code === "23514" &&
  error.message.startsWith("Version groups ");

/* The rule check's refusal of a type the game doesn't have (Monotype). */
const isTypeRefusal = (error: unknown) =>
  error instanceof LocalDbError &&
  error.code === "23514" &&
  error.message.startsWith("Type ");

const readGameId = async (db: LocalDb, gameSlug: string) => {
  const [game] = await runQuery<{ id: number }>(
    db,
    "SELECT id FROM reference.games WHERE slug = $1",
    [gameSlug],
  );

  if (!game) {
    throw new NewPlayInputError("That game isn't one Voydex knows.");
  }

  return game.id;
};

const readPlayRuleOverrides = async (
  db: LocalDb,
  ruleIds: readonly string[],
  rules: Parameters<typeof buildPlayRuleOverrides>[1],
) => {
  if (!ruleIds.length) return [];

  const available = await runQuery<{ config: Json; id: string; name: string }>(
    db,
    "SELECT id, name, config FROM gameplay.mainline_challenge_rules WHERE id = ANY ($1::uuid[])",
    [ruleIds],
  );
  const overrides = buildPlayRuleOverrides(available, rules);

  if (overrides.status === "error") {
    throw new NewPlayInputError(overrides.message);
  }

  return overrides.rows.map((row) => ({
    config: row.config,
    rule_id: row.ruleId,
  }));
};

/*
 * Starts a Play on the device through `gameplay.create_mainline_play`. A
 * partner isn't checked against the game's starters on the device yet, so
 * one is refused rather than saved unchecked.
 */
export const createLocalPlay = async ({
  db,
  rawInput,
}: {
  db: LocalDb;
  rawInput: unknown;
}): Promise<{ playId: string; playName: string }> => {
  const input = parseNewPlayInput(rawInput);

  if (input.partner) {
    throw new NewPlayInputError(
      "Pick the partner after the Play starts; the device can't check it yet.",
    );
  }

  const gameId = await readGameId(db, input.gameSlug);
  const challengeRules = await readPlayRuleOverrides(
    db,
    input.challengeRules.map((rule) => rule.ruleId),
    input.challengeRules,
  );

  try {
    const [row] = await callFunction<{ result_play_id: string }>(
      db,
      "gameplay.create_mainline_play",
      {
        p_challenge_rules: challengeRules,
        p_expansion_version_group_ids: input.expansionVersionGroupIds,
        p_game_id: gameId,
        p_name: input.playName,
        p_pokedex_mode: input.tracking?.pokedexMode,
        p_started_on: input.startedOn,
        p_track_collectibles: input.tracking?.collectibles,
        p_track_story: input.tracking?.story,
        p_trainer_name: input.trainerName ?? undefined,
      },
    );

    if (!row?.result_play_id) {
      throw new LocalDbError("The Play was not started.");
    }

    return { playId: row.result_play_id, playName: input.playName };
  } catch (error) {
    if (isExpansionRefusal(error)) {
      throw new NewPlayInputError("Those expansions aren't part of this game.");
    }

    if (isTypeRefusal(error)) {
      throw new NewPlayInputError("That type isn't in this game.");
    }

    throw error;
  }
};

/* The add-to-team command's repository, saving on the device. */
export const createLocalTeamRepository = (
  db: LocalDb,
): AddMainlinePlayPokemonRepository => ({
  addPlayPokemon: async (input): Promise<AddMainlinePlayPokemonResult> => {
    const [row] = await callFunction<{
      result_event_id: string | null;
      result_play_pokemon_id: string;
    }>(db, "gameplay.add_mainline_play_pokemon", {
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

    if (!row) {
      throw new LocalDbError("The play team write returned no result.");
    }

    return {
      eventId: row.result_event_id ?? null,
      playPokemonId: row.result_play_pokemon_id,
    };
  },
});

/* Adds a Pokémon to a Play's team or reserve on the device. */
export const addLocalTeamMember = ({
  db,
  input,
}: {
  db: LocalDb;
  input: AddMainlinePlayPokemonInput;
}) =>
  addMainlinePlayPokemon({
    input,
    repository: createLocalTeamRepository(db),
  });
