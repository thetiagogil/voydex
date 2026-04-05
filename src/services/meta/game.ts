"use server";

import { createClient } from "@/lib/supabase/server";
import { getGameCoverUrl } from "@/lib/supabase/storage";

export const getGame = async (id: number | string) => {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Get game with joins
  const { data: gameData, error: gameError } = await supabase
    .schema("meta")
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

  const gen = gameData.generation as any;
  const region = gameData.region as any;
  const gameType = gameData.game_type as any;

  // Get plays for this game (user-specific)
  let plays: any[] = [];
  let userStats = {
    totalPlaythroughs: 0,
    activePlaythroughs: 0,
    completedPlaythroughs: 0,
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
    let teamsByPlayId: Record<string, any[]> = {};

    if (playIds.length > 0) {
      const { data: teamData } = await supabase
        .schema("views")
        .from("play_team_detail")
        .select("*")
        .in("play_id", playIds);

      teamsByPlayId = (teamData || []).reduce(
        (acc: Record<string, any[]>, t: any) => {
          if (!acc[t.play_id]) acc[t.play_id] = [];
          acc[t.play_id].push(t);
          return acc;
        },
        {} as Record<string, any[]>,
      );
    }

    plays = (playsData || []).map((play) => {
      const team = teamsByPlayId[play.play_id] || [];
      return {
        id: play.play_id,
        name: play.play_name,
        status: {
          slug: play.status_slug,
          name: play.status_name,
          isTerminal: play.status_is_terminal,
        },
        createdAt: play.created_at,
        updatedAt: play.updated_at,
        pokemonTeam: team.map((pokemon: any) => ({
          id: pokemon.team_pokemon_id,
          nickname: pokemon.nickname,
          level: pokemon.level,
          speciesId: pokemon.species_id,
          species: {
            id: pokemon.species_id,
            slug: pokemon.species_slug,
            name: pokemon.species_name,
          },
          spriteUrl: pokemon.sprite_url,
        })),
      };
    });

    userStats = {
      totalPlaythroughs: plays.length,
      activePlaythroughs: plays.filter((p) => p.status === "active").length,
      completedPlaythroughs: plays.filter((p) => p.status === "completed")
        .length,
    };
  }

  const game = {
    id: gameData.id,
    slug: gameData.slug,
    name: gameData.name,
    type: gameType.slug,
    versionGroupId: gameData.version_group_id,
    releaseYear: gameData.release_year,
    coverUrl: await getGameCoverUrl(gameData.slug),
    generation: {
      id: gen.id,
      slug: gen.slug,
      name: gen.name,
    },
    region: {
      id: region.id,
      slug: region.slug,
      name: region.name,
    },
    plays,
    userStats,
  };

  const breadcrumbs = [
    { label: "Dashboard", href: "/dashboard" },
    {
      label: gen.name,
      href: `/dashboard/gen/${gen.id}`,
    },
    {
      label: gameData.name,
      href: `/dashboard/gen/${gen.id}/game/${gameData.slug}`,
      current: true,
    },
  ];

  return {
    data: game,
    error: null,
    breadcrumbs,
  };
};

export const getGameBySlug = async (slug: string) => {
  const supabase = await createClient();

  const { data: game, error: gameError } = await supabase
    .schema("meta")
    .from("games")
    .select("id")
    .eq("slug", slug)
    .maybeSingle();

  if (gameError) return { data: null, error: gameError };
  if (!game) return { data: null, error: null };

  return getGame(game.id);
};
