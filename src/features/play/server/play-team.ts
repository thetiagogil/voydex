"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY TEAM (from views.play_team_detail)
// =============================================================================

export const getPlayTeam = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_team_detail")
    .select("*")
    .eq("play_id", playId)
    .order("position", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((row: Record<string, unknown>) => ({
    id: row.team_pokemon_id,
    playId: playId,
    position: row.position,
    nickname: row.nickname,
    level: row.level,
    gender: row.gender,
    isShiny: row.is_shiny,
    species: {
      id: row.species_id,
      slug: row.species_slug,
      name: row.species_name,
    },
    form: {
      id: row.form_id,
      slug: row.form_slug,
      name: row.form_name,
      pokemonDbSpriteSlug: row.pokemondb_sprite_slug,
    },
    types: [
      row.type1_id && {
        id: row.type1_id,
        slug: row.type1_slug,
        name: row.type1_name,
      },
      row.type2_id && {
        id: row.type2_id,
        slug: row.type2_slug,
        name: row.type2_name,
      },
    ].filter(Boolean),
    nature: row.nature_id
      ? { id: row.nature_id, slug: row.nature_slug, name: row.nature_name }
      : null,
    ability: row.ability_id
      ? { id: row.ability_id, slug: row.ability_slug, name: row.ability_name }
      : null,
    moves: [
      row.move1_id && {
        id: row.move1_id,
        slug: row.move1_slug,
        name: row.move1_name,
      },
      row.move2_id && {
        id: row.move2_id,
        slug: row.move2_slug,
        name: row.move2_name,
      },
      row.move3_id && {
        id: row.move3_id,
        slug: row.move3_slug,
        name: row.move3_name,
      },
      row.move4_id && {
        id: row.move4_id,
        slug: row.move4_slug,
        name: row.move4_name,
      },
    ].filter(Boolean),
  }));

  return { data: result, error: null };
};

// =============================================================================
// ADD POKEMON TO TEAM
// =============================================================================

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

  const { count } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("*", { count: "exact", head: true })
    .eq("play_id", playId);

  if (count !== null && count >= 12) {
    return {
      data: null,
      error: {
        message: "Team is full. Maximum 12 Pokemon allowed.",
        code: "TEAM_FULL",
      },
    };
  }

  const { data: existingPokemon } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("id, position")
    .eq("play_id", playId)
    .eq("position", pokemon.position)
    .maybeSingle();

  if (existingPokemon) {
    return {
      data: null,
      error: {
        message: `Position ${pokemon.position} is already occupied.`,
        code: "POSITION_OCCUPIED",
      },
    };
  }

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

// =============================================================================
// UPDATE POKEMON IN TEAM
// =============================================================================

export const updateTeamPokemon = async (
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

  if (updates.position !== undefined) {
    const { data: currentPokemon, error: currentError } = await supabase
      .schema("gameplay")
      .from("pokemon_team")
      .select("position, play_id")
      .eq("id", pokemonId)
      .single();

    if (currentError) return { data: null, error: currentError };

    const oldPosition = currentPokemon.position;
    const newPosition = updates.position;

    if (oldPosition !== newPosition) {
      const { data: occupyingPokemon } = await supabase
        .schema("gameplay")
        .from("pokemon_team")
        .select("id, position")
        .eq("play_id", currentPokemon.play_id)
        .eq("position", newPosition)
        .neq("id", pokemonId)
        .maybeSingle();

      if (occupyingPokemon) {
        const tempPosition = 999;

        await supabase
          .schema("gameplay")
          .from("pokemon_team")
          .update({ position: tempPosition })
          .eq("id", pokemonId);

        await supabase
          .schema("gameplay")
          .from("pokemon_team")
          .update({ position: oldPosition })
          .eq("id", occupyingPokemon.id);

        updates.position = newPosition;
      }
    }
  }

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

// =============================================================================
// REMOVE POKEMON FROM TEAM
// =============================================================================

export const removeTeamPokemon = async (pokemonId: string) => {
  const supabase = await createClient();

  const { data: removedPokemon, error: getError } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("position, play_id")
    .eq("id", pokemonId)
    .single();

  if (getError) return { data: null, error: getError };

  const removedPosition = removedPokemon.position;
  const isActiveTeam = removedPosition <= 6;

  const { error: deleteError } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .delete()
    .eq("id", pokemonId);

  if (deleteError) return { data: null, error: deleteError };

  const startPosition = isActiveTeam ? 1 : 7;
  const endPosition = isActiveTeam ? 6 : 12;

  const { data: remainingTeam, error: teamError } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("id, position")
    .eq("play_id", removedPokemon.play_id)
    .gte("position", startPosition)
    .lte("position", endPosition)
    .gt("position", removedPosition)
    .order("position", { ascending: true });

  if (teamError) return { data: null, error: teamError };

  if (remainingTeam && remainingTeam.length > 0) {
    for (const pokemon of remainingTeam) {
      await supabase
        .schema("gameplay")
        .from("pokemon_team")
        .update({ position: pokemon.position - 1 })
        .eq("id", pokemon.id);
    }
  }

  return { data: { success: true }, error: null };
};
