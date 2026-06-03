"use server";

import { createClient } from "@/lib/supabase/server";

type SupabaseClient = Awaited<ReturnType<typeof createClient>>;

type DecisionOptionRow = {
  id: number;
  tracking_item_id: number;
  slug: string;
  name: string;
  pokemon_species_id: number | null;
  pokemon_form_id: number | null;
  sort_order: number;
};

const getPokemonFormSpriteMap = async (
  supabase: SupabaseClient,
  formIds: number[],
) => {
  const uniqueFormIds = [...new Set(formIds)];

  if (uniqueFormIds.length === 0) {
    return { data: new Map<number, string | null>(), error: null };
  }

  const { data, error } = await supabase
    .schema("reference")
    .from("pokemon_forms")
    .select("id, pokemondb_sprite_slug")
    .in("id", uniqueFormIds);

  if (error) {
    return { data: null, error };
  }

  const spriteMap = new Map<number, string | null>();

  for (const form of data ?? []) {
    spriteMap.set(form.id, form.pokemondb_sprite_slug);
  }

  return { data: spriteMap, error: null };
};

// =============================================================================
// GET PLAY TRACKING CATEGORIES
// =============================================================================

export const getPlayTrackingCategories = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_tracking_detail")
    .select(
      "category_id, category_slug, category_name, category_sort_order, is_completed, version_group_id, version_group_name, parent_version_group_id",
    )
    .eq("play_id", playId);

  if (error) return { data: null, error };
  if (!data || data.length === 0) return { data: [], error: null };

  const categoryMap = new Map<
    string,
    {
      id: number;
      slug: string;
      name: string;
      sortOrder: number;
      totalItems: number;
      completedItems: number;
      versionGroupId: number;
      versionGroupName: string;
      isDlc: boolean;
    }
  >();

  for (const row of data) {
    const key = `${row.category_id}-${row.version_group_id}`;
    const existing = categoryMap.get(key);
    if (existing) {
      existing.totalItems++;
      if (row.is_completed) existing.completedItems++;
    } else {
      categoryMap.set(key, {
        id: row.category_id,
        slug: row.category_slug,
        name: row.category_name,
        sortOrder: row.category_sort_order,
        totalItems: 1,
        completedItems: row.is_completed ? 1 : 0,
        versionGroupId: row.version_group_id,
        versionGroupName: row.version_group_name,
        isDlc: row.parent_version_group_id !== null,
      });
    }
  }

  const result = Array.from(categoryMap.values()).sort(
    (a, b) => a.versionGroupId - b.versionGroupId || a.sortOrder - b.sortOrder,
  );

  return { data: result, error: null };
};

// =============================================================================
// GET PLAY TRACKING ITEMS
// =============================================================================

