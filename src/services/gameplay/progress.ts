"use server";

import { createClient } from "@/lib/supabase/server";

type CategorySummary = {
  id: number;
  slug: string;
  name: string;
  items_total: number;
  items_completed: number;
  percentage_completed: number;
};

type ProgressItemWithUser = {
  id: number;
  slug: string;
  name: string;
  description?: string | null;
  userProgress?: {
    completed: boolean;
    completed_at?: string | null;
  } | null;
};

export const getPlayProgressCategories = async (playId: string) => {
  const supabase = await createClient();

  // 1) fetch play row to find game_id
  const { data: play, error: playErr } = await supabase
    .schema("gameplay")
    .from("plays")
    .select("id, game_id")
    .eq("id", playId)
    .maybeSingle();
  if (playErr) return { data: null, error: playErr };
  if (!play) return { data: null, error: null };

  // 2) fetch game to get version_group_id
  const { data: game, error: gameErr } = await supabase
    .schema("meta")
    .from("games")
    .select("id, version_group_id")
    .eq("id", play.game_id)
    .maybeSingle();
  if (gameErr) return { data: null, error: gameErr };
  if (!game) return { data: null, error: null };

  const versionGroupId = game.version_group_id;

  // 3) fetch categories for this version_group
  const { data: categories, error: catErr } = await supabase
    .schema("meta")
    .from("progress_categories")
    .select("id, slug, name, type, sort_order")
    .eq("version_group_id", versionGroupId)
    .order("sort_order", { ascending: true });
  if (catErr) return { data: null, error: catErr };

  const catList = categories || [];
  const categoryIds = catList.map((c: any) => c.id);

  if (categoryIds.length === 0) return { data: [], error: null };

  // 4) fetch progress_items for these categories
  const { data: items, error: itemsErr } = await supabase
    .schema("meta")
    .from("progress_items")
    .select("id, progress_category_id")
    .in("progress_category_id", categoryIds);
  if (itemsErr) return { data: null, error: itemsErr };

  // build mapping: categoryId -> array of item ids
  const itemsByCategory: Record<number, number[]> = {};
  (items || []).forEach((it: any) => {
    const catId = it.progress_category_id;
    itemsByCategory[catId] = itemsByCategory[catId] || [];
    itemsByCategory[catId].push(it.id);
  });

  // 5) fetch gameplay.progress rows for this play and these item ids
  const allItemIds = (items || []).map((i: any) => i.id);
  let progressRows: any[] = [];
  if (allItemIds.length > 0) {
    const { data: pRows, error: pErr } = await supabase
      .schema("gameplay")
      .from("progress")
      .select("progress_item_id, completed_at")
      .eq("play_id", playId)
      .in("progress_item_id", allItemIds);
    if (pErr) return { data: null, error: pErr };
    progressRows = pRows || [];
  }

  // map item id -> completed flag
  const completedByItem: Record<number, string | null> = {};
  progressRows.forEach((r: any) => {
    if (r && r.progress_item_id)
      completedByItem[r.progress_item_id] = r.completed_at || null;
  });

  // 6) for dex categories, fetch regional_dex and pokemon_caught counts
  const dexCategories = catList.filter((c: any) => c.type === "dex");
  let dexTotals: Record<number, { total: number; caught: number }> = {};

  if (dexCategories.length > 0) {
    // fetch regional dex count for this version_group
    const { data: regionalDex, error: rdErr } = await supabase
      .schema("meta")
      .from("regional_dex_entries")
      .select("id, species_id")
      .eq("version_group_id", versionGroupId);
    if (rdErr) return { data: null, error: rdErr };

    const regionalSpeciesIds = (regionalDex || []).map(
      (r: any) => r.species_id,
    );
    const totalDexCount = regionalSpeciesIds.length;

    // fetch pokemon_caught for this play matching regional dex species
    let caughtCount = 0;
    if (regionalSpeciesIds.length > 0) {
      const { data: caught, error: caughtErr } = await supabase
        .schema("gameplay")
        .from("pokemon_caught")
        .select("species_id")
        .eq("play_id", playId)
        .in("species_id", regionalSpeciesIds);
      if (caughtErr) return { data: null, error: caughtErr };
      caughtCount = (caught || []).length;
    }

    // apply same totals to all dex categories for this version_group
    dexCategories.forEach((c: any) => {
      dexTotals[c.id] = { total: totalDexCount, caught: caughtCount };
    });
  }

  // 7) build summary per category
  const summaries: CategorySummary[] = catList.map((c: any) => {
    let total: number;
    let completed: number;

    if (c.type === "dex" && dexTotals[c.id]) {
      // use regional dex totals
      total = dexTotals[c.id].total;
      completed = dexTotals[c.id].caught;
    } else {
      // use progress_items
      const itemIds = itemsByCategory[c.id] || [];
      total = itemIds.length;
      completed = itemIds.reduce(
        (acc, iid) => (completedByItem[iid] ? acc + 1 : acc),
        0,
      );
    }

    const percent =
      total === 0 ? 0 : Math.round((10000 * completed) / total) / 100; // 2 decimals
    return {
      id: c.id,
      slug: c.slug,
      name: c.name,
      items_total: total,
      items_completed: completed,
      percentage_completed: percent,
    };
  });

  return { data: summaries, error: null };
};

export const getPlayProgressItems = async (
  playId: string,
  categoryId: number,
) => {
  const supabase = await createClient();

  // 1) fetch items for category (no pagination as requested)
  const { data: items, error: itemsErr } = await supabase
    .schema("meta")
    .from("progress_items")
    .select("id, slug, name, description, sort_order")
    .eq("progress_category_id", categoryId)
    .order("sort_order", { ascending: true });
  if (itemsErr) return { data: null, error: itemsErr };

  const itemIds = (items || []).map((it: any) => it.id);

  // 2) fetch user progress rows for these items
  let progressRows: any[] = [];
  if (itemIds.length > 0) {
    const { data: pRows, error: pErr } = await supabase
      .schema("gameplay")
      .from("progress")
      .select("progress_item_id, completed_at")
      .eq("play_id", playId)
      .in("progress_item_id", itemIds);
    if (pErr) return { data: null, error: pErr };
    progressRows = pRows || [];
  }

  const progressByItem: Record<number, any> = {};
  progressRows.forEach((r: any) => {
    progressByItem[r.progress_item_id] = r;
  });

  const result: ProgressItemWithUser[] = (items || []).map((it: any) => ({
    id: it.id,
    slug: it.slug,
    name: it.name,
    description: it.description,
    userProgress: progressByItem[it.id]
      ? { completed: true, completed_at: progressByItem[it.id].completed_at }
      : null,
  }));

  return { data: result, error: null };
};
