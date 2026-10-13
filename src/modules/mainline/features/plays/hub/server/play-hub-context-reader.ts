import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import type {
  MainlinePlayGameContextRows,
  MainlinePlayRuleRows,
} from "@/modules/mainline/features/plays/hub/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

export const readMainlinePlaySummary = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
): Promise<MainlinePlaySummary | null> => {
  const playResult = await supabase
    .schema("views")
    .from("mainline_play_summary")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .is("archived_at", null)
    .maybeSingle();

  if (playResult.error) {
    throw new Error("Unable to load Mainline play.");
  }

  return playResult.data ?? null;
};

export const readMainlinePlayGameContext = async (
  supabase: ServerSupabaseClient,
  gameId: number | null,
): Promise<MainlinePlayGameContextRows> => {
  if (!gameId) {
    return {
      game: null,
      region: null,
    };
  }

  const gameResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .eq("id", gameId)
    .maybeSingle();

  if (gameResult.error) {
    throw new Error("Unable to load Mainline play game.");
  }

  if (!gameResult.data) {
    return {
      game: null,
      region: null,
    };
  }

  const regionResult = await supabase
    .schema("reference")
    .from("regions")
    .select("*")
    .eq("id", gameResult.data.region_id)
    .maybeSingle();

  if (regionResult.error) {
    throw new Error("Unable to load Mainline play region.");
  }

  return {
    game: gameResult.data,
    region: regionResult.data ?? null,
  };
};

export const readMainlinePlayRuleRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayRuleRows> => {
  const ruleLinksResult = await supabase
    .schema("gameplay")
    .from("mainline_play_challenge_rules")
    .select("*")
    .eq("play_id", playId)
    .order("created_at", { ascending: true });

  if (ruleLinksResult.error) {
    throw new Error("Unable to load Mainline play rules.");
  }

  const links = ruleLinksResult.data ?? [];
  const ruleIds = links.map((link) => link.challenge_rule_id);

  if (!ruleIds.length) {
    return {
      links,
      rules: [],
    };
  }

  const rulesResult = await supabase
    .schema("gameplay")
    .from("mainline_challenge_rules")
    .select("*")
    .in("id", ruleIds);

  if (rulesResult.error) {
    throw new Error("Unable to load Mainline challenge rules.");
  }

  return {
    links,
    rules: rulesResult.data ?? [],
  };
};

/* The Play's tags by name, for Play details. */
export const readMainlinePlayTagNames = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<string[]> => {
  const linksResult = await supabase
    .schema("gameplay")
    .from("mainline_play_tags")
    .select("tag_id")
    .eq("play_id", playId)
    .order("created_at", { ascending: true });

  if (linksResult.error) {
    throw new Error("Unable to load Mainline play tags.");
  }

  const tagIds = (linksResult.data ?? []).map((link) => link.tag_id);

  if (!tagIds.length) {
    return [];
  }

  const tagsResult = await supabase
    .from("tags")
    .select("id, name")
    .in("id", tagIds);

  if (tagsResult.error) {
    throw new Error("Unable to load Mainline tags.");
  }

  const nameById = new Map(
    (tagsResult.data ?? []).map((tag) => [tag.id, tag.name]),
  );

  return tagIds.flatMap((tagId) => {
    const name = nameById.get(tagId);

    return name ? [name] : [];
  });
};
