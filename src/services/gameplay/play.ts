"use server";

import { createClient } from "@/lib/supabase/server";

export const getPlay = async (id: string) => {
  const supabase = await createClient();
  const { data: play, error: playError } = await supabase
    .schema("gameplay")
    .from("plays")
    .select("*")
    .eq("id", id)
    .maybeSingle();

  if (playError) return { data: null, error: playError };
  if (!play) return { data: null, error: null };

  let game = null;
  if (play.game_id != null) {
    const { data: g, error: gameError } = await supabase
      .schema("meta")
      .from("games")
      .select("id, slug, name, generation_id, version_group_id")
      .eq("id", play.game_id)
      .maybeSingle();
    if (gameError) return { data: null, error: gameError };
    game = g;
  }

  let generation = null;
  if (game && game.generation_id != null) {
    const { data: gen, error: genError } = await supabase
      .schema("meta")
      .from("generations")
      .select("id, slug, name")
      .eq("id", game.generation_id)
      .maybeSingle();
    if (genError) return { data: null, error: genError };
    generation = gen;
  }

  // Nest generation inside game for convenience (snapshot)
  if (game && generation) {
    game = { ...game, generation };
  }

  // Build breadcrumbs for UI (small snapshot)
  const breadcrumbs = [];
  // Adventures root
  breadcrumbs.push({ label: "Adventures", href: "/adventures" });

  if (generation) {
    const genLabel = generation.name || generation.slug;
    breadcrumbs.push({
      label: genLabel,
      href: `/adventures/gen/${generation.id}`,
      menu: { endpoint: `/api/games?generation_id=${generation.id}` },
    });
  }

  if (game) {
    breadcrumbs.push({
      label: game.name,
      href: `/adventures/gen/${generation?.id ?? "0"}/game/${game.slug}`,
      menu: { endpoint: `/api/games?generation_id=${generation?.id ?? ""}` },
    });
  }

  const finalLabel = play.name || "My Playthrough";
  breadcrumbs.push({
    label: finalLabel,
    href: `/adventures/gen/${generation?.id ?? "0"}/game/${game?.slug ?? "unknown"}/play/${play.id}`,
    current: true,
  });

  return { data: { ...play, game }, error: null, breadcrumbs };
};
