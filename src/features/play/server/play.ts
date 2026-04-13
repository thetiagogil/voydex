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
      sortOrder: play.status_sort_order,
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

  return { data: result, error: null };
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
    status_slug?: string;
    notes?: string;
    include_pokedex?: boolean;
    include_other_pokedex?: boolean;
    include_mythical_pokemon?: boolean;
  },
) => {
  const supabase = await createClient();

  // Resolve status_slug to status_id if provided
  const { status_slug, ...rest } = updates;
  const dbUpdates: Record<string, unknown> = { ...rest };

  if (status_slug) {
    const { data: status } = await supabase
      .schema("gameplay")
      .from("play_statuses")
      .select("id")
      .eq("slug", status_slug)
      .single();

    if (status) {
      dbUpdates.status_id = status.id;
    }
  }

  const { data, error } = await supabase
    .schema("gameplay")
    .from("plays")
    .update(dbUpdates)
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
