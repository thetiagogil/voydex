import { createServerSupabaseClient } from "@/lib/supabase/server";
import { buildGenerationsPageData } from "@/modules/codex/features/generations/browse/data/generations-page-mappers";
import { loadGenerationsPageRows } from "@/modules/codex/features/generations/browse/server/generations-page-loaders";
import type { GenerationsPageData } from "@/modules/codex/shared/types";

export const getGenerationsPageData =
  async (): Promise<GenerationsPageData> => {
    const supabase = await createServerSupabaseClient();
    const rows = await loadGenerationsPageRows(supabase);

    return buildGenerationsPageData(rows);
  };
