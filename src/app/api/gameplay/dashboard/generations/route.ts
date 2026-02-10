import { createClient } from "@/lib/supabase/server";
import { NextResponse } from "next/server";

export async function GET() {
  try {
    const supabase = await createClient();

    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) {
      return NextResponse.json({ error: "Not authenticated" }, { status: 401 });
    }

    // Get all generations with their static stats
    const { data: generations, error: genError } = await supabase
      .schema("views")
      .from("generation_with_stats")
      .select("*")
      .order("generation_id", { ascending: true });

    if (genError) {
      return NextResponse.json({ error: genError.message }, { status: 500 });
    }

    // Get user stats per generation
    const { data: userStats, error: userError } = await supabase
      .schema("views")
      .from("generation_user_stats")
      .select("*")
      .eq("user_id", user.id);

    if (userError) {
      return NextResponse.json({ error: userError.message }, { status: 500 });
    }

    // Merge generation data with user stats
    const userStatsMap = new Map(
      (userStats || []).map((s) => [s.generation_id, s]),
    );

    const result = (generations || []).map((gen) => {
      const stats = userStatsMap.get(gen.generation_id);
      return {
        id: gen.generation_id,
        slug: gen.generation_slug,
        name: gen.generation_name,
        startYear: gen.start_year,
        endYear: gen.end_year,
        newPokemonCount: gen.new_pokemon_count,
        totalPokemonCount: gen.total_pokemon_count,
        gameCount: gen.game_count,
        mainGameCount: gen.main_game_count,
        remakeCount: gen.remake_count,
        enhancedCount: gen.enhanced_count,
        // User stats (default to 0 if no data)
        userStats: {
          totalPlays: stats?.total_plays ?? 0,
          activePlays: stats?.active_plays ?? 0,
          completedPlays: stats?.completed_plays ?? 0,
          gamesPlayed: stats?.games_played ?? 0,
          uniqueSpeciesCaught: stats?.unique_species_caught ?? 0,
          lastPlayedAt: stats?.last_played_at ?? null,
        },
      };
    });

    return NextResponse.json({ data: result });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
