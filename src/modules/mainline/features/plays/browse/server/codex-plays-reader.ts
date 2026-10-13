import { cache } from "react";

import {
  countPlaysByGameSlug,
  settleCodexExtra,
  toCodexPlays,
  type CodexPlay,
} from "@/modules/mainline/features/plays/browse/data/codex-plays-model";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";

export type { CodexPlay };

const readSignedInClient = async () => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  return userId ? { supabase, userId } : null;
};

/*
 * The signed-in trainer's Plays still in the library, newest activity first,
 * with the client that read them; null when nobody is signed in or the read
 * fails, so the Codex's Mainline pieces render nothing instead of breaking
 * a public page. Read once per request: an entry's hero and its In your
 * Plays card share it.
 */
export const readCodexPlays = cache(
  async (): Promise<{
    plays: CodexPlay[];
    supabase: ServerSupabaseClient;
  } | null> =>
    settleCodexExtra(
      "Reading your Plays",
      async () => {
        const session = await readSignedInClient();

        if (!session) {
          return null;
        }

        const { data, error } = await session.supabase
          .schema("views")
          .from("mainline_play_summary")
          .select(
            "game_name, game_slug, play_id, play_name, status_name, status_slug, version_group_slug",
          )
          .eq("user_id", session.userId)
          .is("archived_at", null)
          .order("updated_at", { ascending: false });

        if (error) {
          throw new Error("Unable to load your Plays.", { cause: error });
        }

        return { plays: toCodexPlays(data ?? []), supabase: session.supabase };
      },
      null,
    ),
);

/*
 * Every Pokémon of one species on the given Plays' rosters, team first;
 * null when the read fails, so the In your Plays card hides.
 */
export const readCodexSpeciesRoster = async (
  supabase: ServerSupabaseClient,
  playIds: string[],
  speciesSlug: string,
): Promise<MainlinePlayTeamMember[] | null> => {
  if (!playIds.length) {
    return [];
  }

  return settleCodexExtra(
    "Reading this Pokémon in your Plays",
    async () => {
      const { data, error } = await supabase
        .schema("views")
        .from("mainline_play_team_detail")
        .select("*")
        .in("play_id", playIds)
        .eq("species_slug", speciesSlug)
        .order("roster_state_id", { ascending: true })
        .order("slot", { ascending: true, nullsFirst: false });

      if (error) {
        throw new Error("Unable to load this Pokémon in your Plays.", {
          cause: error,
        });
      }

      return data ?? [];
    },
    null,
  );
};

/*
 * Which of the given Plays' Pokédexes list this species (their game and the
 * expansions they track), for "Add to a Play". Null when the read fails.
 */
export const readCodexPlayIdsWithSpecies = async (
  supabase: ServerSupabaseClient,
  playIds: string[],
  speciesSlug: string,
): Promise<Set<string> | null> => {
  if (!playIds.length) {
    return new Set();
  }

  return settleCodexExtra(
    "Reading which Plays can add this Pokémon",
    async () => {
      const { data, error } = await supabase
        .schema("views")
        .from("mainline_play_pokedex_detail")
        .select("play_id")
        .in("play_id", playIds)
        .eq("species_slug", speciesSlug);

      if (error) {
        throw new Error("Unable to load which Plays can add this Pokémon.", {
          cause: error,
        });
      }

      return new Set(
        (data ?? []).flatMap((row) => (row.play_id ? [row.play_id] : [])),
      );
    },
    null,
  );
};

/*
 * How many Plays the trainer has of each game, by game slug (archived ones
 * too: the game was still played). Empty when nobody is signed in or the
 * read fails: the counts are an extra, never a reason to fail the page.
 */
export const readPlayedGameCounts = async (): Promise<Record<string, number>> =>
  settleCodexExtra(
    "Counting the games you've played",
    async () => {
      const session = await readSignedInClient();

      if (!session) {
        return {};
      }

      const { data, error } = await session.supabase
        .schema("views")
        .from("mainline_play_summary")
        .select("game_slug")
        .eq("user_id", session.userId);

      if (error) {
        throw new Error("Unable to load the games you've played.", {
          cause: error,
        });
      }

      return countPlaysByGameSlug(data ?? []);
    },
    {},
  );
