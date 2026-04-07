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
    itemTypeSlug: item.item_type_slug ?? null,
    itemTypeName: item.item_type_name ?? null,
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

// =============================================================================
// GET DECISION OPTIONS FOR A TRACKING ITEM
// =============================================================================

export const getDecisionOptions = async (trackingItemId: number) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("tracking")
    .from("item_decision_options")
    .select("id, slug, name, pokemon_species_id, pokemon_form_id, sort_order")
    .eq("tracking_item_id", trackingItemId)
    .order("sort_order", { ascending: true });

  if (error) return { data: null, error };

  // Fetch sprite slugs for options that reference a pokemon form
  const formIds = (data ?? [])
    .map((o) => o.pokemon_form_id)
    .filter((id): id is number => id !== null);

  let spriteMap = new Map<number, string | null>();
  if (formIds.length > 0) {
    const { data: forms } = await supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("id, pokemondb_sprite_slug")
      .in("id", formIds);

    if (forms) {
      for (const f of forms) {
        spriteMap.set(f.id, f.pokemondb_sprite_slug);
      }
    }
  }

  const enriched = (data ?? []).map((o) => ({
    ...o,
    pokemondb_sprite_slug: o.pokemon_form_id
      ? (spriteMap.get(o.pokemon_form_id) ?? null)
      : null,
  }));

  return { data: enriched, error: null };
};

// =============================================================================
// GET SELECTED DECISION FOR A PLAY ITEM
// =============================================================================

export const getPlayDecision = async (
  playId: string,
  trackingItemId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_tracking_decisions")
    .select("decision_option_id")
    .eq("play_id", playId)
    .eq("tracking_item_id", trackingItemId)
    .maybeSingle();

  if (error) return { data: null, error };
  return { data: data?.decision_option_id ?? null, error: null };
};

// =============================================================================
// SAVE DECISION (upsert or delete)
// =============================================================================

export const savePlayDecision = async (
  playId: string,
  trackingItemId: number,
  decisionOptionId: number | null,
) => {
  const supabase = await createClient();

  // If null, clear the decision and uncheck the item
  if (decisionOptionId === null) {
    const { error: deleteError } = await supabase
      .schema("gameplay")
      .from("play_tracking_decisions")
      .delete()
      .eq("play_id", playId)
      .eq("tracking_item_id", trackingItemId);

    if (deleteError) return { success: false, error: deleteError };

    // Also uncheck the tracking item
    await supabase
      .schema("gameplay")
      .from("play_tracking_items")
      .delete()
      .eq("play_id", playId)
      .eq("tracking_item_id", trackingItemId);

    return { success: true, error: null };
  }

  // Save decision
  const { error: decisionError } = await supabase
    .schema("gameplay")
    .from("play_tracking_decisions")
    .upsert(
      {
        play_id: playId,
        tracking_item_id: trackingItemId,
        decision_option_id: decisionOptionId,
      },
      { onConflict: "play_id,tracking_item_id" },
    );

  if (decisionError) return { success: false, error: decisionError };

  // Also mark the tracking item as completed
  await supabase.schema("gameplay").from("play_tracking_items").upsert(
    {
      play_id: playId,
      tracking_item_id: trackingItemId,
      completed_at: new Date().toISOString(),
    },
    { onConflict: "play_id,tracking_item_id" },
  );

  return { success: true, error: null };
};
