"use server";

import { createClient } from "@/lib/supabase/server";
import type {
  DashboardActivity,
  DashboardGeneration,
  DashboardStats,
} from "../types";
import { getTrackingMessage } from "../utils";

// =============================================================================
// GET DASHBOARD STATS
// =============================================================================

export const getDashboardStats = async (): Promise<{
  data: DashboardStats | null;
  error: { message: string } | null;
}> => {
  const supabase = await createClient();

  // Auth
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  // Plays (via play_summary to avoid double query for status mapping)
  const { data: plays, error: playsError } = await supabase
    .schema("views")
    .from("play_summary")
    .select("play_id, status_slug")
    .eq("user_id", user.id);

  if (playsError) return { data: null, error: playsError };

  const totalPlays = plays?.length ?? 0;
  const activePlays =
    plays?.filter((play) => play.status_slug === "active").length ?? 0;
  const completedPlays =
    plays?.filter((play) => play.status_slug === "completed").length ?? 0;

  return {
    data: {
      total_plays: totalPlays,
      active_plays: activePlays,
      completed_plays: completedPlays,
    },
    error: null,
  };
};

// =============================================================================
// GET DASHBOARD GENERATIONS
// =============================================================================
export const getDashboardGenerations = async (): Promise<{
  data: DashboardGeneration[] | null;
  error: { message: string } | null;
}> => {
  const supabase = await createClient();

  // Auth
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  // Generations
  const { data: generationRows, error: generationsError } = await supabase
    .schema("reference")
    .from("generations")
    .select("id, slug, name")
    .order("id", { ascending: true });

  if (generationsError) return { data: null, error: generationsError };

  // Game counts per generation
  const { data: gameRows } = await supabase
    .schema("reference")
    .from("games")
    .select("id, generation_id");

  // User plays per generation (single query, grouped in memory)
  const { data: playRows, error: playsError } = await supabase
    .schema("views")
    .from("play_summary")
    .select("play_id, status_slug, generation_id")
    .eq("user_id", user.id);

  if (playsError) return { data: null, error: playsError };

  // Build game count lookup
  const gameCountByGeneration = new Map<number, number>();
  gameRows?.forEach((game) => {
    gameCountByGeneration.set(
      game.generation_id,
      (gameCountByGeneration.get(game.generation_id) ?? 0) + 1,
    );
  });

  // Build play lists per generation
  const playsByGeneration = new Map<number, typeof playRows>();
  playRows?.forEach((play) => {
    const existing = playsByGeneration.get(play.generation_id) ?? [];
    existing.push(play);
    playsByGeneration.set(play.generation_id, existing);
  });

  // Shape into DashboardGeneration[]
  const generations = (generationRows ?? []).map((generation) => {
    const plays = playsByGeneration.get(generation.id) ?? [];
    return {
      id: generation.id,
      slug: generation.slug,
      name: generation.name,
      gameCount: gameCountByGeneration.get(generation.id) ?? 0,
      userStats: {
        totalPlays: plays.length,
        activePlays: plays.filter((play) => play.status_slug === "active")
          .length,
        completedPlays: plays.filter((play) => play.status_slug === "completed")
          .length,
      },
    };
  });

  return { data: generations, error: null };
};

// =============================================================================
// GET DASHBOARD ACTIVITY
// =============================================================================

