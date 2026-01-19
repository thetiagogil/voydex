"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET GENERATION WITH STATS
// =============================================================================

export const getGeneration = async (generationId: number) => {
  const supabase = await createClient();

  const { data: gen, error } = await supabase
    .schema("views")
    .from("generation_with_stats")
    .select("*")
    .eq("generation_id", generationId)
    .maybeSingle();

  if (error) return { data: null, error };
  if (!gen) return { data: null, error: null };

  const result = {
    id: gen.generation_id,
    slug: gen.generation_slug,
    name: gen.generation_name,
    stats: {
      totalGames: gen.game_count,
      totalPlays: gen.total_plays,
      activePlays: gen.active_plays,
      completedPlays: gen.completed_plays,
    },
  };

  const breadcrumbs = [
    { label: "Adventures", href: "/adventures" },
    {
      label: gen.generation_name,
      href: `/adventures/gen/${gen.generation_id}`,
      current: true,
    },
  ];

  return { data: result, error: null, breadcrumbs };
};

// =============================================================================
// GET GENERATION USER STATS
// =============================================================================

export const getGenerationUserStats = async (generationId: number) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("generation_user_stats")
    .select("*")
    .eq("generation_id", generationId)
    .eq("user_id", user.id)
    .maybeSingle();

  if (error) return { data: null, error };

  return {
    data: data ?? {
      total_plays: 0,
      active_plays: 0,
      completed_plays: 0,
      games_played: 0,
      total_pokemon_caught: 0,
    },
    error: null,
  };
};

// =============================================================================
// GET ALL GENERATIONS
// =============================================================================

export const getAllGenerations = async () => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("generation_with_stats")
    .select("*")
    .order("generation_id", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((gen) => ({
    id: gen.generation_id,
    slug: gen.generation_slug,
    name: gen.generation_name,
    gameCount: gen.game_count,
    stats: {
      totalPlays: gen.total_plays,
      activePlays: gen.active_plays,
      completedPlays: gen.completed_plays,
    },
  }));

  return { data: result, error: null };
};

// =============================================================================
// GET USER DASHBOARD STATS
// =============================================================================

export const getDashboardStats = async () => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("user_dashboard_stats")
    .select("*")
    .eq("user_id", user.id)
    .maybeSingle();

  if (error) return { data: null, error };

  return {
    data: data ?? {
      total_plays: 0,
      active_plays: 0,
      completed_plays: 0,
      planned_plays: 0,
      games_played: 0,
      generations_explored: 0,
      total_pokemon_caught: 0,
      total_team_pokemon: 0,
      shiny_pokemon: 0,
      highest_level_pokemon: 0,
      progress_items_completed: 0,
    },
    error: null,
  };
};

// =============================================================================
// GET RECENT ACTIVITY
// =============================================================================

export const getRecentActivity = async (limit = 10) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("recent_activity")
    .select("*")
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false })
    .limit(limit);

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((activity) => ({
    play: {
      id: activity.play_id,
      name: activity.play_name,
      status: activity.status,
      updated_at: activity.updated_at,
    },
    game: {
      id: activity.game_id,
      slug: activity.game_slug,
      name: activity.game_name,
    },
    generation: {
      id: activity.generation_id,
      slug: activity.generation_slug,
      name: activity.generation_name,
    },
    stats: {
      teamSize: activity.team_size,
      highestLevel: activity.highest_level,
      pokemonCaught: activity.pokemon_caught_count,
    },
    href: `/adventures/gen/${activity.generation_id}/game/${activity.game_slug}/play/${activity.play_id}`,
  }));

  return { data: result, error: null };
};

// =============================================================================
// GET ADVENTURE OVERVIEW
// =============================================================================

export const getAdventureOverview = async () => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const [statsResult, activityResult, generationsResult] = await Promise.all([
    supabase
      .schema("views")
      .from("user_dashboard_stats")
      .select("*")
      .eq("user_id", user.id)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("recent_activity")
      .select("*")
      .eq("user_id", user.id)
      .order("updated_at", { ascending: false })
      .limit(5),
    supabase
      .schema("views")
      .from("generation_user_stats")
      .select("*")
      .eq("user_id", user.id)
      .order("generation_id", { ascending: true }),
  ]);

  if (statsResult.error) return { data: null, error: statsResult.error };
  if (activityResult.error) return { data: null, error: activityResult.error };
  if (generationsResult.error)
    return { data: null, error: generationsResult.error };

  return {
    data: {
      stats: statsResult.data ?? {
        total_plays: 0,
        active_plays: 0,
        completed_plays: 0,
        total_pokemon_caught: 0,
      },
      recentActivity: activityResult.data ?? [],
      generationProgress: generationsResult.data ?? [],
    },
    error: null,
  };
};
