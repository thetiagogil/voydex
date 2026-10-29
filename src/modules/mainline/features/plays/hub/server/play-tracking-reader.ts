import {
  defaultPlayTracking,
  toPokedexMode,
  type PlayTracking,
} from "@/config/play-tracking";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * What this Play tracks (Play settings' Tracking): Story, the Pokédex mode
 * and Collectibles. A Play without a settings row tracks everything. A failed
 * read throws: the Play never hides an area on a guess.
 */
export const readPlayTracking = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<PlayTracking> => {
  const { data, error } = await supabase
    .schema("gameplay")
    .from("mainline_play_settings")
    .select(
      "collectibles_tracking_enabled, pokedex_mode, story_tracking_enabled",
    )
    .eq("play_id", playId)
    .maybeSingle();

  if (error) {
    throw new Error("Unable to load what this Play tracks.");
  }

  return data
    ? {
        collectibles: data.collectibles_tracking_enabled,
        pokedexMode: toPokedexMode(data.pokedex_mode),
        story: data.story_tracking_enabled,
      }
    : defaultPlayTracking;
};