export const getPlayTrackingItems = async (
  playId: string,
  categoryId: number,
  versionGroupId?: number,
) => {
  const supabase = await createClient();

  let query = supabase
    .schema("views")
    .from("play_tracking_detail")
    .select("*")
    .eq("play_id", playId)
    .eq("category_id", categoryId)
    .order("sort_order", { ascending: true });

  if (versionGroupId !== undefined) {
    query = query.eq("version_group_id", versionGroupId);
  }

  const { data, error } = await query;

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const decisionItemIds = data
    .filter((item) => item.item_type_slug === "decision")
    .map((item) => item.tracking_item_id);

  const decisionOptionsByItem = new Map<number, DecisionOptionRow[]>();
  const selectedDecisionIds = new Map<number, number>();

  if (decisionItemIds.length > 0) {
    const { data: decisionOptionsData, error: decisionOptionsError } =
      await supabase
        .schema("tracking")
        .from("item_decision_options")
        .select(
          "id, tracking_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order",
        )
        .in("tracking_item_id", decisionItemIds)
        .order("sort_order", { ascending: true });

    if (decisionOptionsError) return { data: null, error: decisionOptionsError };

    for (const option of (decisionOptionsData ?? []) as DecisionOptionRow[]) {
      const existing = decisionOptionsByItem.get(option.tracking_item_id);

      if (existing) {
        existing.push(option);
        continue;
      }

      decisionOptionsByItem.set(option.tracking_item_id, [option]);
    }

    const { data: selectedDecisions, error: selectedDecisionsError } =
      await supabase
        .schema("gameplay")
        .from("play_tracking_decisions")
        .select("tracking_item_id, decision_option_id")
        .eq("play_id", playId)
        .in("tracking_item_id", decisionItemIds);

    if (selectedDecisionsError) {
      return { data: null, error: selectedDecisionsError };
    }

    for (const decision of selectedDecisions ?? []) {
      selectedDecisionIds.set(
        decision.tracking_item_id,
        decision.decision_option_id,
      );
    }
  }

  const { data: spriteMap, error: spriteMapError } = await getPokemonFormSpriteMap(
    supabase,
    Array.from(decisionOptionsByItem.values())
      .flat()
      .map((option) => option.pokemon_form_id)
      .filter((formId): formId is number => formId !== null),
  );

  if (spriteMapError) return { data: null, error: spriteMapError };

  const result = data.map((item: Record<string, unknown>) => ({
    id: item.tracking_item_id,
    slug: item.tracking_item_slug,
    name: item.tracking_item_name,
    description: item.tracking_item_description,
    itemTypeSlug: item.item_type_slug ?? null,
    itemTypeName: item.item_type_name ?? null,
    sortOrder: item.sort_order,
    isCompleted: item.is_completed,
    completedAt: item.completed_at,
    opponent: null,
    badge: null,
    decisionOptions:
      decisionOptionsByItem.get(item.tracking_item_id as number)?.map((option) => ({
        id: option.id,
        slug: option.slug,
        name: option.name,
        pokemonSpeciesId: option.pokemon_species_id,
        pokemonFormId: option.pokemon_form_id,
        pokemonDbSpriteSlug: option.pokemon_form_id
          ? (spriteMap?.get(option.pokemon_form_id) ?? null)
          : null,
        sortOrder: option.sort_order,
      })) ?? null,
    selectedDecisionId:
      selectedDecisionIds.get(item.tracking_item_id as number) ?? null,
    pokemonRefs: null,
  }));

  return { data: result, error: null };
};

// =============================================================================
// CHECK TRACKING ITEM
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

  const rawOptions = (data ?? []) as DecisionOptionRow[];
  const { data: spriteMap, error: spriteMapError } = await getPokemonFormSpriteMap(
    supabase,
    rawOptions
      .map((option) => option.pokemon_form_id)
      .filter((formId): formId is number => formId !== null),
  );

  if (spriteMapError) {
    return { data: null, error: spriteMapError };
  }

  const enriched = rawOptions.map((option) => ({
    id: option.id,
    slug: option.slug,
    name: option.name,
    pokemonSpeciesId: option.pokemon_species_id,
    pokemonFormId: option.pokemon_form_id,
    pokemonDbSpriteSlug: option.pokemon_form_id
      ? (spriteMap?.get(option.pokemon_form_id) ?? null)
      : null,
    sortOrder: option.sort_order,
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
  return {
    data: { selectedOptionId: data?.decision_option_id ?? null },
    error: null,
  };
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

  if (decisionOptionId === null) {
    const { error: deleteError } = await supabase
      .schema("gameplay")
      .from("play_tracking_decisions")
      .delete()
      .eq("play_id", playId)
      .eq("tracking_item_id", trackingItemId);

    if (deleteError) return { success: false, error: deleteError };

    const { error: uncheckError } = await supabase
      .schema("gameplay")
      .from("play_tracking_items")
      .delete()
      .eq("play_id", playId)
      .eq("tracking_item_id", trackingItemId);

    if (uncheckError) return { success: false, error: uncheckError };

    return { success: true, error: null };
  }

  const { data: decisionOption, error: decisionOptionError } = await supabase
    .schema("tracking")
    .from("item_decision_options")
    .select("id")
    .eq("id", decisionOptionId)
    .eq("tracking_item_id", trackingItemId)
    .maybeSingle();

  if (decisionOptionError) return { success: false, error: decisionOptionError };
  if (!decisionOption) {
    return {
      success: false,
      error: { message: "Invalid decision option for tracking item" },
    };
  }

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

  const { error: checkError } = await supabase
    .schema("gameplay")
    .from("play_tracking_items")
    .upsert(
      {
        play_id: playId,
        tracking_item_id: trackingItemId,
        completed_at: new Date().toISOString(),
      },
      { onConflict: "play_id,tracking_item_id" },
    );

  if (checkError) return { success: false, error: checkError };

  return { success: true, error: null };
};
