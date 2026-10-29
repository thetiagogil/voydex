/*
 * The Search and filters choice in Settings. Folded (the default) keeps a
 * list's bar under its search button until you open it or a search or filter
 * is on; Always open shows it on arrival, and the button still folds it for
 * that visit. Saved as `user_preferences.search_filters_open`; `useFold`
 * reads it.
 */

export const searchFiltersPreferences = ["folded", "open"] as const;

export type SearchFiltersPreference = (typeof searchFiltersPreferences)[number];

export const searchFiltersPreferenceOptions: readonly {
  label: string;
  value: SearchFiltersPreference;
}[] = [
  { label: "Folded", value: "folded" },
  { label: "Always open", value: "open" },
];

/* The stored switch as the choice; Folded when there is no row yet. */
export const toSearchFiltersPreference = (
  open: boolean | null | undefined,
): SearchFiltersPreference => (open ? "open" : "folded");
