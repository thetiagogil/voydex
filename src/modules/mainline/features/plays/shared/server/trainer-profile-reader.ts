import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The trainer's display name, the default trainer name of a new Play and the
 * name Home greets. Null when none is set; a failed read throws.
 */
export const readTrainerDisplayName = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<string | null> => {
  const { data, error } = await supabase
    .schema("public")
    .from("profiles")
    .select("display_name")
    .eq("id", userId)
    .maybeSingle();

  if (error) {
    throw new Error("Unable to load your trainer name.");
  }

  return data?.display_name?.trim() || null;
};
