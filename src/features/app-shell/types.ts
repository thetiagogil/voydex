import type { MotionPreference } from "@/config/motion-preference";
import type { PublicTypeSlug } from "@/config/public-art";
import type { SearchFiltersPreference } from "@/config/search-filters-preference";

/* The Pokémon a trainer picked as their icon; `url` is null when its picture can't be shown. */
export type AccountIcon = {
  name: string;
  /* Its type, which tints the disc behind its icon. */
  typeSlug: PublicTypeSlug;
  url: string | null;
};

/*
 * You, as the bars, the account menu and the trainer card show it: the
 * profile and settings saved on this device, and the email of the account
 * you signed in with (only for backups; null when you haven't).
 */
export type AppAccount = {
  /* The name you chose on Welcome or in Settings; null until you choose one. */
  displayName: string | null;
  /* The signed-in account's email; null when you haven't signed in. */
  email: string | null;
  /* Your Pokémon icon; null until you pick one (your initial stands in). */
  icon: AccountIcon | null;
  /* Your Motion setting; Full until you choose or when it can't be read. */
  motion: MotionPreference;
  /* Your Search and filters setting; Folded until you choose or when it can't be read. */
  searchFilters: SearchFiltersPreference;
  /* "November 2024"; null when the profile couldn't be read. */
  trainerSince: string | null;
};
