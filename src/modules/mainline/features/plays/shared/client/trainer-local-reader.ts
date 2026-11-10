import {
  defaultPlayTracking,
  toPokedexMode,
  type PlayTracking,
} from "@/config/play-tracking";
import { runQuery, type LocalDb } from "@/platform/local-db/local-db";

/*
 * The device user's trainer name for a new Play: the default trainer name
 * from Settings, else the display name. Null when neither is set.
 */
export const readLocalTrainerName = async (db: LocalDb) => {
  const [profile] = await runQuery<{
    default_trainer_name: string | null;
    display_name: string | null;
  }>(
    db,
    "SELECT default_trainer_name, display_name FROM public.profiles WHERE id = auth.uid()",
  );

  return (
    profile?.default_trainer_name?.trim() ||
    profile?.display_name?.trim() ||
    null
  );
};

/* What a new Play starts tracking: your New Play defaults, else everything. */
export const readLocalTrackingDefaults = async (
  db: LocalDb,
): Promise<PlayTracking> => {
  const [preferences] = await runQuery<{
    default_pokedex_mode: string;
    default_track_collectibles: boolean;
    default_track_story: boolean;
  }>(
    db,
    `SELECT default_pokedex_mode, default_track_collectibles, default_track_story
     FROM public.user_preferences WHERE user_id = auth.uid()`,
  );

  return preferences
    ? {
        collectibles: preferences.default_track_collectibles,
        pokedexMode: toPokedexMode(preferences.default_pokedex_mode),
        story: preferences.default_track_story,
      }
    : defaultPlayTracking;
};
