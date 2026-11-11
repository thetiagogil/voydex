import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { buildPokedexPageData } from "@/modules/codex/features/pokemon/browse/data/pokedex-page-mappers";
import { loadPokedexPageRows } from "@/modules/codex/features/pokemon/browse/server/pokedex-page-loaders";
import type { PokedexPageData } from "@/modules/reference/types";

/* The Pokémon browse page: every species with its default form. */
export const readPokedexPageData = async (
  supabase: ServerSupabaseClient,
): Promise<PokedexPageData> => {
  const rows = await loadPokedexPageRows(supabase);

  return buildPokedexPageData(rows);
};
