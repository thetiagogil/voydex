import { createServerSupabaseClient } from "@/lib/supabase/server";
import { buildGameDetailData } from "@/modules/codex/features/games/detail/data/game-detail-mappers";
import { loadGameDetailRows } from "@/modules/codex/features/games/detail/server/game-detail-loaders";
import type { GameDetailData } from "@/modules/codex/shared/types";

export const getGameDetailData = async (
  slug: string,
): Promise<GameDetailData | null> => {
  const supabase = await createServerSupabaseClient();
  const rows = await loadGameDetailRows(supabase, slug);

  return rows ? buildGameDetailData(rows) : null;
};
