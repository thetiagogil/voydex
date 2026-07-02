import { createServerSupabaseClient } from "@/lib/supabase/server";
import { buildGenerationDetailData } from "@/modules/codex/features/generations/detail/data/generation-detail-mappers";
import { loadGenerationDetailRows } from "@/modules/codex/features/generations/detail/server/generation-detail-loaders";
import type { GenerationDetailData } from "@/modules/codex/shared/types";

export const getGenerationDetailData = async (
  identifier: string,
): Promise<GenerationDetailData | null> => {
  const supabase = await createServerSupabaseClient();
  const rows = await loadGenerationDetailRows(supabase, identifier);

  return rows ? buildGenerationDetailData(rows) : null;
};
