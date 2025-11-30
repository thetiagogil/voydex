import { createClient } from "@/lib/supabase/server";

export async function uncheckProgressItem(
  playId: string,
  progressItemId: number,
) {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("progress")
    .delete()
    .eq("play_id", playId)
    .eq("progress_item_id", progressItemId);

  if (error) throw error;
  return { success: true };
}
