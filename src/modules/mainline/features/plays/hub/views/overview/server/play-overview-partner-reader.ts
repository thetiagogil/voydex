import type { OverviewPartnerFormRows } from "@/modules/mainline/features/plays/hub/views/overview/data/partner-choice-mapper";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

/* The partner options' art and types, read at the Play's generation. */
export const readMainlinePlayOverviewPartnerRows = async (
  supabase: ServerSupabaseClient,
  formIds: number[],
  generationId: number | null,
): Promise<OverviewPartnerFormRows> => {
  if (!formIds.length) {
    return { attributes: [], forms: [], types: [] };
  }

  let attributesQuery = supabase
    .schema("reference")
    .from("pokemon_attributes")
    .select("form_id, generation_start_id, primary_type_id, secondary_type_id")
    .in("form_id", formIds);

  if (generationId) {
    attributesQuery = attributesQuery.lte("generation_start_id", generationId);
  }

  const [formsResult, attributesResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("id, name, sprite_slug")
      .in("id", formIds),
    attributesQuery,
  ]);

  if (formsResult.error || attributesResult.error) {
    throw new Error("Unable to load the Play's partner choices.");
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
    throw new Error("Unable to load the Play's partner types.");
  }

  return {
    attributes,
    forms: formsResult.data ?? [],
    types: typesResult?.data ?? [],
  };
};
