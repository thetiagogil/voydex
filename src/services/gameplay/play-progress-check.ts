import { createClient } from "@/lib/supabase/server";

export async function checkProgressItem(
  playId: string,
  progressItemId: number,
) {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("progress")
    .insert({
      play_id: playId,
      progress_item_id: progressItemId,
      completed_at: new Date().toISOString(),
    })
    .select()
    .single();

  if (error) throw error;
  return data;
}
