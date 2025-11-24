"use server";

import { createClient } from "@/lib/supabase/server";

export const getPlayPokemonTeam = async (playId: string) => {
  const supabase = await createClient();

  // First, fetch the play to determine the generation
  const { data: play, error: playErr } = await supabase
    .schema("gameplay")
    .from("plays")
    .select("id, game_id")
    .eq("id", playId)
    .maybeSingle();
  if (playErr) return { data: null, error: playErr };
  if (!play) return { data: null, error: null };

  const { data: game, error: gameErr } = await supabase
    .schema("meta")
    .from("games")
    .select("generation_id")
    .eq("id", play.game_id)
    .maybeSingle();
  if (gameErr) return { data: null, error: gameErr };
  if (!game) return { data: null, error: null };

  // Fetch raw team rows
  const { data: teamRows, error: teamError } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("*")
    .eq("play_id", playId)
    .order("position", { ascending: true });

  if (teamError) return { data: null, error: teamError };

  const rows = teamRows || [];
  if (rows.length === 0) return { data: [], error: null };

  // Collect referenced ids
  const speciesIds = new Set<number>();
  const formIds = new Set<number>();
  const natureIds = new Set<number>();
  const moveIds = new Set<number>();

  rows.forEach((r: any) => {
    if (r.species_id) speciesIds.add(r.species_id);
    if (r.form_id) formIds.add(r.form_id);
    if (r.nature_id) natureIds.add(r.nature_id);
    if (r.move1_id) moveIds.add(r.move1_id);
    if (r.move2_id) moveIds.add(r.move2_id);
    if (r.move3_id) moveIds.add(r.move3_id);
    if (r.move4_id) moveIds.add(r.move4_id);
  });

  const toArray = (s: Set<number>) => Array.from(s);

  // Use generation view to get Pokemon data with types and abilities already joined
  const generationView = `pokemon_generation_${["i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix"][game.generation_id - 1]}`;

  const { data: pokemonData, error: pokemonErr } = await supabase
    .schema("views")
    .from(generationView)
    .select("*")
    .in("species_id", toArray(speciesIds))
    .in("form_id", toArray(formIds));
  if (pokemonErr) return { data: null, error: pokemonErr };

  // Build Pokemon lookup by form_id
  const pokemonByForm: Record<number, any> = {};
  (pokemonData || []).forEach((p: any) => {
    pokemonByForm[p.form_id] = p;
  });

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

  // Fetch only natures and moves separately
  const [natureMap, movesMap] = await Promise.all([
    fetchMeta("natures", toArray(natureIds)),
    fetchMeta("moves", toArray(moveIds)),
  ]);

  // Map rows into composed objects using generation view data
  const result = rows.map((row: any) => {
    const pokemon = pokemonByForm[row.form_id];

    const types: any[] = [];
    if (pokemon?.type1_id) {
      types.push({
        id: pokemon.type1_id,
        slug: pokemon.type1_slug,
        name: pokemon.type1_name,
      });
    }
    if (pokemon?.type2_id) {
      types.push({
        id: pokemon.type2_id,
        slug: pokemon.type2_slug,
        name: pokemon.type2_name,
      });
    }

    const moves: any[] = [];
    if (row.move1_id && movesMap[row.move1_id])
      moves.push(movesMap[row.move1_id]);
    if (row.move2_id && movesMap[row.move2_id])
      moves.push(movesMap[row.move2_id]);
    if (row.move3_id && movesMap[row.move3_id])
      moves.push(movesMap[row.move3_id]);
    if (row.move4_id && movesMap[row.move4_id])
      moves.push(movesMap[row.move4_id]);

    // Extract ability from team row's ability_id or use Pokemon's default ability
    let ability = null;
    if (row.ability_id && pokemon) {
      // Find which ability matches (ability1, ability2, or hidden_ability)
      if (row.ability_id === pokemon.ability1_id) {
        ability = {
          id: pokemon.ability1_id,
          slug: pokemon.ability1_slug,
          name: pokemon.ability1_name,
        };
      } else if (row.ability_id === pokemon.ability2_id) {
        ability = {
          id: pokemon.ability2_id,
          slug: pokemon.ability2_slug,
          name: pokemon.ability2_name,
        };
      } else if (row.ability_id === pokemon.hidden_ability_id) {
        ability = {
          id: pokemon.hidden_ability_id,
          slug: pokemon.hidden_ability_slug,
          name: pokemon.hidden_ability_name,
        };
      }
    }

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
      species: pokemon
        ? {
            id: pokemon.species_id,
            slug: pokemon.species_slug,
            name: pokemon.species_name,
          }
        : null,
      form: pokemon
        ? {
            id: pokemon.form_id,
            slug: pokemon.form_slug,
            name: pokemon.form_name,
            sprite_url: pokemon.sprite_url,
          }
        : null,
      types,
      nature: natureMap[row.nature_id] || null,
      ability,
      moves,
    };
  });

  return { data: result, error: null };
};

export const addPokemonToTeam = async (
  playId: string,
  pokemon: {
    species_id: number;
    form_id: number;
    position: number;
    nickname?: string;
    level: number;
    gender?: string;
    is_shiny?: boolean;
    nature_id?: number;
    ability_id?: number;
    move1_id?: number;
    move2_id?: number;
    move3_id?: number;
    move4_id?: number;
  },
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .insert({
      play_id: playId,
      ...pokemon,
    })
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

export const updatePokemonInTeam = async (
  pokemonId: string,
  updates: {
    position?: number;
    nickname?: string;
    level?: number;
    gender?: string;
    is_shiny?: boolean;
    nature_id?: number;
    ability_id?: number;
    move1_id?: number;
    move2_id?: number;
    move3_id?: number;
    move4_id?: number;
  },
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .update(updates)
    .eq("id", pokemonId)
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

export const removePokemonFromTeam = async (pokemonId: string) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .delete()
    .eq("id", pokemonId);

  if (error) return { data: null, error };
  return { data: { success: true }, error: null };
};
