import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type {
  MainlineChallengeRule,
  MainlinePlayGame,
  MainlinePlayMilestone,
  MainlinePlayOverview,
  MainlinePlayPageData,
  MainlinePlayPokemonAttributes,
  MainlinePlayRegion,
  MainlinePlayTeamMember,
  MainlinePlayTeamMemberRow,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/shared/types";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import { byId, uniqueNumberIds } from "@/shared/utils/collections";

type MainlinePlayGameData = {
  coverImageUrl: string | null;
  game: MainlinePlayGame | null;
  region: MainlinePlayRegion | null;
};

type MainlinePlayMilestoneOverview = {
  lastCompletedMilestone: MainlinePlayMilestone | null;
  nextMilestone: MainlinePlayMilestone | null;
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

const loadMainlinePlayOverview = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
): Promise<MainlinePlayOverview | null> => {
  const overviewResult = await supabase
    .schema("views")
    .from("mainline_play_overview")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .maybeSingle();

  if (overviewResult.error) {
    throw new Error("Unable to load Mainline play overview.");
  }

  return overviewResult.data ?? null;
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

const resolveLatestAttributesByForm = (
  attributes: MainlinePlayPokemonAttributes[],
): Map<number, MainlinePlayPokemonAttributes> => {
  const latestAttributesByForm = new Map<
    number,
    MainlinePlayPokemonAttributes
  >();

  for (const attribute of attributes) {
    const currentAttribute = latestAttributesByForm.get(attribute.form_id);

    if (
      !currentAttribute ||
      attribute.generation_start_id > currentAttribute.generation_start_id
    ) {
      latestAttributesByForm.set(attribute.form_id, attribute);
    }
  }

  return latestAttributesByForm;
};

const loadMainlinePlayTeamPreview = async (
  supabase: ServerSupabaseClient,
  playId: string,
  generationId: number | null,
): Promise<MainlinePlayTeamMember[]> => {
  const teamResult = await supabase
    .schema("views")
    .from("mainline_play_team_detail")
    .select("*")
    .eq("play_id", playId)
    .eq("roster_state_slug", "active")
    .order("slot", { ascending: true })
    .limit(6);

  if (teamResult.error) {
    throw new Error("Unable to load Mainline play team preview.");
  }

  const teamRows: MainlinePlayTeamMemberRow[] = teamResult.data ?? [];
  const formIds = uniqueNumberIds(teamRows.map((member) => member.form_id));

  if (!formIds.length) {
    return teamRows.map((member) => ({
      ...member,
      primaryType: null,
      secondaryType: null,
    }));
  }

  let attributesQuery = supabase
    .schema("reference")
    .from("pokemon_attributes")
    .select("*")
    .in("form_id", formIds);

  if (generationId) {
    attributesQuery = attributesQuery.lte("generation_start_id", generationId);
  }

  const attributesResult = await attributesQuery
    .order("form_id", { ascending: true })
    .order("generation_start_id", { ascending: false });

  if (attributesResult.error) {
    throw new Error("Unable to load Mainline play team types.");
  }

  const attributes = attributesResult.data ?? [];
  const typeIds = uniqueNumberIds(
    attributes.flatMap((attribute) => [
      attribute.primary_type_id,
      attribute.secondary_type_id,
    ]),
  );

  const typesResult = typeIds.length
    ? await supabase
        .schema("reference")
        .from("types")
        .select("*")
        .in("id", typeIds)
    : null;

  if (typesResult?.error) {
    throw new Error("Unable to load Mainline play team type references.");
  }

  const latestAttributesByForm = resolveLatestAttributesByForm(attributes);
  const typeById = byId(typesResult?.data ?? []);

  return teamRows.map((member) => {
    const attributesForForm = member.form_id
      ? latestAttributesByForm.get(member.form_id)
      : null;

    return {
      ...member,
      primaryType: attributesForForm
        ? (typeById.get(attributesForForm.primary_type_id) ?? null)
        : null,
      secondaryType: attributesForForm?.secondary_type_id
        ? (typeById.get(attributesForForm.secondary_type_id) ?? null)
        : null,
    };
  });
};

const loadMainlinePlayMilestoneOverview = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayMilestoneOverview> => {
  const [lastCompletedResult, nextMilestoneResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("is_completed", true)
      .order("completed_at", { ascending: false })
      .order("sort_order", { ascending: false })
      .limit(1)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("is_completed", false)
      .eq("is_included_in_completion", true)
      .order("sort_order", { ascending: true })
      .limit(1)
      .maybeSingle(),
  ]);

  if (lastCompletedResult.error || nextMilestoneResult.error) {
    throw new Error("Unable to load Mainline play milestone overview.");
  }

  return {
    lastCompletedMilestone: lastCompletedResult.data ?? null,
    nextMilestone: nextMilestoneResult.data ?? null,
  };
};

const loadMainlinePlayTimelinePreview = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayTimelineEvent[]> => {
  const timelineResult = await supabase
    .schema("views")
    .from("mainline_play_timeline_detail")
    .select("*")
    .eq("play_id", playId)
    .order("timeline_order", { ascending: false })
    .order("happened_at", { ascending: false })
    .limit(5);

  if (timelineResult.error) {
    throw new Error("Unable to load Mainline play timeline preview.");
  }

  return timelineResult.data ?? [];
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

  const [gameData, overview, rules, teamPreview, milestones, timelinePreview] =
    await Promise.all([
      loadMainlinePlayGameData(supabase, playResult.data.game_id),
      loadMainlinePlayOverview(supabase, userId, playId),
      loadMainlinePlayRules(supabase, playId),
      loadMainlinePlayTeamPreview(
        supabase,
        playId,
        playResult.data.generation_id,
      ),
      loadMainlinePlayMilestoneOverview(supabase, playId),
      loadMainlinePlayTimelinePreview(supabase, playId),
    ]);

  return {
    ...gameData,
    ...milestones,
    overview,
    play: playResult.data,
    rules,
    teamPreview,
    timelinePreview,
  };
};
