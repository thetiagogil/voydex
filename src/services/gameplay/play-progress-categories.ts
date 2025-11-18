"use server";

import { createClient } from "@/lib/supabase/server";

export const getPlayProgressCategories = async (playId: string) => {
  const supabase = await createClient();

  // 1) fetch play row to find game_id and mythical flag
  const { data: play, error: playErr } = await supabase
    .schema("gameplay")
    .from("plays")
    .select("id, game_id, include_mythical_pokemon")
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

  // 3) fetch categories for this version_group (include type for dex handling)
  const { data: categories, error: catErr } = await supabase
    .schema("meta")
    .from("progress_categories")
    .select("id, slug, name, type, description, sort_order, version_group_id")
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

  // 6) build summary per category
  // Special-case dex categories: compute totals from regional_dex_entries and pokemon_caught
  const dexCategories = catList.filter(
    (c: any) => c.slug === "regional-pokedex" || c.slug === "national-pokedex",
  );
  let dexTotals: Record<number, { total: number; caught: number }> = {};

  // Handle regional/national dex categories
  if (dexCategories.length > 0) {
    // fetch regional dex entries for this version_group
    const { data: regionalDex, error: rdErr } = await supabase
      .schema("meta")
      .from("regional_dex_entries")
      .select("species_id, form_id")
      .eq("version_group_id", versionGroupId);
    if (rdErr) return { data: null, error: rdErr };

    let filteredDex = regionalDex || [];

    // Filter out mythical Pokemon if flag is false
    if (!play.include_mythical_pokemon && filteredDex.length > 0) {
      const speciesIds = [
        ...new Set(filteredDex.map((r: any) => r.species_id)),
      ];
      const { data: speciesData, error: speciesErr } = await supabase
        .schema("meta")
        .from("pokemon_species")
        .select("id, is_mythical")
        .in("id", speciesIds);
      if (speciesErr) return { data: null, error: speciesErr };

      const mythicalIds = new Set(
        (speciesData || [])
          .filter((s: any) => s.is_mythical)
          .map((s: any) => s.id),
      );

      filteredDex = filteredDex.filter(
        (r: any) => !mythicalIds.has(r.species_id),
      );
    }

    const regionalKeys = filteredDex.map((r: any) =>
      r.form_id ? `${r.species_id}:${r.form_id}` : `${r.species_id}`,
    );

    // fetch pokemon_caught for this play
    let caughtCount = 0;
    if (regionalKeys.length > 0) {
      const speciesIds = [
        ...new Set(filteredDex.map((r: any) => r.species_id)),
      ];
      const { data: caught, error: caughtErr } = await supabase
        .schema("gameplay")
        .from("pokemon_caught")
        .select("species_id, form_id")
        .eq("play_id", playId)
        .in("species_id", speciesIds);
      if (caughtErr) return { data: null, error: caughtErr };

      const caughtSet = new Set<string>();
      (caught || []).forEach((c: any) => {
        const key = c.form_id
          ? `${c.species_id}:${c.form_id}`
          : `${c.species_id}`;
        caughtSet.add(key);
      });

      caughtCount = regionalKeys.reduce(
        (acc: number, k: string) => (caughtSet.has(k) ? acc + 1 : acc),
        0,
      );
    }

    const totalDexCount = regionalKeys.length;
    dexCategories.forEach((c: any) => {
      dexTotals[c.id] = { total: totalDexCount, caught: caughtCount };
    });
  }

  const summaries: PlayProgressCategory[] = catList.map((c: any) => {
    let total: number;
    let completed: number;

    if (dexTotals[c.id]) {
      // Use dex totals from pokemon_caught
      total = dexTotals[c.id].total;
      completed = dexTotals[c.id].caught;
    } else {
      // Use progress_items for all other categories (badges, elite-four, legendary, etc.)
      const itemIds = itemsByCategory[c.id] || [];
      total = itemIds.length;
      completed = itemIds.reduce(
        (acc, iid) => (completedByItem[iid] ? acc + 1 : acc),
        0,
      );
    }

    const percent =
      total === 0 ? 0 : Math.round((10000 * completed) / total) / 100;
    return {
      id: c.id,
      slug: c.slug,
      name: c.name,
      description: c.description,
      items_total: total,
      items_completed: completed,
      percentage_completed: percent,
    };
  });

  return { data: summaries, error: null };
};
