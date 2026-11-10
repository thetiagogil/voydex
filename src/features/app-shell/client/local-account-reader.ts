import { toMotionPreference } from "@/config/motion-preference";
import { toSearchFiltersPreference } from "@/config/search-filters-preference";
import { readAccountIcon } from "@/features/app-shell/client/account-icon-reader";
import type { AppAccount } from "@/features/app-shell/types";
import { formatTrainerSince } from "@/features/app-shell/utils/trainer-since";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * You, from this device: the display name, Pokémon icon and when you
 * started from the profile, and the Motion and Search and filters settings.
 * The name, icon and "Trainer since" are quiet extras: a failed read leaves
 * them out.
 */
export const readLocalAccount = async (
  supabase: ServerSupabaseClient,
  { email, userId }: { email: string | null; userId: string },
): Promise<AppAccount> => {
  const [{ data: profile }, { data: preferences }] = await Promise.all([
    supabase
      .from("profiles")
      .select("created_at, display_name, icon_form_id")
      .eq("id", userId)
      .maybeSingle(),
    supabase
      .from("user_preferences")
      .select("motion, search_filters_open")
      .eq("user_id", userId)
      .maybeSingle(),
  ]);

  return {
    displayName: profile?.display_name?.trim() || null,
    email,
    icon: await readAccountIcon(supabase, profile?.icon_form_id ?? null),
    motion: toMotionPreference(preferences?.motion),
    searchFilters: toSearchFiltersPreference(preferences?.search_filters_open),
    trainerSince: formatTrainerSince(profile?.created_at),
  };
};
