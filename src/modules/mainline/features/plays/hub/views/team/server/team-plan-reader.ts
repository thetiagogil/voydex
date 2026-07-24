import type { MainlinePlayTeamPlanRows } from "@/modules/mainline/features/plays/hub/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export const readMainlinePlayTeamPlanRows = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
  generationId: number | null,
): Promise<MainlinePlayTeamPlanRows> => {
  const result = await supabase
    .schema("views")
    .from("mainline_play_team_plan_detail")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .order("slot", { ascending: true });

  if (result.error) {
    throw new Error("Unable to load the Mainline Team Plan summary.");
  }

  const rows = result.data ?? [];
  const formIds = uniqueNumberIds(rows.map((row) => row.target_form_id));

  if (!formIds.length) {
    return { attributes: [], rows, types: [] };
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
    return { attributes: [], rows, types: [] };
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
    return { attributes, rows, types: [] };
  }

  return {
    attributes,
    rows,
    types: typesResult?.data ?? [],
  };
};
