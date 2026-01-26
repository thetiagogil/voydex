"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY PROGRESS CATEGORIES
// =============================================================================

export const getPlayProgressCategories = async (playId: string) => {
  const supabase = await createClient();

  const { data: categories, error } = await supabase
    .schema("views")
    .from("play_progress_category_summary")
    .select("*")
    .eq("play_id", playId)
    .order("sort_order", { ascending: true });

  if (error) return { data: null, error };
  if (!categories || categories.length === 0) return { data: [], error: null };

  // For dex categories, calculate from regional dex
  const dexCategories = categories.filter((c) => c.category_type === "dex");
  let dexStats: { total: number; caught: number } | null = null;

  if (dexCategories.length > 0) {
    const { data: dexData } = await supabase
      .schema("views")
      .from("play_regional_dex")
      .select("species_id, is_caught, is_mythical")
      .eq("play_id", playId);

    if (dexData) {
      const includeMythical = categories[0]?.include_mythical_pokemon ?? true;
      const filtered = includeMythical
        ? dexData
        : dexData.filter((d) => !d.is_mythical);

      const uniqueSpecies = [...new Set(filtered.map((d) => d.species_id))];
      const caughtSpecies = [
        ...new Set(
          filtered.filter((d) => d.is_caught).map((d) => d.species_id),
        ),
      ];

      dexStats = {
        total: uniqueSpecies.length,
        caught: caughtSpecies.length,
      };
    }
  }

  const result = categories.map((c) => {
    const isDex = c.category_type === "dex";
    return {
      id: c.category_id,
      slug: c.category_slug,
      name: c.category_name,
      type: c.category_type,
      description: c.category_description,
      sortOrder: c.sort_order,
      totalItems: isDex ? (dexStats?.total ?? 0) : c.total_items,
      completedItems: isDex ? (dexStats?.caught ?? 0) : c.completed_items,
    };
  });

  return { data: result, error: null };
};

// =============================================================================
// GET PLAY PROGRESS ITEMS
// =============================================================================

export const getPlayProgressItems = async (
  playId: string,
  categoryId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_progress_items_with_status")
    .select("*")
    .eq("play_id", playId)
    .eq("category_id", categoryId)
    .order("sort_order", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((item) => ({
    id: item.item_id,
    slug: item.item_slug,
    name: item.item_name,
    description: item.item_description,
    location: item.location,
    sortOrder: item.sort_order,
    completed: item.is_completed,
    completedAt: item.completed_at,
  }));

  return { data: result, error: null };
};

// =============================================================================
// CHECK PROGRESS ITEM
// =============================================================================

export const checkProgressItem = async (
  playId: string,
  progressItemId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("progress")
    .insert({
      play_id: playId,
      progress_item_id: progressItemId,
      completed_at: new Date().toISOString(),
    })
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// UNCHECK PROGRESS ITEM
// =============================================================================

export const uncheckProgressItem = async (
  playId: string,
  progressItemId: number,
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("progress")
    .delete()
    .eq("play_id", playId)
    .eq("progress_item_id", progressItemId);

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK CHECK PROGRESS ITEMS
// =============================================================================

export const checkProgressItemBulk = async (
  playId: string,
  progressItemIds: number[],
) => {
  const supabase = await createClient();

  const records = progressItemIds.map((itemId) => ({
    play_id: playId,
    progress_item_id: itemId,
    completed_at: new Date().toISOString(),
  }));

  const { error } = await supabase
    .schema("gameplay")
    .from("progress")
    .upsert(records, {
      onConflict: "play_id,progress_item_id",
      ignoreDuplicates: false,
    });

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK UNCHECK PROGRESS ITEMS
// =============================================================================

export const uncheckProgressItemBulk = async (
  playId: string,
  progressItemIds: number[],
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("progress")
    .delete()
    .eq("play_id", playId)
    .in("progress_item_id", progressItemIds);

  if (error) return { success: false, error };
  return { success: true, error: null };
};
