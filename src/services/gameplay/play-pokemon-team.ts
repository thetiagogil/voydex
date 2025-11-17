"use server";

import { createClient } from "@/lib/supabase/server";

export const getPlayPokemonTeam = async (playId: string) => {
  const supabase = await createClient();
  // Fetch raw team rows first (avoid relying on PostgREST relationship cache)
  const { data: teamRows, error: teamError } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("*")
    .eq("play_id", playId)
    .order("position", { ascending: true });

  if (teamError) return { data: null, error: teamError };

  const rows = teamRows || [];

  // Collect all referenced ids to fetch metadata in batch
  const speciesIds = new Set<number>();
  const formIds = new Set<number>();
  const natureIds = new Set<number>();
  const abilityIds = new Set<number>();
  const moveIds = new Set<number>();

  rows.forEach((r: any) => {
    if (r.species_id) speciesIds.add(r.species_id);
    if (r.form_id) formIds.add(r.form_id);
    if (r.nature_id) natureIds.add(r.nature_id);
    if (r.ability_id) abilityIds.add(r.ability_id);
    if (r.move1_id) moveIds.add(r.move1_id);
    if (r.move2_id) moveIds.add(r.move2_id);
    if (r.move3_id) moveIds.add(r.move3_id);
    if (r.move4_id) moveIds.add(r.move4_id);
  });

  const toArray = (s: Set<number>) => Array.from(s);

  // Helper to fetch a meta table by ids
  const fetchMeta = async (table: string, ids: number[]) => {
    if (ids.length === 0) return {};
    const { data: metaRows, error: metaErr } = await supabase
      .schema("meta")
      .from(table)
      .select("id, slug, name")
      .in("id", ids);
    if (metaErr) throw metaErr;
    const map: Record<number, any> = {};
    (metaRows || []).forEach((m: any) => (map[m.id] = m));
    return map;
  };

  // Fetch meta rows in parallel
  const [speciesMap, formMap, natureMap, abilityMap, movesMap] =
    await Promise.all([
      fetchMeta("pokemon_species", toArray(speciesIds)),
      fetchMeta("pokemon_forms", toArray(formIds)),
      fetchMeta("natures", toArray(natureIds)),
      fetchMeta("abilities", toArray(abilityIds)),
      fetchMeta("moves", toArray(moveIds)),
    ]);

  // Map rows into composed objects
  const result = rows.map((row: any) => {
    const moves: any[] = [];
    if (row.move1_id && movesMap[row.move1_id])
      moves.push(movesMap[row.move1_id]);
    if (row.move2_id && movesMap[row.move2_id])
      moves.push(movesMap[row.move2_id]);
    if (row.move3_id && movesMap[row.move3_id])
      moves.push(movesMap[row.move3_id]);
    if (row.move4_id && movesMap[row.move4_id])
      moves.push(movesMap[row.move4_id]);

    return {
      id: row.id,
      play_id: row.play_id,
      position: row.position,
      nickname: row.nickname,
      level: row.level,
      gender: row.gender,
      is_shiny: row.is_shiny,
      created_at: row.created_at,
      updated_at: row.updated_at,
      species: speciesMap[row.species_id] || null,
      form: formMap[row.form_id] || null,
      nature: natureMap[row.nature_id] || null,
      ability: abilityMap[row.ability_id] || null,
      moves,
    };
  });

  return { data: result, error: null };
};
