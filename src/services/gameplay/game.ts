"use server";

import { createClient } from "@/lib/supabase/server";
import { getGameCoverUrl } from "@/lib/supabase/storage";

// =============================================================================
// GET GAME WITH STATS
// =============================================================================

export const getGame = async (slug: string) => {
  const supabase = await createClient();

  const { data: game, error } = await supabase
    .schema("views")
    .from("game_with_stats")
    .select("*")
    .eq("game_slug", slug)
    .maybeSingle();

  if (error) return { data: null, error };
  if (!game) return { data: null, error: null };

  const result = {
    id: game.game_id,
    slug: game.game_slug,
    name: game.game_name,
    type: game.game_type,
    regional_dex_count: game.regional_dex_count,
    national_dex_count: game.national_dex_count,
    version_group_id: game.version_group_id,
    release_year: game.release_year,
    cover_url: await getGameCoverUrl(game.game_slug),
    generation: {
      id: game.generation_id,
      slug: game.generation_slug,
      name: game.generation_name,
    },
    region: {
      id: game.region_id,
      slug: game.region_slug,
      name: game.region_name,
    },
    progressCategoryCount: game.progress_category_count,
    progressItemCount: game.progress_item_count,
  };

  const breadcrumbs = [
    { label: "Dashboard", href: "/dashboard" },
    {
      label: game.generation_name,
      href: `/dashboard/gen/${game.generation_id}`,
    },
    {
      label: game.game_name,
      href: `/dashboard/gen/${game.generation_id}/game/${game.game_slug}`,
      current: true,
    },
  ];

  return { data: result, error: null, breadcrumbs };
};

// =============================================================================
// GET GAME USER STATS
// =============================================================================

export const getGameUserStats = async (gameId: string) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("game_user_stats")
    .select("*")
    .eq("game_id", gameId)
    .eq("user_id", user.id)
    .maybeSingle();

  if (error) return { data: null, error };

  return {
    data: data ?? {
      total_plays: 0,
      active_plays: 0,
      completed_plays: 0,
      planned_plays: 0,
      total_pokemon_caught: 0,
      total_progress_completed: 0,
    },
    error: null,
  };
};

// =============================================================================
// GET GAME PLAYS
// =============================================================================

export const getGamePlays = async (gameId: string) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("game_plays_with_stats")
    .select("*")
    .eq("game_id", gameId)
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((play) => ({
    id: play.play_id,
    name: play.play_name,
    status: play.status,
    updated_at: play.updated_at,
    teamSize: play.team_size,
    highestLevel: play.highest_level,
    pokemonCaughtCount: play.pokemon_caught_count,
    progressCompleted: play.completed_progress_items,
  }));

  return { data: result, error: null };
};

// =============================================================================
// GET GAMES BY GENERATION
// =============================================================================

export const getGamesByGeneration = async (generationId: number) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("game_with_stats")
    .select("*")
    .eq("generation_id", generationId)
    .order("release_year", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = await Promise.all(
    data.map(async (game) => ({
      id: game.game_id,
      slug: game.game_slug,
      name: game.game_name,
      type: game.game_type,
      regional_dex_count: game.regional_dex_count,
      national_dex_count: game.national_dex_count,
      release_year: game.release_year,
      cover_url: await getGameCoverUrl(game.game_slug),
      region: {
        id: game.region_id,
        slug: game.region_slug,
        name: game.region_name,
      },
      progressCategoryCount: game.progress_category_count,
      progressItemCount: game.progress_item_count,
    })),
  );

  return { data: result, error: null };
};
