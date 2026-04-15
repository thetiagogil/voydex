"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// PLAY COMPLETION CALCULATION
// =============================================================================

export type PlayCompletionResult = {
  percentage: number;
  isFullyComplete: boolean;
}

export const getPlayCompletion = async (
  playId: string,
): Promise<{ data: PlayCompletionResult | null; error: unknown }> => {
  const supabase = await createClient();

  const { data: settings, error: settingsError } = await supabase
    .schema("gameplay")
    .from("plays")
    .select("include_mythical_pokemon, include_pokedex, include_other_pokedex")
    .eq("id", playId)
    .single();

  if (settingsError || !settings) return { data: null, error: settingsError };

  const [trackingResult, pokedexResult, collectiblesResult] = await Promise.all(
    [
      supabase
        .schema("views")
        .from("play_tracking_detail")
        .select("category_id, version_group_id, is_completed")
        .eq("play_id", playId),
      supabase
        .schema("views")
        .from("play_pokedex_detail")
        .select("pokedex_id, pokedex_kind, is_caught, is_mythical")
        .eq("play_id", playId),
      supabase
        .schema("views")
        .from("play_collectible_detail")
        .select("collectible_id, is_collected")
        .eq("play_id", playId),
    ],
  );

  if (trackingResult.error) return { data: null, error: trackingResult.error };
  if (pokedexResult.error) return { data: null, error: pokedexResult.error };
  if (collectiblesResult.error)
    return { data: null, error: collectiblesResult.error };

  const cardResults: { completed: number; total: number }[] = [];

  // Tracking cards (one card per category + version group)
  const catMap = new Map<string, { completed: number; total: number }>();
  for (const row of trackingResult.data ?? []) {
    const key = `${row.category_id}-${row.version_group_id}`;
    const existing = catMap.get(key);
    if (existing) {
      existing.total++;
      if (row.is_completed) existing.completed++;
    } else {
      catMap.set(key, { total: 1, completed: row.is_completed ? 1 : 0 });
    }
  }
  for (const cat of catMap.values()) {
    cardResults.push(cat);
  }

  // Pokedex cards (one card per pokedex)
  const dexMap = new Map<
    number,
    { kind: string; completed: number; total: number }
  >();
  for (const row of pokedexResult.data ?? []) {
    const pid = row.pokedex_id;
    if (!dexMap.has(pid)) {
      dexMap.set(pid, { kind: row.pokedex_kind, completed: 0, total: 0 });
    }
    if (!settings.include_mythical_pokemon && row.is_mythical) continue;
    const dex = dexMap.get(pid)!;
    dex.total++;
    if (row.is_caught) dex.completed++;
  }
  for (const dex of dexMap.values()) {
    const isRegional = dex.kind === "regional" || dex.kind === "expansion";
    const isOther = dex.kind === "national" || dex.kind === "special";
    if (isRegional && !settings.include_pokedex) continue;
    if (isOther && !settings.include_other_pokedex) continue;
    cardResults.push(dex);
  }

  // Collectibles cards (one card per collectible set)
  const colMap = new Map<number, { completed: number; total: number }>();
  for (const row of collectiblesResult.data ?? []) {
    const cid = row.collectible_id;
    const existing = colMap.get(cid);
    if (existing) {
      existing.total++;
      if (row.is_collected) existing.completed++;
    } else {
      colMap.set(cid, { total: 1, completed: row.is_collected ? 1 : 0 });
    }
  }
  for (const col of colMap.values()) {
    cardResults.push(col);
  }

  if (cardResults.length === 0) {
    return { data: { percentage: 0, isFullyComplete: false }, error: null };
  }

  const isFullyComplete = cardResults.every(
    (c) => c.total > 0 && c.completed === c.total,
  );

  const sum = cardResults.reduce(
    (acc, c) => acc + (c.total > 0 ? (c.completed / c.total) * 100 : 0),
    0,
  );
  const percentage = Math.floor(sum / cardResults.length);

  return { data: { percentage, isFullyComplete }, error: null };
};
