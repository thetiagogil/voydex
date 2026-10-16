import { settleCodexExtra } from "@/modules/mainline/features/plays/browse/data/codex-plays-model";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

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
