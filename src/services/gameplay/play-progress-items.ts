"use server";

import { createClient } from "@/lib/supabase/server";

export const getPlayProgressItems = async (
  playId: string,
  categoryId: number,
) => {
  const supabase = await createClient();

  // 0) fetch category to check type (dex special-case)
  const { data: category, error: catErr } = await supabase
    .schema("meta")
    .from("progress_categories")
    .select("id, type, version_group_id")
    .eq("id", categoryId)
    .maybeSingle();
  if (catErr) return { data: null, error: catErr };
  if (!category) return { data: [], error: null };

  // 1) fetch items for category (no pagination as requested)
  const { data: items, error: itemsErr } = await supabase
    .schema("meta")
    .from("progress_items")
    .select("id, slug, name, description, location, sort_order")
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

  // 3) if this is a dex category, compute derived completion from regional_dex_entries + pokemon_caught
  let dexDerivedCompleted = false;
  if (category.type === "dex") {
    // fetch regional dex entries for the category's version_group
    const vgId = category.version_group_id;
    const { data: regionalDex, error: rdErr } = await supabase
      .schema("meta")
      .from("regional_dex_entries")
      .select("species_id, form_id")
      .eq("version_group_id", vgId);
    if (rdErr) return { data: null, error: rdErr };

    const regionalKeys = (regionalDex || []).map((r: any) =>
      r.form_id ? `${r.species_id}:${r.form_id}` : `${r.species_id}`,
    );

    if (regionalKeys.length === 0) {
      dexDerivedCompleted = false;
    } else {
      const speciesIds = [
        ...new Set((regionalDex || []).map((r: any) => r.species_id)),
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

      const matched = regionalKeys.reduce(
        (acc: number, k: string) => (caughtSet.has(k) ? acc + 1 : acc),
        0,
      );
      dexDerivedCompleted = matched >= regionalKeys.length;
    }
  }

  const result: PlayProgressItem[] = (items || []).map((it: any) => {
    const explicit = progressByItem[it.id];
    if (explicit)
      return {
        id: it.id,
        slug: it.slug,
        name: it.name,
        description: it.description,
        location: it.location,
        userProgress: { completed: true, completed_at: explicit.completed_at },
      };

    // if no explicit progress and category is dex, use derived completion
    if (!explicit && category.type === "dex" && dexDerivedCompleted) {
      return {
        id: it.id,
        slug: it.slug,
        name: it.name,
        description: it.description,
        location: it.location,
        userProgress: { completed: true, completed_at: null },
      };
    }

    return {
      id: it.id,
      slug: it.slug,
      name: it.name,
      description: it.description,
      location: it.location,
      userProgress: null,
    };
  });

  return { data: result, error: null };
};
