import {
  defaultPlayTracking,
  toPokedexMode,
  type PlayTracking,
} from "@/config/play-tracking";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * What a new Play starts tracking: your New Play defaults from Settings, or
 * everything on until you save any. A failed read throws; New Play treats it
 * as a quiet extra and starts from the defaults instead.
 */
export const readTrackingDefaults = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<PlayTracking> => {
  const { data, error } = await supabase
    .from("user_preferences")
    .select(
      "default_pokedex_mode, default_track_collectibles, default_track_story",
    )
    .eq("user_id", userId)
    .maybeSingle();

  if (error) {
    throw new Error("Unable to load your New Play defaults.");
  }

  return data
    ? {
        collectibles: data.default_track_collectibles,
        pokedexMode: toPokedexMode(data.default_pokedex_mode),
        story: data.default_track_story,
      }
    : defaultPlayTracking;
};
