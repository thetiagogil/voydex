"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY DETAILS (from views.play_summary)
// =============================================================================

export const getPlay = async (id: string) => {
  const supabase = await createClient();

  const { data: play, error } = await supabase
    .schema("views")
    .from("play_summary")
    .select("*")
    .eq("play_id", id)
    .maybeSingle();

  if (error) return { data: null, error };
  if (!play) return { data: null, error: null };

  const result = {
    id: play.play_id,
    userId: play.user_id,
    name: play.play_name,
    status: {
      id: play.status_id,
      slug: play.status_slug,
      name: play.status_name,
      isTerminal: play.status_is_terminal,
    },
    notes: play.notes,
    includePokedex: play.include_pokedex,
    includeOtherPokedex: play.include_other_pokedex,
    includeMythicalPokemon: play.include_mythical_pokemon,
    createdAt: play.created_at,
    updatedAt: play.updated_at,
    game: {
      id: play.game_id,
      slug: play.game_slug,
      name: play.game_name,
      type: play.game_type_slug,
      versionGroupId: play.version_group_id,
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
// GET PLAY STATS (direct queries against actual tables)
// =============================================================================

export const getPlayStats = async (playId: string) => {
  const supabase = await createClient();

  // Team stats
  const { data: teamData } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("level, is_shiny")
    .eq("play_id", playId);

  // Pokédex stats
  const { data: dexData } = await supabase
    .schema("gameplay")
    .from("play_pokedex_entries")
    .select("is_caught")
    .eq("play_id", playId)
    .eq("is_caught", true);

  // Tracking stats
  const { data: trackingData } = await supabase
    .schema("gameplay")
    .from("play_tracking_items")
    .select("tracking_item_id")
    .eq("play_id", playId);

  const teamSize = teamData?.length ?? 0;
  const highestLevel =
    teamData && teamData.length > 0
      ? Math.max(...teamData.map((t) => t.level))
      : 0;
  const shinyCount = teamData?.filter((t) => t.is_shiny).length ?? 0;

  return {
    data: {
      teamSize,
      highestLevel,
      shinyCount,
      pokedexCaughtCount: dexData?.length ?? 0,
      completedTrackingItems: trackingData?.length ?? 0,
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
    include_pokedex?: boolean;
    include_other_pokedex?: boolean;
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
    .select("id, slug, name, is_terminal, sort_order")
    .order("sort_order", { ascending: true });

  if (error) return { data: null, error };
  return { data: data ?? [], error: null };
};

// =============================================================================
// GET ALL USER PLAYS (from views.play_summary)
// =============================================================================

export const getAllUserPlays = async () => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("play_summary")
    .select("*")
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((play) => ({
    id: play.play_id,
    name: play.play_name,
    status: {
      slug: play.status_slug,
      name: play.status_name,
      isTerminal: play.status_is_terminal,
    },
    createdAt: play.created_at,
    updatedAt: play.updated_at,
    game: {
      id: play.game_id,
      slug: play.game_slug,
      name: play.game_name,
      type: play.game_type_slug,
      versionGroupId: play.version_group_id,
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
  }));

  return { data: result, error: null };
};
