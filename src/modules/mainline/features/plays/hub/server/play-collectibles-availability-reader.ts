import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Whether the Play's game has collectibles at all: the Collectibles tab and
 * the Tracking switch show only for a game that does. A Play with Collectibles
 * turned off still has them.
 */
export const readMainlinePlayCollectiblesAvailability = async (
  supabase: ServerSupabaseClient,
  playId: string,
) => {
  const result = await supabase
    .schema("views")
    .from("mainline_play_collectible_detail")
    .select("collectible_entry_id")
    .eq("play_id", playId)
    .limit(1);

  if (result.error) {
    throw new Error("Unable to resolve collectible availability.");
  }

  return Boolean(result.data?.length);
};
