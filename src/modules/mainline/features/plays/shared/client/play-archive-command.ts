import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Archive hides a Play from your lists until you restore it; restore puts
 * it back. Nothing recorded in it changes. Throws when the Play isn't
 * yours (or isn't there).
 */
export const setPlayArchived = async (
  supabase: ServerSupabaseClient,
  {
    archived,
    playId,
    userId,
  }: { archived: boolean; playId: string; userId: string },
) => {
  const { data, error } = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .update({ archived_at: archived ? new Date().toISOString() : null })
    .eq("id", playId)
    .eq("user_id", userId)
    .select("id");

  if (error || !data?.length) {
    throw new Error(
      archived
        ? "Unable to archive this Play."
        : "Unable to restore this Play.",
    );
  }
};
