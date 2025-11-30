"use server";

import { createClient } from "@/lib/supabase/server";

export async function checkProgressItemBatch(
  playId: string,
  progressItemIds: number[],
) {
  const supabase = await createClient();

  // Insert multiple progress records at once
  const records = progressItemIds.map((itemId) => ({
    play_id: playId,
    progress_item_id: itemId,
    completed_at: new Date().toISOString(),
  }));

  const { error } = await supabase
    .schema("gameplay")
    .from("progress")
    .upsert(records, {
      onConflict: "play_id,progress_item_id",
      ignoreDuplicates: false,
    });

  if (error) throw error;
  return { data: { success: true }, error: null };
}
