import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { buildGamesPageData } from "@/modules/codex/features/games/browse/data/games-page-mappers";
import { loadGamesPageRows } from "@/modules/codex/features/games/browse/server/games-page-loaders";
import type { GamesPageData } from "@/modules/reference/types";

export const getGamesPageData = async (params?: {
  kind?: string | null;
  q?: string | null;
}): Promise<GamesPageData> => {
  const supabase = await createServerSupabaseClient();
  const rows = await loadGamesPageRows(supabase);

  return buildGamesPageData(rows, params);
};
