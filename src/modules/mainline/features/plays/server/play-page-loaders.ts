import type { ServerSupabaseClient } from "@/lib/supabase/server";
import type {
  MainlineChallengeRule,
  MainlinePlayGame,
  MainlinePlayPageData,
  MainlinePlayRegion,
} from "@/modules/mainline/features/plays/types";
import { getGameCoverImageUrl } from "@/shared/domain/games/game-images";

type MainlinePlayGameData = {
  coverImageUrl: string | null;
  game: MainlinePlayGame | null;
  region: MainlinePlayRegion | null;
};

const loadMainlinePlayGameData = async (
  supabase: ServerSupabaseClient,
  gameId: number | null,
): Promise<MainlinePlayGameData> => {
  if (!gameId) {
    return {
      coverImageUrl: null,
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
      coverImageUrl: null,
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
    coverImageUrl: getGameCoverImageUrl(gameResult.data),
    game: gameResult.data,
    region: regionResult.data ?? null,
  };
};

const loadMainlinePlayRules = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlineChallengeRule[]> => {
  const ruleLinksResult = await supabase
    .schema("gameplay")
    .from("mainline_play_challenge_rules")
    .select("*")
    .eq("play_id", playId)
    .order("created_at", { ascending: true });

  if (ruleLinksResult.error) {
    throw new Error("Unable to load Mainline play rules.");
  }

  const ruleLinks = ruleLinksResult.data ?? [];
  const ruleIds = ruleLinks.map((ruleLink) => ruleLink.challenge_rule_id);

  if (!ruleIds.length) {
    return [];
  }

  const rulesResult = await supabase
    .schema("gameplay")
    .from("mainline_challenge_rules")
    .select("*")
    .in("id", ruleIds);

  if (rulesResult.error) {
    throw new Error("Unable to load Mainline challenge rules.");
  }

  const ruleById = new Map(
    (rulesResult.data ?? []).map((rule) => [rule.id, rule]),
  );

  return ruleLinks
    .map((ruleLink) => ruleById.get(ruleLink.challenge_rule_id))
    .filter((rule): rule is MainlineChallengeRule => Boolean(rule));
};

export const loadMainlinePlayPageData = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
): Promise<MainlinePlayPageData | null> => {
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

  if (!playResult.data) {
    return null;
  }

  const [gameData, rules] = await Promise.all([
    loadMainlinePlayGameData(supabase, playResult.data.game_id),
    loadMainlinePlayRules(supabase, playId),
  ]);

  return {
    ...gameData,
    play: playResult.data,
    rules,
  };
};
