"use server";

import { createClient } from "@/lib/supabase/server";

export const getGame = async (id: string) => {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Get game with static stats from view
  const { data: gameData, error: gameError } = await supabase
    .schema("views")
    .from("game_with_stats")
    .select("*")
    .eq("game_id", id)
    .maybeSingle();

  if (gameError) return { data: null, error: gameError };
  if (!gameData) return { data: null, error: null };

  // Get plays for this game with stats from view (user-specific)
  let plays: GamePlaySummary[] = [];
  let userStats = {
    totalPlaythroughs: 0,
    activePlaythroughs: 0,
    completedPlaythroughs: 0,
    totalPokemonCaught: 0,
  };

  if (user) {
    const { data: playsData, error: playsError } = await supabase
      .schema("views")
      .from("game_plays_with_stats")
      .select("*")
      .eq("game_id", id)
      .eq("user_id", user.id)
      .order("updated_at", { ascending: false });

    if (playsError) return { data: null, error: playsError };

    // Get team data for each play using the view
    const playIds = (playsData || []).map(
      (p: { play_id: string }) => p.play_id,
    );
    let teamsByPlayId: Record<string, TeamPokemonData[]> = {};

    if (playIds.length > 0) {
      const { data: teamData } = await supabase
        .schema("views")
        .from("play_team_pokemon")
        .select("*")
        .in("play_id", playIds);

      teamsByPlayId = (teamData || []).reduce(
        (acc: Record<string, TeamPokemonData[]>, t: TeamPokemonData) => {
          if (!acc[t.play_id]) acc[t.play_id] = [];
          acc[t.play_id].push(t);
          return acc;
        },
        {} as Record<string, TeamPokemonData[]>,
      );
    }

    // Map plays with their team data
    plays = (playsData || []).map((play: GamePlayData) => {
      const team = teamsByPlayId[play.play_id] || [];
      return {
        id: play.play_id,
        name: play.play_name,
        status: play.status,
        created_at: play.created_at,
        updated_at: play.updated_at,
        team_size: play.team_size,
        highest_level: play.highest_level,
        pokemon_caught_count: play.pokemon_caught_count,
        completed_progress_items: play.completed_progress_items,
        total_progress_items: gameData.progress_item_count,
        regional_dex_count: gameData.regional_dex_count,
        pokemon_team: team.map((pokemon: TeamPokemonData) => ({
          id: pokemon.team_pokemon_id,
          nickname: pokemon.nickname,
          level: pokemon.level,
          species_id: pokemon.species_id,
          species: {
            id: pokemon.species_id,
            slug: pokemon.species_slug,
            name: pokemon.species_name,
          },
          sprite_url: pokemon.sprite_url,
        })),
      };
    });

    // Calculate user stats from plays
    userStats = {
      totalPlaythroughs: plays.length,
      activePlaythroughs: plays.filter((p) => p.status === "active").length,
      completedPlaythroughs: plays.filter((p) => p.status === "completed")
        .length,
      totalPokemonCaught: plays.reduce(
        (sum, p) => sum + (p.pokemon_caught_count || 0),
        0,
      ),
    };
  }

  // Build the game object
  const game: GameWithFullData = {
    id: gameData.game_id,
    slug: gameData.game_slug,
    name: gameData.game_name,
    type: gameData.game_type,
    type_id: 0, // Not needed for display
    generation_id: gameData.generation_id,
    region_id: gameData.region_id,
    version_group_id: gameData.version_group_id,
    regional_dex_count: gameData.regional_dex_count,
    national_dex_count: gameData.national_dex_count,
    release_year: gameData.release_year,
    created_at: "",
    generation: {
      id: gameData.generation_id,
      slug: gameData.generation_slug,
      name: gameData.generation_name,
    },
    region: {
      id: gameData.region_id,
      slug: gameData.region_slug,
      name: gameData.region_name,
    },
    plays,
    staticStats: {
      progressCategoryCount: gameData.progress_category_count,
      progressItemCount: gameData.progress_item_count,
    },
    userStats,
  };

  // Build breadcrumbs for UI
  const breadcrumbs = [
    { label: "Adventures", href: "/adventures" },
    {
      label: game.generation.name,
      href: `/adventures/gen/${game.generation_id}`,
    },
    {
      label: game.name,
      href: `/adventures/gen/${game.generation_id}/game/${game.slug}`,
      current: true,
    },
  ];

  return {
    data: game,
    error: null,
    breadcrumbs,
  };
};

// Helper types for internal use
interface TeamPokemonData {
  team_pokemon_id: string;
  play_id: string;
  nickname: string | null;
  level: number;
  species_id: number;
  species_slug: string;
  species_name: string;
  sprite_url: string | null;
}

interface GamePlayData {
  play_id: string;
  play_name: string;
  status: PlayStatus;
  created_at: string;
  updated_at: string;
  team_size: number;
  highest_level: number;
  pokemon_caught_count: number;
  completed_progress_items: number;
}

export const getGameBySlug = async (slug: string) => {
  const supabase = await createClient();

  // First get the game by slug
  const { data: game, error: gameError } = await supabase
    .schema("meta")
    .from("games")
    .select("*")
    .eq("slug", slug)
    .maybeSingle();

  if (gameError) return { data: null, error: gameError };
  if (!game) return { data: null, error: null };

  // Now use the existing getGame function with the ID
  return getGame(game.id);
};
