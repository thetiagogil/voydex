import { createServerSupabaseClient } from "@/lib/supabase/server";
import type { Game } from "@/modules/codex/shared/types";
import { getGameCoverImageUrl } from "@/modules/codex/shared/media/game-images";
import {
  getEmptyPokemonDisplay,
  loadPokemonDisplayMetadata,
} from "@/modules/mainline/features/play/detail/shared/data/pokemon-display";
import {
  isUuid,
  uniqueNumberIds,
} from "@/modules/mainline/features/play/shared/data/query-utils";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { getClaimsWithTimeout } from "@/lib/supabase/auth";

export const getMainlinePlayDetailData = async (
  playId: string,
): Promise<MainlinePlayDetailData | null> => {
  if (!isUuid(playId)) {
    return null;
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Unable to load the current account.");
  }

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

  if (!overviewResult.data) {
    return null;
  }

  const overview = overviewResult.data;
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
    overview.game_id
      ? supabase
          .schema("reference")
          .from("games")
          .select("*")
          .eq("id", overview.game_id)
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

  const teamRows = teamResult.data ?? [];
  const pokedexRows = pokedexEntriesResult.data ?? [];
  const formIds = uniqueNumberIds([
    ...teamRows.map((pokemon) => pokemon.form_id),
    ...pokedexRows.map((entry) => entry.display_form_id),
  ]);
  const displayByFormId = await loadPokemonDisplayMetadata(
    supabase,
    formIds,
    overview.generation_id,
  );

  return {
    collectibleEntries: collectibleEntriesResult.data ?? [],
    completionSummary: completionSummaryResult.data ?? null,
    gameCoverImageUrl: gameResult.data
      ? getGameCoverImageUrl(gameResult.data as Game)
      : null,
    milestoneCategories: milestoneCategoriesResult.data ?? [],
    milestones: milestonesResult.data ?? [],
    overview,
    pokedexEntries: pokedexRows.map((entry) => ({
      ...entry,
      display: entry.display_form_id
        ? (displayByFormId.get(entry.display_form_id) ??
          getEmptyPokemonDisplay())
        : getEmptyPokemonDisplay(),
    })),
    team: teamRows.map((pokemon) => ({
      ...pokemon,
      display: pokemon.form_id
        ? (displayByFormId.get(pokemon.form_id) ?? getEmptyPokemonDisplay())
        : getEmptyPokemonDisplay(),
    })),
    teamPlanDetails: [],
    teamPlanSummary: null,
    timelineEvents: timelineEventsResult.data ?? [],
  };
};