export const getDashboardActivity = async (
  limit = 10,
): Promise<{
  data: DashboardActivity[] | null;
  error: { message: string } | null;
}> => {
  const supabase = await createClient();

  // Auth
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  // Recent plays (source of play context for all activity types)
  const { data: recentPlays, error: playsError } = await supabase
    .schema("views")
    .from("play_summary")
    .select("*")
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false })
    .limit(limit);

  if (playsError) return { data: null, error: playsError };
  if (!recentPlays || recentPlays.length === 0)
    return { data: [], error: null };

  const playIds = recentPlays.map((play) => play.play_id);

  // Recent team additions
  const { data: recentTeam } = await supabase
    .schema("views")
    .from("play_team_detail")
    .select("play_id, species_name, nickname, created_at, updated_at")
    .in("play_id", playIds)
    .order("updated_at", { ascending: false })
    .limit(limit);

  // Recent tracking completions
  const { data: recentTracking } = await supabase
    .schema("views")
    .from("play_tracking_detail")
    .select(
      "play_id, tracking_item_name, category_name, item_type_slug, completed_at",
    )
    .in("play_id", playIds)
    .not("completed_at", "is", null)
    .order("completed_at", { ascending: false })
    .limit(limit);

  // Play context lookup
  const playContextByPlayId = new Map(
    recentPlays.map((play) => [
      play.play_id,
      {
        playName: play.play_name,
        gameSlug: play.game_slug,
        gameName: play.game_name,
        generationId: play.generation_id,
        generationSlug: play.generation_slug,
      },
    ]),
  );

  const activities: DashboardActivity[] = [];

  // Play creation / status activities
  recentPlays.forEach((play) => {
    const href = `/dashboard/gen/${play.generation_id}/game/${play.game_slug}/play/${play.play_id}`;

    activities.push({
      id: `play-created-${play.play_id}`,
      type: "play_created",
      variant: "total",
      message: `Started a new ${play.game_name} playthrough`,
      activityAt: play.created_at,
      play: { id: play.play_id, name: play.play_name },
      game: { slug: play.game_slug, name: play.game_name },
      generation: { id: play.generation_id, slug: play.generation_slug },
      href,
    });

    if (
      play.status_slug === "active" ||
      play.status_slug === "completed" ||
      play.status_slug === "dropped" ||
      play.status_slug === "paused"
    ) {
      activities.push({
        id: `play-status-${play.play_id}`,
        type: "play_status_changed",
        variant: play.status_slug,
        message: `Marked playthrough as ${play.status_slug}`,
        activityAt: play.updated_at,
        play: { id: play.play_id, name: play.play_name },
        game: { slug: play.game_slug, name: play.game_name },
        generation: { id: play.generation_id, slug: play.generation_slug },
        href,
      });
    }
  });

  // Team addition activities
  recentTeam?.forEach((teamEntry) => {
    const playContext = playContextByPlayId.get(teamEntry.play_id);
    if (!playContext) return;

    const displayName = teamEntry.nickname || teamEntry.species_name;
    activities.push({
      id: `team-${teamEntry.play_id}-${teamEntry.species_name}-${teamEntry.created_at}`,
      type: "pokemon_added",
      variant: "pokemon",
      message: `Added ${displayName} to the team`,
      activityAt: teamEntry.updated_at || teamEntry.created_at,
      play: { id: teamEntry.play_id, name: playContext.playName },
      game: { slug: playContext.gameSlug, name: playContext.gameName },
      generation: {
        id: playContext.generationId,
        slug: playContext.generationSlug,
      },
      href: `/dashboard/gen/${playContext.generationId}/game/${playContext.gameSlug}/play/${teamEntry.play_id}`,
    });
  });

  // Tracking completion activities
  recentTracking?.forEach((trackingEntry) => {
    const playContext = playContextByPlayId.get(trackingEntry.play_id);
    if (!playContext) return;

    const message = getTrackingMessage(
      trackingEntry.item_type_slug,
      trackingEntry.tracking_item_name,
      trackingEntry.category_name,
    );

    activities.push({
      id: `tracking-${trackingEntry.play_id}-${trackingEntry.tracking_item_name}-${trackingEntry.completed_at}`,
      type: "tracking_completed",
      variant: "tracking",
      message,
      activityAt: trackingEntry.completed_at,
      play: { id: trackingEntry.play_id, name: playContext.playName },
      game: { slug: playContext.gameSlug, name: playContext.gameName },
      generation: {
        id: playContext.generationId,
        slug: playContext.generationSlug,
      },
      href: `/dashboard/gen/${playContext.generationId}/game/${playContext.gameSlug}/play/${trackingEntry.play_id}`,
    });
  });

  // Sort descending and cap at limit
  activities.sort(
    (a, b) =>
      new Date(b.activityAt).getTime() - new Date(a.activityAt).getTime(),
  );

  return { data: activities.slice(0, limit), error: null };
};

// =============================================================================
// GET DASHBOARD OVERVIEW (composed loader)
// =============================================================================

export const getDashboardOverview = async () => {
  const [statsResult, generationsResult, activityResult] = await Promise.all([
    getDashboardStats(),
    getDashboardGenerations(),
    getDashboardActivity(10),
  ]);

  if (statsResult.error) return { data: null, error: statsResult.error };
  if (generationsResult.error)
    return { data: null, error: generationsResult.error };
  if (activityResult.error) return { data: null, error: activityResult.error };

  return {
    data: {
      stats: statsResult.data,
      generations: generationsResult.data ?? [],
      activity: activityResult.data ?? [],
    },
    error: null,
  };
};
