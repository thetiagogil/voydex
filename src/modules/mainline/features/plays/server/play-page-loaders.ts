import type { ServerSupabaseClient } from "@/lib/supabase/server";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/types";

export const loadMainlinePlayPageData = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
): Promise<MainlinePlayPageData | null> => {
  const playResult = await supabase
    .schema("views")
    .from("mainline_play_summary")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .is("archived_at", null)
    .maybeSingle();

  if (playResult.error) {
    throw new Error("Unable to load Mainline play.");
  }

  if (!playResult.data) {
    return null;
  }

  return {
    play: playResult.data,
  };
};
