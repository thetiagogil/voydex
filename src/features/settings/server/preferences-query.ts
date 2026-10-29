import {
  defaultPlayTracking,
  toPokedexMode,
  type PlayTracking,
} from "@/config/play-tracking";
import {
  toMotionPreference,
  type MotionPreference,
} from "@/config/motion-preference";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type UserPreferences = {
  motion: MotionPreference;
  /* What a new Play starts with. */
  newPlayDefaults: PlayTracking;
};

/*
 * The preferences Settings edits. A required read: a failure throws to the
 * page's error boundary instead of showing defaults you might save over. No
 * row yet reads as the defaults.
 */
export const readUserPreferences = async (): Promise<UserPreferences> => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Log in to see your settings.");
  }

  const { data, error } = await supabase
    .from("user_preferences")
    .select(
      "default_pokedex_mode, default_track_collectibles, default_track_story, motion",
    )
    .eq("user_id", userId)
    .maybeSingle();

  if (error) {
    throw new Error("Your preferences couldn't be loaded.");
  }

  return {
    motion: toMotionPreference(data?.motion),
    newPlayDefaults: data
      ? {
          collectibles: data.default_track_collectibles,
          pokedexMode: toPokedexMode(data.default_pokedex_mode),
          story: data.default_track_story,
        }
      : defaultPlayTracking,
  };
};
