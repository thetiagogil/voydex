"use server";

import { createClient } from "@/lib/supabase/server";
import { getGameCoverUrl } from "@/lib/supabase/storage";

// =============================================================================
// GET GAME (direct query against reference.games)
// =============================================================================

export const getGame = async (slug: string) => {
  const supabase = await createClient();

  const { data: game, error } = await supabase
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
    .eq("slug", slug)
    .maybeSingle();

  if (error) return { data: null, error };
  if (!game) return { data: null, error: null };

  const gen = game.generation as any;
  const region = game.region as any;
  const gameType = game.game_type as any;

  const result = {
    id: game.id,
    slug: game.slug,
    name: game.name,
    type: gameType.slug,
    versionGroupId: game.version_group_id,
    releaseYear: game.release_year,
    coverUrl: await getGameCoverUrl(game.slug),
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
  };

  const breadcrumbs = [
    { label: "Dashboard", href: "/dashboard" },
    {
      label: gen.name,
      href: `/dashboard/gen/${gen.id}`,
    },
    {
      label: game.name,
      href: `/dashboard/gen/${gen.id}/game/${game.slug}`,
      current: true,
    },
  ];

  return { data: result, error: null, breadcrumbs };
};

// =============================================================================
// GET GAME USER STATS (direct query)
// =============================================================================

export const getGameUserStats = async (gameId: number) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  // Get plays for this game
  const { data: plays, error } = await supabase
    .schema("views")
    .from("play_summary")
    .select("play_id, status_slug")
    .eq("game_id", gameId)
    .eq("user_id", user.id);

  if (error) return { data: null, error };

  const totalPlays = plays?.length ?? 0;
  const activePlays =
    plays?.filter((p) => p.status_slug === "active").length ?? 0;
  const completedPlays =
    plays?.filter((p) => p.status_slug === "completed").length ?? 0;

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
// GET GAME PLAYS (direct query via play_summary)
// =============================================================================

export const getGamePlays = async (gameId: number) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  const { data, error } = await supabase
    .schema("views")
    .from("play_summary")
    .select("*")
    .eq("game_id", gameId)
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((play) => ({
    id: play.play_id,
    name: play.play_name,
    status: {
      slug: play.status_slug,
      name: play.status_name,
      isTerminal: play.status_is_terminal,
    },
    updatedAt: play.updated_at,
  }));

  return { data: result, error: null };
};

// =============================================================================
// GET GAMES BY GENERATION (direct query)
// =============================================================================

export const getGamesByGeneration = async (generationId: number) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("reference")
    .from("games")
    .select(
      `
      id, slug, name, version_group_id, release_year,
      region:regions!inner(id, slug, name),
      game_type:game_types!inner(slug, name)
    `,
    )
    .eq("generation_id", generationId)
    .order("release_year", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = await Promise.all(
    data.map(async (game) => {
      const region = game.region as any;
      const gameType = game.game_type as any;
      return {
        id: game.id,
        slug: game.slug,
        name: game.name,
        type: gameType.slug,
        releaseYear: game.release_year,
        coverUrl: await getGameCoverUrl(game.slug),
        region: {
          id: region.id,
          slug: region.slug,
          name: region.name,
        },
      };
    }),
  );

  return { data: result, error: null };
};
