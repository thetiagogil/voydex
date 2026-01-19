"use server";

import { createClient } from "@/lib/supabase/server";

export const getGame = async (id: string) => {
  const supabase = await createClient();
  const { data: game, error: gameError } = await supabase
    .schema("meta")
    .from("games")
    .select("*")
    .eq("id", id)
    .maybeSingle();

  if (gameError) return { data: null, error: gameError };
  if (!game) return { data: null, error: null };

  // Get game type
  let gameType = null;
  if (game.type_id != null) {
    const { data: gt, error: gtError } = await supabase
      .schema("meta")
      .from("game_types")
      .select("id, slug, name")
      .eq("id", game.type_id)
      .maybeSingle();
    if (gtError) return { data: null, error: gtError };
    gameType = gt;
  }

  let generation = null;
  if (game.generation_id != null) {
    const { data: gen, error: genError } = await supabase
      .schema("meta")
      .from("generations")
      .select("id, slug, name")
      .eq("id", game.generation_id)
      .maybeSingle();
    if (genError) return { data: null, error: genError };
    generation = gen;
  }

  let region = null;
  if (game.region_id != null) {
    const { data: reg, error: regError } = await supabase
      .schema("meta")
      .from("regions")
      .select("id, slug, name")
      .eq("id", game.region_id)
      .maybeSingle();
    if (regError) return { data: null, error: regError };
    region = reg;
  }

  // Get plays for this game with stats from view
  const { data: plays, error: playsError } = await supabase
    .schema("views")
    .from("game_plays_with_stats")
    .select("*")
    .eq("game_id", game.id)
    .order("updated_at", { ascending: false });

  if (playsError) return { data: null, error: playsError };

  // Get team data for each play
  const playIds = (plays || []).map((p: any) => p.play_id);
  let teamsByPlayId: Record<string, any[]> = {};

  if (playIds.length > 0) {
    const { data: teamData } = await supabase
      .schema("gameplay")
      .from("pokemon_team")
      .select("play_id, id, nickname, level, species_id")
      .in("play_id", playIds);

    teamsByPlayId = (teamData || []).reduce(
      (acc: any, t: any) => {
        if (!acc[t.play_id]) acc[t.play_id] = [];
        acc[t.play_id].push(t);
        return acc;
      },
      {} as Record<string, any[]>,
    );
  }

  if (playsError) return { data: null, error: playsError };

  // Collect all species IDs from teams so we can batch-fetch species names
  const speciesIds = new Set<number>();
  Object.values(teamsByPlayId).forEach((team: any[]) => {
    team.forEach((pt: any) => {
      if (pt?.species_id) speciesIds.add(pt.species_id);
    });
  });

  let pokemon_species: Record<
    number,
    { species_name: string; species_slug: string }
  > = {};
  if (speciesIds.size > 0) {
    const ids = Array.from(speciesIds);
    const { data: speciesRows } = await supabase
      .schema("meta")
      .from("pokemon_species")
      .select("id, name, slug")
      .in("id", ids);
    pokemon_species = (speciesRows || []).reduce(
      (acc: any, s: any) => {
        acc[s.id] = { species_name: s.name, species_slug: s.slug };
        return acc;
      },
      {} as Record<number, { species_name: string; species_slug: string }>,
    );
  }

  // Map plays with their team data (stats already included from view)
  const playsWithStats = (plays || []).map((play: any) => {
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
      pokemon_team: team.map((pokemon: any) => ({
        ...pokemon,
        species: pokemon.species_id
          ? {
              id: pokemon.species_id,
              slug: pokemon_species[pokemon.species_id]?.species_slug,
              name: pokemon_species[pokemon.species_id]?.species_name,
            }
          : null,
      })),
    };
  });

  // Calculate game stats from plays
  const totalPlaythroughs = playsWithStats.length;
  const activePlaythroughs = playsWithStats.filter(
    (p) => p.status === "active",
  ).length;
  const completedPlaythroughs = playsWithStats.filter(
    (p) => p.status === "completed",
  ).length;
  const totalPokemonCaught = playsWithStats.reduce(
    (sum, p) => sum + (p.pokemon_caught_count || 0),
    0,
  );

  // Build breadcrumbs for UI
  const breadcrumbs = [];
  breadcrumbs.push({ label: "Adventures", href: "/adventures" });

  if (generation) {
    const genLabel = generation.name || generation.slug;
    breadcrumbs.push({
      label: genLabel,
      href: `/adventures/gen/${generation.id}`,
    });
  }

  breadcrumbs.push({
    label: game.name,
    href: `/adventures/gen/${generation?.id ?? "0"}/game/${game.slug}`,
    current: true,
  });

  return {
    data: {
      ...game,
      type: gameType?.slug ?? null,
      generation,
      region,
      plays: playsWithStats,
      stats: {
        totalPlaythroughs,
        activePlaythroughs,
        completedPlaythroughs,
        totalPokemonCaught,
      },
    },
    error: null,
    breadcrumbs,
  };
};

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
