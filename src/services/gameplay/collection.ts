"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET USER POKEMON COLLECTION
// =============================================================================

export const getUserPokemonCollection = async () => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("user_pokemon_collection")
    .select("*")
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((pokemon) => ({
    id: pokemon.pokemon_id,
    playId: pokemon.play_id,
    source: pokemon.source,
    nickname: pokemon.nickname,
    level: pokemon.level,
    gender: pokemon.gender,
    isShiny: pokemon.is_shiny,
    position: pokemon.position,
    createdAt: pokemon.created_at,
    updatedAt: pokemon.updated_at,
    play: {
      id: pokemon.play_id,
      name: pokemon.play_name,
      status: pokemon.play_status,
    },
    game: {
      id: pokemon.game_id,
      slug: pokemon.game_slug,
      name: pokemon.game_name,
      generation: {
        id: pokemon.generation_id,
        slug: pokemon.generation_slug,
        name: pokemon.generation_name,
      },
    },
    species: {
      id: pokemon.species_id,
      slug: pokemon.species_slug,
      name: pokemon.species_name,
      nationalNumber: pokemon.national_number,
      isLegendary: pokemon.is_legendary,
      isMythical: pokemon.is_mythical,
    },
    form: {
      id: pokemon.form_id,
      slug: pokemon.form_slug,
      name: pokemon.form_name,
      spriteUrl: pokemon.sprite_url,
    },
    types: [
      pokemon.type1_id
        ? {
            id: pokemon.type1_id,
            slug: pokemon.type1_slug,
            name: pokemon.type1_name,
          }
        : null,
      pokemon.type2_id
        ? {
            id: pokemon.type2_id,
            slug: pokemon.type2_slug,
            name: pokemon.type2_name,
          }
        : null,
    ].filter(Boolean),
    ability: pokemon.ability_id
      ? {
          id: pokemon.ability_id,
          slug: pokemon.ability_slug,
          name: pokemon.ability_name,
        }
      : null,
    nature: pokemon.nature_id
      ? {
          id: pokemon.nature_id,
          slug: pokemon.nature_slug,
          name: pokemon.nature_name,
        }
      : null,
  }));

  return { data: result, error: null };
};
