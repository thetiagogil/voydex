import { createServerSupabaseClient } from "@/lib/supabase/server";
import {
  loadPokemonDetailDefaultGameRow,
  loadPokemonDetailDefaultGameSpeciesRow,
} from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-default-game-loaders";

export const getDefaultPokemonDetailGameSlug = async (
  speciesSlug: string,
): Promise<string | null> => {
  const supabase = await createServerSupabaseClient();
  const species = await loadPokemonDetailDefaultGameSpeciesRow(
    supabase,
    speciesSlug,
  );

  if (!species?.introduced_generation_id) {
    return null;
  }

  const game = await loadPokemonDetailDefaultGameRow(
    supabase,
    species.introduced_generation_id,
  );

  return game?.slug ?? null;
};
