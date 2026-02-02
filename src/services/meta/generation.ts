"use server";

import { createClient } from "@/lib/supabase/server";
import { getGameCoverUrl } from "@/lib/supabase/storage";

// =============================================================================
// GET SINGLE GENERATION WITH GAMES
// =============================================================================

export const getGeneration = async (id: string) => {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Get the generation with static stats from view
  const { data: genData, error: genError } = await supabase
    .schema("views")
    .from("generation_with_stats")
    .select("*")
    .eq("generation_id", id)
    .maybeSingle();

  if (genError) return { data: null, error: genError };
  if (!genData) return { data: null, error: null };

  // Get user-specific stats if logged in
  let userStats: GenerationUserStats | null = null;
  if (user) {
    const { data: userStatsData } = await supabase
      .schema("views")
      .from("generation_user_stats")
      .select("*")
      .eq("generation_id", id)
      .eq("user_id", user.id)
      .maybeSingle();

    if (userStatsData) {
      userStats = {
        totalPlays: userStatsData.total_plays,
        activePlays: userStatsData.active_plays,
        completedPlays: userStatsData.completed_plays,
        gamesPlayed: userStatsData.games_played,
        uniqueSpeciesCaught: userStatsData.unique_species_caught,
        lastPlayedAt: userStatsData.last_played_at,
      };
    }
  }

  // Get games for this gen with their static info and user play stats
  const { data: games, error: gamesError } = await supabase
    .schema("views")
    .from("game_with_stats")
    .select("*")
    .eq("generation_id", id)
    .order("game_id", { ascending: true });

  if (gamesError) return { data: null, error: gamesError };

  // Get user play counts per game
  let gameUserStats: Record<
    number,
    { total: number; active: number; completed: number }
  > = {};
  if (user) {
    const { data: userGameStats } = await supabase
      .schema("views")
      .from("game_user_stats")
      .select("*")
      .eq("user_id", user.id);

    if (userGameStats) {
      gameUserStats = userGameStats.reduce(
        (acc, stats) => {
          acc[stats.game_id] = {
            total: stats.total_plays,
            active: stats.active_plays,
            completed: stats.completed_plays,
          };
          return acc;
        },
        {} as Record<
          number,
          { total: number; active: number; completed: number }
        >,
      );
    }
  }

  // Map games with their stats
  const gamesWithStats: GameWithPlayStats[] = await Promise.all(
    (games || []).map(async (game) => ({
      id: game.game_id,
      slug: game.game_slug,
      name: game.game_name,
      type: game.game_type,
      releaseYear: game.release_year,
      regionalDexCount: game.regional_dex_count,
      cover_url: await getGameCoverUrl(game.game_slug),
      region: {
        id: game.region_id,
        slug: game.region_slug,
        name: game.region_name,
      },
      stats: {
        totalPlays: gameUserStats[game.game_id]?.total || 0,
        activePlays: gameUserStats[game.game_id]?.active || 0,
        completedPlays: gameUserStats[game.game_id]?.completed || 0,
      },
    })),
  );

  // Build generation object
  const generation: GenerationWithGames = {
    id: genData.generation_id,
    slug: genData.generation_slug,
    name: genData.generation_name,
    start_year: genData.start_year,
    end_year: genData.end_year,
    new_pokemon_count: genData.new_pokemon_count,
    total_pokemon_count: genData.total_pokemon_count,
    staticStats: {
      gameCount: genData.game_count,
      mainGameCount: genData.main_game_count,
      remakeCount: genData.remake_count,
      enhancedCount: genData.enhanced_count,
    },
    userStats,
    games: gamesWithStats,
  };

  // Build breadcrumbs
  const breadcrumbs = [
    { label: "Adventures", href: "/adventures" },
    {
      label: generation.name,
      href: `/adventures/gen/${generation.id}`,
      current: true,
    },
  ];

  return {
    data: generation,
    error: null,
    breadcrumbs,
  };
};

// =============================================================================
// GET ALL GENERATIONS (for dropdowns/lists)
// =============================================================================

export const getGenerations = async () => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("meta")
    .from("generations")
    .select("id, slug, name")
    .order("id");

  return { data, error };
};
