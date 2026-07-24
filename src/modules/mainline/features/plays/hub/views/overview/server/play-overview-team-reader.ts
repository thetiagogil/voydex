import type { MainlinePlayTeamPreviewRows } from "@/modules/mainline/features/plays/hub/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export const readMainlinePlayOverviewTeamRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
  generationId: number | null,
): Promise<MainlinePlayTeamPreviewRows> => {
  const membersResult = await supabase
    .schema("views")
    .from("mainline_play_team_detail")
    .select(
      "form_id, form_name, is_shiny, level, nickname, play_pokemon_id, roster_state_slug, slot, species_name, species_slug, sprite_slug",
    )
    .eq("play_id", playId)
    .eq("roster_state_slug", "active")
    .order("slot", { ascending: true, nullsFirst: false })
    .order("created_at", { ascending: true });

  if (membersResult.error) {
    throw new Error("Unable to load the Mainline Play team preview.");
  }

  const members = membersResult.data ?? [];
  const formIds = uniqueNumberIds(members.map((member) => member.form_id));

  if (!formIds.length) {
    return { attributes: [], members, types: [] };
  }

  let attributesQuery = supabase
    .schema("reference")
    .from("pokemon_attributes")
    .select("form_id, generation_start_id, primary_type_id, secondary_type_id")
    .in("form_id", formIds);

  if (generationId) {
    attributesQuery = attributesQuery.lte("generation_start_id", generationId);
  }

  const attributesResult = await attributesQuery
    .order("form_id", { ascending: true })
    .order("generation_start_id", { ascending: false });

  if (attributesResult.error) {
    throw new Error(
      "Unable to load the Mainline Play team preview attributes.",
    );
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
        .select("id, name, slug")
        .in("id", typeIds)
    : null;

  if (typesResult?.error) {
    throw new Error("Unable to load the Mainline Play team preview types.");
  }

  return {
    attributes,
    members,
    types: typesResult?.data ?? [],
  };
};
