import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type {
  MainlinePlayCollectibleDetailRow,
  MainlinePlayCollectibleGroupRow,
  MainlinePlayProgressCollectiblesData,
} from "../types";
import { buildMainlinePlayCollectiblesData } from "../utils/collectibles-progress-model";

const PAGE_SIZE = 1000;

const readCollectibleDetailRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
) => {
  const rows: MainlinePlayCollectibleDetailRow[] = [];

  for (let from = 0; ; from += PAGE_SIZE) {
    const result = await supabase
      .schema("views")
      .from("mainline_play_collectible_detail")
      .select("*")
      .eq("play_id", playId)
      .order("collectible_id", { ascending: true })
      .order("collectible_entry_sort_order", { ascending: true })
      .range(from, from + PAGE_SIZE - 1);

    if (result.error) {
      throw new Error("Unable to load Mainline collectible progress.");
    }

    const page = result.data ?? [];
    rows.push(...page);

    if (page.length < PAGE_SIZE) {
      return rows;
    }
  }
};

export const readMainlinePlayCollectiblesProgress = async (
  supabase: ServerSupabaseClient,
  {
    gameName,
    playId,
  }: {
    gameName: string;
    playId: string;
  },
): Promise<MainlinePlayProgressCollectiblesData> => {
  const rows = await readCollectibleDetailRows(supabase, playId);
  const groupIds = [
    ...new Set(
      rows.flatMap((row) => (row.collectible_id ? [row.collectible_id] : [])),
    ),
  ];
  const groupsResult = groupIds.length
    ? await supabase
        .schema("tracking")
        .from("mainline_collectibles")
        .select("*")
        .in("id", groupIds)
        .order("sort_order", { ascending: true })
    : { data: [] as MainlinePlayCollectibleGroupRow[], error: null };

  if (groupsResult.error) {
    throw new Error("Unable to load collectible groups.");
  }

  return buildMainlinePlayCollectiblesData({
    gameName,
    groupRows: (groupsResult.data ?? []) as MainlinePlayCollectibleGroupRow[],
    rows,
  });
};
