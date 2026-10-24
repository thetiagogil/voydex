import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { getTrainerNameSuggestions } from "@/modules/mainline/features/plays/hub/data/play-header-trainer-names";
import type {
  MainlinePlayGameContextRows,
  MainlinePlayRuleRows,
  PlayHeaderEditing,
} from "@/modules/mainline/features/plays/hub/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

/*
 * The Play the hub opens, archived or not: an archived Play still opens (from
 * Collection or the Plays page's Archived list) and shows its banner with
 * Restore.
 */
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
      types: [],
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

  /* The types the rules' options name, such as Monotype's. */
  const typeIds = uniqueNumberIds(
    links.map((link) => {
      const typeId = (link.config_override as { type_id?: unknown } | null)
        ?.type_id;

      return typeof typeId === "number" ? typeId : null;
    }),
  );
  const typesResult = typeIds.length
    ? await supabase
        .schema("reference")
        .from("types")
        .select("id, name")
        .in("id", typeIds)
    : null;

  if (typesResult?.error) {
    throw new Error("Unable to load Mainline challenge rules.");
  }

  return {
    links,
    rules: rulesResult.data ?? [],
    types: typesResult?.data ?? [],
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

/*
 * What the Play head's dialogs offer: every status, and the trainer names
 * your other Plays use for the quick picks.
 */
export const readPlayHeaderEditing = async (
  supabase: ServerSupabaseClient,
  {
    currentTrainerName,
    playId,
    userId,
  }: { currentTrainerName: string | null; playId: string; userId: string },
): Promise<PlayHeaderEditing> => {
  const [statusesResult, namesResult] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_play_statuses")
      .select("id, name, slug")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_plays")
      .select("trainer_name")
      .eq("user_id", userId)
      .neq("id", playId)
      .not("trainer_name", "is", null),
  ]);

  if (statusesResult.error || namesResult.error) {
    throw new Error("Unable to load the Play's status and trainer options.");
  }

  return {
    statuses: statusesResult.data ?? [],
    trainerNames: getTrainerNameSuggestions(
      (namesResult.data ?? []).map((row) => row.trainer_name),
      currentTrainerName,
    ),
  };
};
