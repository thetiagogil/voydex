import type { ServerSupabaseClient } from "@/lib/supabase/server";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/plays/types";

export const loadMainlinePlaysPageData = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<MainlinePlaysPageData> => {
  const playsResult = await supabase
    .schema("views")
    .from("mainline_play_summary")
    .select("*")
    .eq("user_id", userId)
    .is("archived_at", null)
    .order("updated_at", { ascending: false });

  if (playsResult.error) {
    throw new Error("Unable to load Mainline plays.");
  }

  return {
    plays: playsResult.data ?? [],
  };
};
