import type {
  MainlinePlayMilestoneRows,
  MainlinePlayOverview,
  MainlinePlayTeamRows,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export const readMainlinePlayOverview = async (
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

export const readMainlinePlayTeamRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
  generationId: number | null,
): Promise<MainlinePlayTeamRows> => {
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

  const members = teamResult.data ?? [];
  const formIds = uniqueNumberIds(members.map((member) => member.form_id));

  if (!formIds.length) {
    return {
      attributes: [],
      members,
      types: [],
    };
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

  return {
    attributes,
    members,
    types: typesResult?.data ?? [],
  };
};

export const readMainlinePlayMilestoneRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayMilestoneRows> => {
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

export const readMainlinePlayTimelinePreview = async (
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
