"use server";

import { createClient } from "@/lib/supabase/server";
import { getPokemonSpriteUrl } from "@/shared/utils";

// =============================================================================
// GET USER PLAYS (from views.play_summary)
// =============================================================================

export const getUserPlays = async () => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("play_summary")
    .select("*")
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const playIds = data.map((play) => play.play_id);
  let teamsByPlayId: Record<string, any[]> = {};

  if (playIds.length > 0) {
    const { data: teamData, error: teamError } = await supabase
      .schema("views")
      .from("play_team_detail")
      .select("*")
      .in("play_id", playIds)
      .order("position", { ascending: true });

    if (teamError) return { data: null, error: teamError };

    teamsByPlayId = (teamData || []).reduce(
      (acc: Record<string, any[]>, pokemon: any) => {
        if (!acc[pokemon.play_id]) acc[pokemon.play_id] = [];
        acc[pokemon.play_id].push(pokemon);
        return acc;
      },
      {},
    );
  }

  const result = data.map((play) => ({
    id: play.play_id,
    name: play.play_name,
    status: {
      id: play.status_id,
      slug: play.status_slug,
      name: play.status_name,
      isTerminal: play.status_is_terminal,
      sortOrder: play.status_sort_order ?? 0,
    },
    createdAt: play.created_at,
    updatedAt: play.updated_at,
    game: {
      id: play.game_id,
      slug: play.game_slug,
      name: play.game_name,
      type: play.game_type_slug,
      versionGroupId: play.version_group_id,
      generation: {
        id: play.generation_id,
        slug: play.generation_slug,
        name: play.generation_name,
      },
      region: {
        id: play.region_id,
        slug: play.region_slug,
        name: play.region_name,
      },
    },
    pokemonTeam: (teamsByPlayId[play.play_id] || []).map((pokemon) => ({
      id: pokemon.team_pokemon_id,
      nickname: pokemon.nickname,
      level: pokemon.level,
      speciesId: pokemon.species_id,
      species: {
        id: pokemon.species_id,
        slug: pokemon.species_slug,
        name: pokemon.species_name,
      },
      spriteUrl: pokemon.pokemondb_sprite_slug
        ? getPokemonSpriteUrl(pokemon.is_shiny, pokemon.pokemondb_sprite_slug)
        : null,
      pokemonDbSpriteSlug: pokemon.pokemondb_sprite_slug,
      isShiny: pokemon.is_shiny,
    })),
  }));

  return { data: result, error: null };
};
