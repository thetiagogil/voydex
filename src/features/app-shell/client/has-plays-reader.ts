import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Whether this device holds a Play, archived ones included: what the front
 * page's button goes by (Continue, or Start a Play). Null when it can't be
 * read, so the last answer stands.
 */
export const readHasPlays = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<boolean | null> => {
  const { data, error } = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .select("id")
    .eq("user_id", userId)
    .limit(1);

  return error ? null : Boolean(data?.length);
};
