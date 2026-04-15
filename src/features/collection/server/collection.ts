"use server";

import { createClient } from "@/lib/supabase/server";
import type { BaseInfo } from "@/shared/types";

// =============================================================================
// GET COLLECTION (from views.play_team_detail + play_summary)
// =============================================================================

export const getCollection = async () => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("play_team_detail")
    .select("*");

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const playIds = [...new Set(data.map((pt) => pt.play_id))];

  const { data: playsData } = await supabase
    .schema("views")
    .from("play_summary")
    .select(
      "play_id, play_name, status_slug, game_id, game_slug, game_name, generation_id, generation_slug, generation_name",
    )
    .in("play_id", playIds);

  const playMap = new Map((playsData ?? []).map((p) => [p.play_id, p]));

  const result = data.map((pokemon) => {
    const play = playMap.get(pokemon.play_id);
    return {
      id: pokemon.team_pokemon_id,
      playId: pokemon.play_id,
      nickname: pokemon.nickname,
      level: pokemon.level,
      gender: pokemon.gender,
      isShiny: pokemon.is_shiny,
      position: pokemon.position,
      createdAt: pokemon.created_at,
      updatedAt: pokemon.updated_at,
      play: play
        ? {
            id: play.play_id,
            name: play.play_name,
            status: play.status_slug,
          }
        : null,
      game: play
        ? {
            id: play.game_id,
            slug: play.game_slug,
            name: play.game_name,
            generation: {
              id: play.generation_id,
              slug: play.generation_slug,
              name: play.generation_name,
            },
          }
        : null,
      species: {
        id: pokemon.species_id,
        slug: pokemon.species_slug,
        name: pokemon.species_name,
      },
      form: {
        id: pokemon.form_id,
        slug: pokemon.form_slug,
        name: pokemon.form_name,
        pokemonDbSpriteSlug: pokemon.pokemondb_sprite_slug,
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
      ].filter((type): type is BaseInfo => Boolean(type)),
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
    };
  });

  return { data: result, error: null };
};
