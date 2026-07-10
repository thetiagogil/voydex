import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { buildPokedexPageData } from "@/modules/codex/features/pokemon/browse/data/pokedex-page-mappers";
import { loadPokedexPageRows } from "@/modules/codex/features/pokemon/browse/server/pokedex-page-loaders";
import type { PokedexPageData } from "@/modules/reference/types";

export const getPokedexPageData = async (): Promise<PokedexPageData> => {
  const supabase = await createServerSupabaseClient();
  const rows = await loadPokedexPageRows(supabase);

  return buildPokedexPageData(rows);
};
