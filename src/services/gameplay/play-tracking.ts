"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY TRACKING CATEGORIES (aggregated from play_tracking_detail view)
// =============================================================================

export const getPlayTrackingCategories = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_tracking_detail")
    .select(
      "category_id, category_slug, category_name, category_sort_order, is_completed",
    )
    .eq("play_id", playId);

  if (error) return { data: null, error };
  if (!data || data.length === 0) return { data: [], error: null };

  // Aggregate per category
  const categoryMap = new Map<
    number,
    {
      id: number;
      slug: string;
      name: string;
      sortOrder: number;
      totalItems: number;
      completedItems: number;
    }
  >();

  for (const row of data) {
    const existing = categoryMap.get(row.category_id);
    if (existing) {
      existing.totalItems++;
      if (row.is_completed) existing.completedItems++;
    } else {
      categoryMap.set(row.category_id, {
        id: row.category_id,
        slug: row.category_slug,
        name: row.category_name,
        sortOrder: row.category_sort_order,
        totalItems: 1,
        completedItems: row.is_completed ? 1 : 0,
      });
    }
  }

  const result = Array.from(categoryMap.values()).sort(
    (a, b) => a.sortOrder - b.sortOrder,
  );

  return { data: result, error: null };
};

// =============================================================================
// GET PLAY TRACKING ITEMS (from play_tracking_detail view)
// =============================================================================

export const getPlayTrackingItems = async (
  playId: string,
  categoryId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_tracking_detail")
    .select("*")
    .eq("play_id", playId)
    .eq("category_id", categoryId)
    .order("sort_order", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((item) => ({
    id: item.tracking_item_id,
    slug: item.tracking_item_slug,
    name: item.tracking_item_name,
    description: item.tracking_item_description,
    sortOrder: item.sort_order,
    isCompleted: item.is_completed,
    completedAt: item.completed_at,
  }));

  return { data: result, error: null };
};

// =============================================================================
// CHECK TRACKING ITEM (write to gameplay.play_tracking_items)
// =============================================================================

export const checkTrackingItem = async (
  playId: string,
  trackingItemId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_tracking_items")
    .insert({
      play_id: playId,
      tracking_item_id: trackingItemId,
      completed_at: new Date().toISOString(),
    })
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// UNCHECK TRACKING ITEM
// =============================================================================

export const uncheckTrackingItem = async (
  playId: string,
  trackingItemId: number,
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("play_tracking_items")
    .delete()
    .eq("play_id", playId)
    .eq("tracking_item_id", trackingItemId);

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK CHECK TRACKING ITEMS
// =============================================================================

export const checkTrackingItemBulk = async (
  playId: string,
  trackingItemIds: number[],
) => {
  const supabase = await createClient();

  const records = trackingItemIds.map((itemId) => ({
    play_id: playId,
    tracking_item_id: itemId,
    completed_at: new Date().toISOString(),
  }));

  const { error } = await supabase
    .schema("gameplay")
    .from("play_tracking_items")
    .upsert(records, {
      onConflict: "play_id,tracking_item_id",
      ignoreDuplicates: true,
    });

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK UNCHECK TRACKING ITEMS
// =============================================================================

export const uncheckTrackingItemBulk = async (
  playId: string,
  trackingItemIds: number[],
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("play_tracking_items")
    .delete()
    .eq("play_id", playId)
    .in("tracking_item_id", trackingItemIds);

  if (error) return { success: false, error };
  return { success: true, error: null };
};
