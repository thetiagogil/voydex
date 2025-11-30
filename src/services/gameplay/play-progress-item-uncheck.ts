import { createClient } from "@/lib/supabase/server";

export async function uncheckPlayProgressItem(
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

export async function uncheckPlayProgressItemBatch(
  playId: string,
  progressItemIds: number[],
) {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("progress")
    .delete()
    .eq("play_id", playId)
    .in("progress_item_id", progressItemIds);

  if (error) throw error;
  return { data: { success: true }, error: null };
}
