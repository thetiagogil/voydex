import type { TypeIntroduction } from "@/modules/reference/features/games/domain/game-types";
import type { PublicSupabaseClient } from "@/platform/supabase/public-client";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Every type with the place of the generation that brought it in, in the
 * series' order, for `getGameTypes`.
 */
export const readTypeIntroductions = async (
  supabase: PublicSupabaseClient | ServerSupabaseClient,
): Promise<TypeIntroduction[]> => {
  const { data, error } = await supabase
    .schema("reference")
    .from("types")
    .select(
      "id, name, slug, generation:generations!introduced_generation_id(sort_order)",
    )
    .order("sort_order", { ascending: true });

  if (error) {
    throw new Error("Unable to read the Pokémon types.");
  }

  return (data ?? []).map((type) => ({
    id: type.id,
    introducedGenerationNumber: type.generation.sort_order,
    name: type.name,
    slug: type.slug,
  }));
};
