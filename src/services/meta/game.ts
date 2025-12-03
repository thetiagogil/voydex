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

  // Get plays for this game with team data and stats
  const { data: plays, error: playsError } = await supabase
    .schema("gameplay")
    .from("plays")
    .select(
      `
      id,
      name,
      status,
      created_at,
      updated_at,
      pokemon_team:pokemon_team (
        id,
        nickname,
        level,
        species_id
      )
    `,
    )
    .eq("game_id", game.id)
    .order("updated_at", { ascending: false });

  if (playsError) return { data: null, error: playsError };

  // Collect all species IDs from the plays so we can batch-fetch species names
  const speciesIds = new Set<number>();
  (plays || []).forEach((pl: any) => {
    (pl.pokemon_team || []).forEach((pt: any) => {
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

  const playsWithStats = await Promise.all(
    (plays || []).map(async (play) => {
      const { count: pokemonCaughtCount } = await supabase
        .schema("gameplay")
        .from("pokemon_caught")
        .select("*", { count: "exact", head: true })
        .eq("play_id", play.id);

      const { data: progressData } = await supabase
        .schema("gameplay")
        .from("progress")
        .select("progress_item_id")
        .eq("play_id", play.id)
        .eq("is_completed", true);

      const completedItems = progressData?.length || 0;

      const { count: totalItems } = await supabase
        .schema("meta")
        .from("progress_items")
        .select("*", { count: "exact", head: true });

      const overallCompletion =
        totalItems && totalItems > 0
          ? Math.round((completedItems / totalItems) * 100)
          : 0;

      return {
        ...play,
        pokemonCaught: pokemonCaughtCount || 0,
        overallCompletion,
        pokemon_team: (play.pokemon_team || []).map((pokemon: any) => ({
          ...pokemon,
          species: pokemon
            ? {
                id: pokemon.id,
                slug: (
                  pokemon.species_id && pokemon_species[pokemon.species_id]
                )?.species_slug,
                name:
                  pokemon.species_id &&
                  pokemon_species[pokemon.species_id]?.species_name,
              }
            : null,
        })),
      };
    }),
  );

  // Calculate game stats from plays
  const totalPlaythroughs = playsWithStats.length;
  const activePlaythroughs = playsWithStats.filter(
    (p) => p.status === "active",
  ).length;
  const completedPlaythroughs = playsWithStats.filter(
    (p) => p.status === "completed",
  ).length;
  const averageCompletion =
    totalPlaythroughs > 0
      ? Math.round(
          playsWithStats.reduce(
            (sum, p) => sum + (p.overallCompletion || 0),
            0,
          ) / totalPlaythroughs,
        )
      : 0;
  const totalPokemonCaught = playsWithStats.reduce(
    (sum, p) => sum + (p.pokemonCaught || 0),
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
      generation,
      region,
      plays: playsWithStats,
      stats: {
        totalPlaythroughs,
        activePlaythroughs,
        completedPlaythroughs,
        averageCompletion,
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
