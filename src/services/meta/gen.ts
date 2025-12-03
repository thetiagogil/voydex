"use server";

import { createClient } from "@/lib/supabase/server";

export const getGen = async (id: string) => {
  const supabase = await createClient();

  // Get the gen
  const { data: gen, error: genError } = await supabase
    .schema("meta")
    .from("generations")
    .select("*")
    .eq("id", id)
    .maybeSingle();

  if (genError) return { data: null, error: genError };
  if (!gen) return { data: null, error: null };

  // Get games for this gen
  const { data: games, error: gamesError } = await supabase
    .schema("meta")
    .from("games")
    .select("*")
    .eq("generation_id", gen.id)
    .order("id", { ascending: true });

  if (gamesError) return { data: null, error: gamesError };

  // For each game, get play stats
  const gamesWithStats = await Promise.all(
    (games || []).map(async (game) => {
      const { data: plays } = await supabase
        .schema("gameplay")
        .from("plays")
        .select("id, status")
        .eq("game_id", game.id);

      const playthroughCount = plays?.length || 0;
      const activePlaythroughs =
        plays?.filter((p) => p.status === "active").length || 0;
      const completedPlaythroughs =
        plays?.filter((p) => p.status === "completed").length || 0;

      return {
        ...game,
        playthroughCount,
        activePlaythroughs,
        completedPlaythroughs,
      };
    }),
  );

  // Calculate gen-level stats
  const totalPlaythroughs = gamesWithStats.reduce(
    (sum, g) => sum + g.playthroughCount,
    0,
  );

  // Get all plays for this gen to calculate average completion
  const gameIds = games?.map((g) => g.id) || [];
  let averageCompletion = 0;
  let totalPokemonCaught = 0;

  if (gameIds.length > 0) {
    const { data: allPlays } = await supabase
      .schema("gameplay")
      .from("plays")
      .select("id")
      .in("game_id", gameIds);

    if (allPlays && allPlays.length > 0) {
      const playIds = allPlays.map((p) => p.id);

      // Calculate average completion from progress
      const completionPromises = playIds.map(async (playId) => {
        const { data: progressData } = await supabase
          .schema("gameplay")
          .from("progress")
          .select("progress_item_id")
          .eq("play_id", playId)
          .eq("is_completed", true);

        const completedItems = progressData?.length || 0;

        const { count: totalItems } = await supabase
          .schema("meta")
          .from("progress_items")
          .select("*", { count: "exact", head: true });

        return totalItems && totalItems > 0
          ? Math.round((completedItems / totalItems) * 100)
          : 0;
      });

      const completions = await Promise.all(completionPromises);
      averageCompletion =
        completions.length > 0
          ? Math.round(
              completions.reduce((sum, c) => sum + c, 0) / completions.length,
            )
          : 0;

      // Get total unique Pokemon caught
      const { count: pokemonCount } = await supabase
        .schema("gameplay")
        .from("pokemon_caught")
        .select("species_id", { count: "exact", head: true })
        .in("play_id", playIds);

      totalPokemonCaught = pokemonCount || 0;
    }
  }

  // Build breadcrumbs
  const breadcrumbs = [];
  breadcrumbs.push({ label: "Adventures", href: "/adventures" });
  breadcrumbs.push({
    label: gen.name,
    href: `/adventures/gen/${gen.id}`,
    current: true,
  });

  return {
    data: {
      ...gen,
      games: gamesWithStats,
      stats: {
        playthroughsCount: totalPlaythroughs,
        averageCompletion,
        totalPokemonCaught,
      },
    },
    error: null,
    breadcrumbs,
  };
};
