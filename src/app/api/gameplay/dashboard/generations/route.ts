import { createClient } from "@/lib/supabase/server";
import {
  getAllGenerations,
  getGenerationUserStats,
} from "@/services/gameplay/dashboard";
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

    // Get all generations
    const { data: generations, error: genError } = await getAllGenerations();
    if (genError) {
      return NextResponse.json({ error: genError.message }, { status: 500 });
    }

    // Get user stats per generation
    const generationsWithStats = await Promise.all(
      (generations ?? []).map(async (gen) => {
        const { data: userStats } = await getGenerationUserStats(gen.id);
        return {
          id: gen.id,
          slug: gen.slug,
          name: gen.name,
          gameCount: gen.gameCount,
          userStats: {
            totalPlays: userStats?.total_plays ?? 0,
            activePlays: userStats?.active_plays ?? 0,
            completedPlays: userStats?.completed_plays ?? 0,
            gamesPlayed: userStats?.games_played ?? 0,
          },
        };
      }),
    );

    return NextResponse.json({ data: generationsWithStats });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
