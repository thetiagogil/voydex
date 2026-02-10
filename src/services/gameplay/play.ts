"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY DETAILS
// =============================================================================

export const getPlay = async (id: string) => {
  const supabase = await createClient();

  const { data: play, error } = await supabase
    .schema("views")
    .from("play_details")
    .select("*")
    .eq("play_id", id)
    .maybeSingle();

  if (error) return { data: null, error };
  if (!play) return { data: null, error: null };

  const result = {
    id: play.play_id,
    user_id: play.user_id,
    name: play.play_name,
    status: play.status,
    notes: play.notes,
    include_unique_pokemon: play.include_unique_pokemon,
    include_regional_dex: play.include_regional_dex,
    include_national_dex: play.include_national_dex,
    include_mythical_pokemon: play.include_mythical_pokemon,
    created_at: play.created_at,
    updated_at: play.updated_at,
    game: {
      id: play.game_id,
      slug: play.game_slug,
      name: play.game_name,
      type: play.game_type,
      regional_dex_count: play.regional_dex_count,
      national_dex_count: play.national_dex_count,
      version_group_id: play.version_group_id,
      generation: {
        id: play.generation_id,
        slug: play.generation_slug,
        name: play.generation_name,
      },
      region: {
        id: play.region_id,
        slug: play.region_slug,
        name: play.region_name,
      },
    },
  };

  const breadcrumbs = [
    { label: "Dashboard", href: "/dashboard" },
    {
      label: play.generation_name,
      href: `/dashboard/gen/${play.generation_id}`,
    },
    {
      label: play.game_name,
      href: `/dashboard/gen/${play.generation_id}/game/${play.game_slug}`,
    },
    {
      label: play.play_name || "My Playthrough",
      href: `/dashboard/gen/${play.generation_id}/game/${play.game_slug}/play/${play.play_id}`,
      current: true,
    },
  ];

  return { data: result, error: null, breadcrumbs };
};

// =============================================================================
// GET PLAY STATS
// =============================================================================

export const getPlayStats = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_stats")
    .select("*")
    .eq("play_id", playId)
    .maybeSingle();

  if (error) return { data: null, error };

  return {
    data: {
      teamSize: data?.team_size ?? 0,
      highestLevel: data?.highest_level ?? 0,
      shinyCount: data?.shiny_count ?? 0,
      pokemonCaughtCount: data?.pokemon_caught_count ?? 0,
      completedProgressItems: data?.completed_progress_items ?? 0,
    },
    error: null,
  };
};

// =============================================================================
// CREATE PLAY
// =============================================================================

export const createPlay = async (gameId: number, name?: string) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  // Default status_id = 1 (active) is set by the database default
  const { data, error } = await supabase
    .schema("gameplay")
    .from("plays")
    .insert({
      user_id: user.id,
      game_id: gameId,
      name: name || null,
    })
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// UPDATE PLAY
// =============================================================================

export const updatePlay = async (
  playId: string,
  updates: {
    name?: string;
    status_id?: number;
    notes?: string;
    include_unique_pokemon?: boolean;
    include_regional_dex?: boolean;
    include_national_dex?: boolean;
    include_mythical_pokemon?: boolean;
  },
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("plays")
    .update(updates)
    .eq("id", playId)
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// DELETE PLAY
// =============================================================================

export const deletePlay = async (playId: string) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("plays")
    .delete()
    .eq("id", playId);

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// GET PLAY STATUSES (lookup table)
// =============================================================================

export const getPlayStatuses = async () => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_statuses")
    .select("id, slug, name, description, is_terminal, sort_order")
    .order("sort_order", { ascending: true });

  if (error) return { data: null, error };
  return { data: data ?? [], error: null };
};

// =============================================================================
// GET ALL USER PLAYS
// =============================================================================

export const getAllUserPlays = async () => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("all_user_plays")
    .select("*")
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((play) => ({
    id: play.play_id,
    name: play.play_name,
    status: play.status,
    created_at: play.created_at,
    updated_at: play.updated_at,
    game: {
      id: play.game_id,
      slug: play.game_slug,
      name: play.game_name,
      type: play.game_type,
      regional_dex_count: play.regional_dex_count,
      national_dex_count: play.national_dex_count,
      generation: {
        id: play.generation_id,
        slug: play.generation_slug,
        name: play.generation_name,
      },
      region: {
        id: play.region_id,
        slug: play.region_slug,
        name: play.region_name,
      },
    },
    team_size: play.team_size,
    highest_level: play.highest_level,
    pokemon_caught_count: play.pokemon_caught_count,
    completed_progress_items: play.completed_progress_items,
    total_progress_items: play.total_progress_items,
    regional_dex_count: play.regional_dex_count,
    pokemon_team: play.pokemon_team,
  }));

  return { data: result, error: null };
};
