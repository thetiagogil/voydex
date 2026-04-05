"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET GENERATION (direct query against meta.generations + meta.games)
// =============================================================================

export const getGeneration = async (generationId: number) => {
  const supabase = await createClient();

  const { data: gen, error } = await supabase
    .schema("meta")
    .from("generations")
    .select("id, slug, name")
    .eq("id", generationId)
    .maybeSingle();

  if (error) return { data: null, error };
  if (!gen) return { data: null, error: null };

  // Count games for this generation
  const { count: gameCount } = await supabase
    .schema("meta")
    .from("games")
    .select("*", { count: "exact", head: true })
    .eq("generation_id", generationId);

  const result = {
    id: gen.id,
    slug: gen.slug,
    name: gen.name,
    stats: {
      totalGames: gameCount ?? 0,
    },
  };

  const breadcrumbs = [
    { label: "Dashboard", href: "/dashboard" },
    {
      label: gen.name,
      href: `/dashboard/gen/${gen.id}`,
      current: true,
    },
  ];

  return { data: result, error: null, breadcrumbs };
};

// =============================================================================
// GET GENERATION USER STATS (direct query)
// =============================================================================

export const getGenerationUserStats = async (generationId: number) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  // Get plays for this generation via play_summary view
  const { data: plays, error } = await supabase
    .schema("views")
    .from("play_summary")
    .select("play_id, status_slug, game_id")
    .eq("user_id", user.id)
    .eq("generation_id", generationId);

  if (error) return { data: null, error };

  const totalPlays = plays?.length ?? 0;
  const activePlays =
    plays?.filter((p) => p.status_slug === "active").length ?? 0;
  const completedPlays =
    plays?.filter((p) => p.status_slug === "completed").length ?? 0;
  const gamesPlayed = new Set(plays?.map((p) => p.game_id)).size;

  return {
    data: {
      total_plays: totalPlays,
      active_plays: activePlays,
      completed_plays: completedPlays,
      games_played: gamesPlayed,
    },
    error: null,
  };
};

// =============================================================================
// GET ALL GENERATIONS
// =============================================================================

export const getAllGenerations = async () => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("meta")
    .from("generations")
    .select("id, slug, name")
    .order("id", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  // Count games per generation
  const { data: games } = await supabase
    .schema("meta")
    .from("games")
    .select("id, generation_id");

  const gameCountMap = new Map<number, number>();
  for (const g of games ?? []) {
    gameCountMap.set(
      g.generation_id,
      (gameCountMap.get(g.generation_id) ?? 0) + 1,
    );
  }

  const result = data.map((gen) => ({
    id: gen.id,
    slug: gen.slug,
    name: gen.name,
    gameCount: gameCountMap.get(gen.id) ?? 0,
  }));

  return { data: result, error: null };
};

// =============================================================================
// GET USER DASHBOARD STATS (direct queries)
// =============================================================================

export const getDashboardStats = async () => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  // Get all user plays
  const { data: plays, error: playsError } = await supabase
    .schema("gameplay")
    .from("plays")
    .select("id, status_id, updated_at")
    .eq("user_id", user.id);

  if (playsError) return { data: null, error: playsError };

  // Get play statuses to map status_id to slug
  const { data: statuses } = await supabase
    .schema("gameplay")
    .from("play_statuses")
    .select("id, slug");

  const statusMap = new Map(statuses?.map((s) => [s.id, s.slug]) ?? []);

  const totalPlays = plays?.length ?? 0;
  const activePlays =
    plays?.filter((p) => statusMap.get(p.status_id) === "active").length ?? 0;
  const completedPlays =
    plays?.filter((p) => statusMap.get(p.status_id) === "completed").length ??
    0;

  // Last activity from most recently updated play
  const lastActivity =
    plays && plays.length > 0
      ? plays.sort(
          (a, b) =>
            new Date(b.updated_at).getTime() - new Date(a.updated_at).getTime(),
        )[0].updated_at
      : null;

  return {
    data: {
      total_plays: totalPlays,
      active_plays: activePlays,
      completed_plays: completedPlays,
      last_activity: lastActivity,
    },
    error: null,
  };
};

// =============================================================================
// GET RECENT ACTIVITY (from recently updated plays)
// =============================================================================

