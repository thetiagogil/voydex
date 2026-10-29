"use server";

import { revalidatePath } from "next/cache";
import { z } from "zod";

import { motionPreferences } from "@/config/motion-preference";
import { playTrackingSchema, type PlayTracking } from "@/config/play-tracking";
import { appRoutes } from "@/config/routes";
import { searchFiltersPreferences } from "@/config/search-filters-preference";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import type { TablesInsert } from "@/shared/types/database.types";
import { safeParseInput } from "@/shared/utils/input-schemas";

export type PreferencesActionResult = {
  message: string;
  status: "error" | "success";
};

const lookAndFeelSchema = z.object({
  motion: z.enum(motionPreferences, {
    error: "Pick Follow device, Full or Reduced.",
  }),
  searchFilters: z.enum(searchFiltersPreferences, {
    error: "Pick Folded or Always open.",
  }),
});

export type LookAndFeel = z.infer<typeof lookAndFeelSchema>;

const SAVE_FAILED = "Your settings couldn't be saved. Try again in a moment.";

/*
 * Saves part of your preferences row, creating it on first save. Look and
 * feel shows on every page and the defaults feed New Play, so the whole app
 * is revalidated.
 */
const saveOwnPreferences = async (
  update: Omit<TablesInsert<"user_preferences">, "user_id">,
  message: string,
): Promise<PreferencesActionResult> => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    return { message: "Log in again to save your settings.", status: "error" };
  }

  const { error } = await supabase
    .from("user_preferences")
    .upsert({ ...update, user_id: userId }, { onConflict: "user_id" });

  if (error) {
    return { message: SAVE_FAILED, status: "error" };
  }

  revalidatePath(appRoutes.home, "layout");

  return { message, status: "success" };
};

/* Look and feel: Motion, and whether lists keep search and filters open. */
export const saveLookAndFeelAction = async (
  lookAndFeel: LookAndFeel,
): Promise<PreferencesActionResult> => {
  const parsed = safeParseInput(lookAndFeelSchema, lookAndFeel);

  if (!parsed.ok) {
    return { message: parsed.message, status: "error" };
  }

  return saveOwnPreferences(
    {
      motion: parsed.data.motion,
      search_filters_open: parsed.data.searchFilters === "open",
    },
    "Look and feel saved",
  );
};

/* New Play defaults: what a new Play starts tracking. Each Play can change it. */
export const saveNewPlayDefaultsAction = async (
  defaults: PlayTracking,
): Promise<PreferencesActionResult> => {
  const parsed = safeParseInput(playTrackingSchema, defaults);

  if (!parsed.ok) {
    return { message: parsed.message, status: "error" };
  }

  return saveOwnPreferences(
    {
      default_pokedex_mode: parsed.data.pokedexMode,
      default_track_collectibles: parsed.data.collectibles,
      default_track_story: parsed.data.story,
    },
    "New Play defaults saved",
  );
};
