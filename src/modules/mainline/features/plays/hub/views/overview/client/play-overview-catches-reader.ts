import type {
  OverviewCatchForm,
  OverviewCatchRow,
} from "@/modules/mainline/features/plays/hub/views/overview/data/latest-catches-mapper";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * More than the card shows, since a species comes back once per Pokédex it
 * sits in and the card keeps each once.
 */
const LATEST_CATCH_ROWS = 30;

/* The Play's newest caught Pokédex entries, for Overview's Pokédex card. */
export const readMainlinePlayLatestCatchRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<OverviewCatchRow[]> => {
  const result = await supabase
    .schema("views")
    .from("mainline_play_pokedex_detail")
    .select("caught_at, display_form_id, species_id, species_name")
    .eq("play_id", playId)
    .eq("is_caught", true)
    .not("caught_at", "is", null)
    .order("caught_at", { ascending: false })
    .limit(LATEST_CATCH_ROWS);

  if (result.error) {
    throw new Error("Unable to load the Play's latest catches.");
  }

  return result.data ?? [];
};

/* Every form of the caught species, so each is drawn as the right one. */
export const readMainlinePlayCatchForms = async (
  supabase: ServerSupabaseClient,
  speciesIds: number[],
): Promise<OverviewCatchForm[]> => {
  if (!speciesIds.length) {
    return [];
  }

  const result = await supabase
    .schema("reference")
    .from("pokemon_forms")
    .select("form_order, id, is_default, name, slug, species_id")
    .in("species_id", speciesIds);

  if (result.error) {
    throw new Error("Unable to load the Play's latest catches.");
  }

  return result.data ?? [];
};
