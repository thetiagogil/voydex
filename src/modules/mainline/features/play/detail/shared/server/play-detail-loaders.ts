import type { ServerSupabaseClient } from "@/lib/supabase/server";
import type { MainlinePlayDetailRows } from "@/modules/mainline/features/play/types";
import type { MainlinePlayOverview } from "@/modules/mainline/shared/types/mainline.types";

export const loadMainlinePlayOverview = async (
  supabase: ServerSupabaseClient,
  playId: string,
  userId: string,
): Promise<MainlinePlayOverview | null> => {
  const overviewResult = await supabase
    .schema("views")
    .from("mainline_play_overview")
    .select("*")
    .eq("play_id", playId)
    .eq("user_id", userId)
    .maybeSingle();

  if (overviewResult.error) {
    throw new Error("Unable to load Mainline play.");
  }

  return overviewResult.data ?? null;
};

export const loadMainlinePlayDetailRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
  userId: string,
  gameId: number | null,
): Promise<MainlinePlayDetailRows> => {
  const [
    completionSummaryResult,
    milestoneCategoriesResult,
    milestonesResult,
    pokedexEntriesResult,
    collectibleEntriesResult,
    teamResult,
    timelineEventsResult,
    gameResult,
  ] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_completion_summary")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_play_milestone_category_summary")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .order("category_sort_order", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_pokedex_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .order("pokedex_number", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_collectible_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .order("collectible_id", { ascending: true })
      .order("collectible_entry_sort_order", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_team_detail")
      .select("*")
      .eq("play_id", playId)
      .order("roster_state_id", { ascending: true })
      .order("slot", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_timeline_detail")
      .select("*")
      .eq("play_id", playId)
      .order("timeline_order", { ascending: false }),
    gameId
      ? supabase
          .schema("reference")
          .from("games")
          .select("*")
          .eq("id", gameId)
          .maybeSingle()
      : Promise.resolve({ data: null, error: null }),
  ]);

  if (
    completionSummaryResult.error ||
    milestoneCategoriesResult.error ||
    milestonesResult.error ||
    pokedexEntriesResult.error ||
    collectibleEntriesResult.error ||
    teamResult.error ||
    timelineEventsResult.error ||
    gameResult.error
  ) {
    throw new Error("Unable to load Mainline play details.");
  }

  return {
    collectibleEntries: collectibleEntriesResult.data ?? [],
    completionSummary: completionSummaryResult.data ?? null,
    game: gameResult.data ?? null,
    milestoneCategories: milestoneCategoriesResult.data ?? [],
    milestones: milestonesResult.data ?? [],
    pokedexEntries: pokedexEntriesResult.data ?? [],
    team: teamResult.data ?? [],
    timelineEvents: timelineEventsResult.data ?? [],
  };
};
