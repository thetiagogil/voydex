"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET USER PLAYS (from views.play_summary)
// =============================================================================

export const getUserPlays = async () => {
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
      id: play.status_id,
      slug: play.status_slug,
      name: play.status_name,
      isTerminal: play.status_is_terminal,
      sortOrder: play.status_sort_order ?? 0,
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