export const getRecentActivity = async (limit = 10) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  // Get recent plays with game info from play_summary
  const { data: plays, error: playsError } = await supabase
    .schema("views")
    .from("play_summary")
    .select("*")
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false })
    .limit(limit);

  if (playsError) return { data: null, error: playsError };
  if (!plays || plays.length === 0) return { data: [], error: null };

  // Gather recent team additions across all plays
  const playIds = plays.map((p) => p.play_id);
  const { data: recentTeam } = await supabase
    .schema("views")
    .from("play_team_detail")
    .select("play_id, species_name, nickname, created_at, updated_at")
    .in("play_id", playIds)
    .order("updated_at", { ascending: false })
    .limit(limit);

  // Gather recent progress completions
  const { data: recentProgress } = await supabase
    .schema("views")
    .from("play_progress_detail")
    .select("play_id, item_name, category_name, completed_at")
    .in("play_id", playIds)
    .not("completed_at", "is", null)
    .order("completed_at", { ascending: false })
    .limit(limit);

  // Build a play lookup for game/gen info
  const playMap = new Map(
    plays.map((p) => [
      p.play_id,
      {
        playName: p.play_name,
        gameSlug: p.game_slug,
        gameName: p.game_name,
        generationId: p.generation_id,
        generationSlug: p.generation_slug,
        statusSlug: p.status_slug,
        statusName: p.status_name,
      },
    ]),
  );

  type ActivityItem = {
    id: string;
    type: string;
    message: string;
    activityAt: string;
    play: { id: string; name: string };
    game: { slug: string; name: string };
    generation: { id: number; slug: string };
    href: string;
  };

  const activities: ActivityItem[] = [];

  // Add play status activities (created/status updates)
  for (const play of plays) {
    const isNew =
      new Date(play.updated_at).getTime() -
        new Date(play.created_at).getTime() <
      60000; // within 1 min = likely just created
    const message = isNew
      ? `Started a new ${play.game_name} playthrough`
      : play.status_slug === "completed"
        ? `Completed ${play.play_name || play.game_name} playthrough`
        : play.status_slug === "dropped"
          ? `Dropped ${play.play_name || play.game_name} playthrough`
          : play.status_slug === "paused"
            ? `Paused ${play.play_name || play.game_name} playthrough`
            : `Updated ${play.play_name || play.game_name} playthrough`;

    activities.push({
      id: `play-${play.play_id}`,
      type: isNew
        ? "play_created"
        : play.status_slug === "completed"
          ? "play_completed"
          : "play_updated",
      message,
      activityAt: play.updated_at,
      play: { id: play.play_id, name: play.play_name },
      game: { slug: play.game_slug, name: play.game_name },
      generation: { id: play.generation_id, slug: play.generation_slug },
      href: `/dashboard/gen/${play.generation_id}/game/${play.game_slug}/play/${play.play_id}`,
    });
  }

  // Add team activities
  for (const t of recentTeam || []) {
    const info = playMap.get(t.play_id);
    if (!info) continue;
    const displayName = t.nickname || t.species_name;
    activities.push({
      id: `team-${t.play_id}-${t.species_name}-${t.created_at}`,
      type: "pokemon_added",
      message: `Added ${displayName} to the team`,
      activityAt: t.updated_at || t.created_at,
      play: { id: t.play_id, name: info.playName },
      game: { slug: info.gameSlug, name: info.gameName },
      generation: { id: info.generationId, slug: info.generationSlug },
      href: `/dashboard/gen/${info.generationId}/game/${info.gameSlug}/play/${t.play_id}`,
    });
  }

  // Add progress activities
  for (const p of recentProgress || []) {
    const info = playMap.get(p.play_id);
    if (!info) continue;
    activities.push({
      id: `progress-${p.play_id}-${p.item_name}-${p.completed_at}`,
      type: "progress_completed",
      message: `Completed "${p.item_name}" (${p.category_name})`,
      activityAt: p.completed_at,
      play: { id: p.play_id, name: info.playName },
      game: { slug: info.gameSlug, name: info.gameName },
      generation: { id: info.generationId, slug: info.generationSlug },
      href: `/dashboard/gen/${info.generationId}/game/${info.gameSlug}/play/${p.play_id}`,
    });
  }

  // Sort all by timestamp descending, take top N
  activities.sort(
    (a, b) =>
      new Date(b.activityAt).getTime() - new Date(a.activityAt).getTime(),
  );

  return { data: activities.slice(0, limit), error: null };
};

// =============================================================================
// GET ADVENTURE OVERVIEW (combo endpoint)
// =============================================================================

export const getAdventureOverview = async () => {
  const [statsResult, activityResult, generationsResult] = await Promise.all([
    getDashboardStats(),
    getRecentActivity(5),
    getAllGenerations(),
  ]);

  if (statsResult.error) return { data: null, error: statsResult.error };
  if (activityResult.error) return { data: null, error: activityResult.error };
  if (generationsResult.error)
    return { data: null, error: generationsResult.error };

  return {
    data: {
      stats: statsResult.data,
      recentActivity: activityResult.data ?? [],
      generationProgress: generationsResult.data ?? [],
    },
    error: null,
  };
};
