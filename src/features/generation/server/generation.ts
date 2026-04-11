"use server";

import { createClient } from "@/lib/supabase/server";
import { getGameCoverUrl } from "@/lib/supabase/storage";
import type { UserStats } from "@/shared/types";
import type { GenerationData, GenerationGame } from "../types";

// =============================================================================
// GET SINGLE GENERATION OVERVIEW
// =============================================================================

export const getGenerationOverview = async (id: string) => {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Get the generation
  const { data: generationData, error: genError } = await supabase
    .schema("reference")
    .from("generations")
    .select(
      "id, slug, name, start_year, new_pokemon_count, total_pokemon_count",
    )
    .eq("id", id)
    .maybeSingle();

  if (genError) return { data: null, error: genError };
  if (!generationData) return { data: null, error: null };

  // Get games for this generation
  const { data: games, error: gamesError } = await supabase
    .schema("reference")
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

  // Get user-specific stats if logged in
  let userStats: UserStats | null = null;
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
      userStats = {
        totalPlays: playsData.length,
        activePlays: playsData.filter((p) => p.status_slug === "active").length,
        completedPlays: playsData.filter((p) => p.status_slug === "completed")
          .length,
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
  const gamesWithStats: GenerationGame[] = await Promise.all(
    gamesList.map(async (game: any) => ({
      id: game.id,
      slug: game.slug,
      name: game.name,
      type: (game.game_type as any)?.slug,
      releaseYear: game.release_year,
      coverUrl: (await getGameCoverUrl(game.slug)) || "",
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
  const generation: GenerationData = {
    id: generationData.id,
    slug: generationData.slug,
    name: generationData.name,
    startYear: generationData.start_year,
    newPokemonCount: generationData.new_pokemon_count,
    totalPokemonCount: generationData.total_pokemon_count,
    gameCount: gamesList.length,
    userStats,
    games: gamesWithStats,
  };

  // Build breadcrumbs
  const breadcrumbs = [
    { label: "Dashboard", href: "/dashboard" },
    {
      label: generation.name,
      href: `/dashboard/generation/${generation.id}`,
      current: true,
    },
  ];

  return {
    data: generation,
    error: null,
    breadcrumbs,
  };
};
