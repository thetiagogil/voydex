"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET AVAILABLE DLCS FOR A VERSION GROUP
// =============================================================================

export const getAvailableDlcs = async (versionGroupId: number) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("reference")
    .from("version_groups")
    .select("id, slug, name")
    .eq("parent_version_group_id", versionGroupId)
    .order("id", { ascending: true });

  if (error) return { data: null, error };
  return { data: data ?? [], error: null };
};

// =============================================================================
// GET ENABLED DLCS FOR A PLAY
// =============================================================================

export const getPlayDlcs = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_optional_version_groups")
    .select("version_group_id")
    .eq("play_id", playId);

  if (error) return { data: null, error };
  return {
    data: (data ?? []).map((d) => d.version_group_id),
    error: null,
  };
};

// =============================================================================
// SET PLAY DLCS (replaces all DLC selections for a play)
// =============================================================================

export const setPlayDlcs = async (
  playId: string,
  versionGroupIds: number[],
) => {
  const supabase = await createClient();

  const { error: deleteError } = await supabase
    .schema("gameplay")
    .from("play_optional_version_groups")
    .delete()
    .eq("play_id", playId);

  if (deleteError) return { success: false, error: deleteError };

  if (versionGroupIds.length > 0) {
    const records = versionGroupIds.map((vgId) => ({
      play_id: playId,
      version_group_id: vgId,
    }));

    const { error: insertError } = await supabase
      .schema("gameplay")
      .from("play_optional_version_groups")
      .insert(records);

    if (insertError) return { success: false, error: insertError };
  }

  return { success: true, error: null };
};
