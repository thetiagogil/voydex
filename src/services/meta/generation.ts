"use server";

import { createClient } from "@/lib/supabase/server";
import { getGameCoverUrl } from "@/lib/supabase/storage";
import type {
  GameWithPlayStats,
  GenerationUserStats,
  GenerationWithGames,
} from "@/types/gen";

// =============================================================================
// GET SINGLE GENERATION WITH GAMES
// =============================================================================

export const getGeneration = async (id: string) => {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Get the generation
  const { data: genData, error: genError } = await supabase
    .schema("meta")
    .from("generations")
    .select(
      "id, slug, name, start_year, new_pokemon_count, total_pokemon_count",
    )
    .eq("id", id)
    .maybeSingle();

  if (genError) return { data: null, error: genError };
  if (!genData) return { data: null, error: null };

  // Get games for this gen
  const { data: games, error: gamesError } = await supabase
    .schema("meta")
    .from("games")
    .select(
      `
      id, slug, name, release_year,
      game_type:game_types!inner(slug),
      region:regions!inner(id, slug, name)
    `,
    )
    .eq("generation_id", id)
    .order("id", { ascending: true });

  if (gamesError) return { data: null, error: gamesError };

  // Count games by type
  const gamesList = games || [];
  const mainGameCount = gamesList.filter(
    (g: any) => (g.game_type as any)?.slug === "main",
  ).length;
  const remakeCount = gamesList.filter(
    (g: any) => (g.game_type as any)?.slug === "remake",
  ).length;
  const enhancedCount = gamesList.filter(
    (g: any) => (g.game_type as any)?.slug === "enhanced",
  ).length;

  // Get user-specific stats if logged in
  let userStats: GenerationUserStats | null = null;
  let gameUserStats: Record<
    number,
    { total: number; active: number; completed: number }
  > = {};

  if (user) {
    const { data: playsData } = await supabase
      .schema("views")
      .from("play_summary")
      .select("play_id, game_id, status_slug")
      .eq("generation_id", parseInt(id))
      .eq("user_id", user.id);

    if (playsData && playsData.length > 0) {
      const gamesPlayed = new Set(playsData.map((p) => p.game_id)).size;
      userStats = {
        totalPlays: playsData.length,
        activePlays: playsData.filter((p) => p.status_slug === "active").length,
        completedPlays: playsData.filter((p) => p.status_slug === "completed")
          .length,
        gamesPlayed,
        uniqueSpeciesCaught: 0,
        lastPlayedAt: null,
      };

      // Aggregate per-game stats
      for (const play of playsData) {
        if (!gameUserStats[play.game_id]) {
          gameUserStats[play.game_id] = { total: 0, active: 0, completed: 0 };
        }
        gameUserStats[play.game_id].total++;
        if (play.status_slug === "active") gameUserStats[play.game_id].active++;
        if (play.status_slug === "completed")
          gameUserStats[play.game_id].completed++;
      }
    }
  }

  // Map games with their stats
  const gamesWithStats: GameWithPlayStats[] = await Promise.all(
    gamesList.map(async (game: any) => ({
      id: game.id,
      slug: game.slug,
      name: game.name,
      type: (game.game_type as any)?.slug,
      releaseYear: game.release_year,
      coverUrl: await getGameCoverUrl(game.slug),
      region: {
        id: (game.region as any).id,
        slug: (game.region as any).slug,
        name: (game.region as any).name,
      },
      stats: {
        totalPlays: gameUserStats[game.id]?.total || 0,
        activePlays: gameUserStats[game.id]?.active || 0,
        completedPlays: gameUserStats[game.id]?.completed || 0,
      },
    })),
  );

  // Build generation object
  const generation: GenerationWithGames = {
    id: genData.id,
    slug: genData.slug,
    name: genData.name,
    startYear: genData.start_year,
    newPokemonCount: genData.new_pokemon_count,
    totalPokemonCount: genData.total_pokemon_count,
    staticStats: {
      gameCount: gamesList.length,
      mainGameCount,
      remakeCount,
      enhancedCount,
    },
    userStats,
    games: gamesWithStats,
  };

  // Build breadcrumbs
  const breadcrumbs = [
    { label: "Dashboard", href: "/dashboard" },
    {
      label: generation.name,
      href: `/dashboard/gen/${generation.id}`,
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
