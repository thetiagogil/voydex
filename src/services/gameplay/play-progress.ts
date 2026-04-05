"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY PROGRESS CATEGORIES (aggregated from play_progress_detail view)
// =============================================================================

export const getPlayProgressCategories = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_progress_detail")
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
// GET PLAY PROGRESS ITEMS (from play_progress_detail view)
// =============================================================================

export const getPlayProgressItems = async (
  playId: string,
  categoryId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_progress_detail")
    .select("*")
    .eq("play_id", playId)
    .eq("category_id", categoryId)
    .order("sort_order", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((item) => ({
    id: item.progress_item_id,
    slug: item.progress_item_slug,
    name: item.progress_item_name,
    description: item.progress_item_description,
    sortOrder: item.sort_order,
    isCompleted: item.is_completed,
    completedAt: item.completed_at,
  }));

  return { data: result, error: null };
};

// =============================================================================
// CHECK PROGRESS ITEM (write to progress.play_items)
// =============================================================================

export const checkProgressItem = async (
  playId: string,
  progressItemId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("progress")
    .from("play_items")
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
    .schema("progress")
    .from("play_items")
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
    .schema("progress")
    .from("play_items")
    .upsert(records, {
      onConflict: "play_id,progress_item_id",
      ignoreDuplicates: true,
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
    .schema("progress")
    .from("play_items")
    .delete()
    .eq("play_id", playId)
    .in("progress_item_id", progressItemIds);

  if (error) return { success: false, error };
  return { success: true, error: null };
};
