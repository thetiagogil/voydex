"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY COLLECTIBLES (from views.play_collectible_detail)
// =============================================================================

export const getPlayCollectibles = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_collectible_detail")
    .select("*")
    .eq("play_id", playId);

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const collectibleMap = new Map<
    number,
    {
      id: number;
      slug: string;
      name: string;
      collectibleType: string;
      totalCount: number | null;
      spriteUrl: string | null;
      entries: Array<{
        id: number;
        slug: string;
        name: string;
        locationName: string | null;
        subLocationName: string | null;
        description: string | null;
        sortOrder: number;
        isCollected: boolean;
      }>;
      collectedCount: number;
      versionGroupId: number;
      versionGroupName: string;
      isDlc: boolean;
    }
  >();

  for (const row of data) {
    const entry = {
      id: row.collectible_entry_id,
      slug: row.entry_slug,
      name: row.entry_name,
      locationName: row.location_name,
      subLocationName: row.sub_location_name,
      description: row.entry_description,
      sortOrder: row.entry_sort_order,
      isCollected: row.is_collected,
    };

    const existing = collectibleMap.get(row.collectible_id);
    if (existing) {
      existing.entries.push(entry);
      if (row.is_collected) existing.collectedCount++;
    } else {
      collectibleMap.set(row.collectible_id, {
        id: row.collectible_id,
        slug: row.collectible_slug,
        name: row.collectible_name,
        collectibleType: row.collectible_type,
        totalCount: row.total_count,
        spriteUrl: row.collectible_sprite_url,
        entries: [entry],
        collectedCount: row.is_collected ? 1 : 0,
        versionGroupId: row.version_group_id,
        versionGroupName: row.version_group_name,
        isDlc: row.parent_version_group_id !== null,
      });
    }
  }

  const result = Array.from(collectibleMap.values()).map((c) => ({
    ...c,
    entries: c.entries.sort((a, b) => a.sortOrder - b.sortOrder),
  }));

  return { data: result, error: null };
};

// =============================================================================
// COLLECT ENTRY
// =============================================================================

export const collectEntry = async (
  playId: string,
  collectibleEntryId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_collectible_entries")
    .insert({
      play_id: playId,
      collectible_entry_id: collectibleEntryId,
    })
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// UNCOLLECT ENTRY
// =============================================================================

export const uncollectEntry = async (
  playId: string,
  collectibleEntryId: number,
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("play_collectible_entries")
    .delete()
    .eq("play_id", playId)
    .eq("collectible_entry_id", collectibleEntryId);

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK COLLECT ENTRIES
// =============================================================================

export const collectEntriesBulk = async (
  playId: string,
  collectibleEntryIds: number[],
) => {
  const supabase = await createClient();

  const rows = collectibleEntryIds.map((id) => ({
    play_id: playId,
    collectible_entry_id: id,
  }));

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_collectible_entries")
    .upsert(rows, { onConflict: "play_id,collectible_entry_id" })
    .select();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// BULK UNCOLLECT ENTRIES
// =============================================================================

export const uncollectEntriesBulk = async (
  playId: string,
  collectibleEntryIds: number[],
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("play_collectible_entries")
    .delete()
    .eq("play_id", playId)
    .in("collectible_entry_id", collectibleEntryIds);

  if (error) return { success: false, error };
  return { success: true, error: null };
};
