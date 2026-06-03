"use server";

import { getAvailableDlcs } from "@/features/play/server/play-dlc";
import { createClient } from "@/lib/supabase/server";
import { getGameCoverUrl } from "@/lib/supabase/storage";
import { UserStats } from "@/shared/types";
import { GamePlay, GamePlayPokemonTeamMember } from "../types";

export const getGame = async (id: number | string) => {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Get game by ID
  const { data: gameData, error: gameError } = await supabase
    .schema("reference")
    .from("games")
    .select(
      `
      id, slug, name, version_group_id, release_year,
      generation:generations!inner(id, slug, name),
      region:regions!inner(id, slug, name),
      game_type:game_types!inner(slug, name)
    `,
    )
    .eq("id", id)
    .maybeSingle();

  if (gameError) return { data: null, error: gameError };
  if (!gameData) return { data: null, error: null };

  const generation: any = gameData.generation;
  const region: any = gameData.region;
  const gameType: any = gameData.game_type;

  // Get plays for this game (user-specific)
  let plays: GamePlay[] = [];
  let userStats: UserStats = {
    totalPlays: 0,
    activePlays: 0,
    completedPlays: 0,
  };

  if (user) {
    const { data: playsData } = await supabase
      .schema("views")
      .from("play_summary")
      .select("*")
      .eq("game_id", gameData.id)
      .eq("user_id", user.id)
      .order("updated_at", { ascending: false });

    // Get team data for each play
    const playIds = (playsData || []).map((p) => p.play_id);
    let teamsByPlayId: Record<string, GamePlayPokemonTeamMember[]> = {};

    if (playIds.length > 0) {
      const { data: teamData } = await supabase
        .schema("views")
        .from("play_team_detail")
        .select("*")
        .in("play_id", playIds);

      teamsByPlayId = (teamData || []).reduce(
        (acc: Record<string, GamePlayPokemonTeamMember[]>, t: any) => {
          if (!acc[t.play_id]) acc[t.play_id] = [];
          acc[t.play_id].push(t);
          return acc;
        },
        {} as Record<string, GamePlayPokemonTeamMember[]>,
      );
    }

    plays = (playsData || []).map((play) => {
      const team = teamsByPlayId[play.play_id] || [];
      return {
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
        pokemonTeam: team.map((pokemon: any) => ({
          id: pokemon.team_pokemon_id,
          nickname: pokemon.nickname,
          level: pokemon.level,
          isShiny: pokemon.is_shiny,
          speciesId: pokemon.species_id,
          species: {
            id: pokemon.species_id,
            slug: pokemon.species_slug,
            name: pokemon.species_name,
          },
          pokemonDbSpriteSlug: pokemon.pokemondb_sprite_slug,
        })),
      };
    });

    userStats = {
      totalPlays: plays.length,
      activePlays: plays.filter((p) => p.status.slug === "active").length,
      completedPlays: plays.filter((p) => p.status.slug === "completed").length,
    };
  }

  const { data: availableDlcs } = await getAvailableDlcs(
    gameData.version_group_id,
  );

  const game = {
    id: gameData.id,
    slug: gameData.slug,
    name: gameData.name,
    type: gameType.slug,
    versionGroupId: gameData.version_group_id,
    releaseYear: gameData.release_year,
    coverUrl: (await getGameCoverUrl(gameData.slug)) || "",
    generation: {
      id: generation.id,
      slug: generation.slug,
      name: generation.name,
    },
    region: {
      id: region.id,
      slug: region.slug,
      name: region.name,
    },
    plays,
    userStats,
    availableDlcs: availableDlcs ?? [],
  };

  return {
    data: game,
    error: null,
  };
};

export const getGameOverview = async (slug: string) => {
  const supabase = await createClient();

  const { data: game, error: gameError } = await supabase
    .schema("reference")
    .from("games")
    .select("id")
    .eq("slug", slug)
    .maybeSingle();

  if (gameError) return { data: null, error: gameError };
  if (!game) return { data: null, error: null };

  return getGame(game.id);
};
