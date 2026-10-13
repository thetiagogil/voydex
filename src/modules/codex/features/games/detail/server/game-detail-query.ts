import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { buildGameDetailData } from "@/modules/codex/features/games/detail/data/game-detail-mappers";
import { loadGameDetailRows } from "@/modules/codex/features/games/detail/server/game-detail-loaders";
import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";

export const getGameDetailData = async (
  slug: string,
): Promise<CodexGameDetailData | null> => {
  const supabase = await createServerSupabaseClient();
  const rows = await loadGameDetailRows(supabase, slug);

  return rows ? buildGameDetailData(rows) : null;
};
