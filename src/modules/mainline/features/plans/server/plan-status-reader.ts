import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * A Plan's status slug (draft, active, archived), read before a change an
 * archived Plan refuses. Throws when it can't be read.
 */
export const readPlanStatusSlug = async (
  supabase: ServerSupabaseClient,
  planId: string,
) => {
  const { data, error } = await supabase
    .schema("views")
    .from("mainline_team_plan_summary")
    .select("status_slug")
    .eq("team_plan_id", planId)
    .maybeSingle();

  if (error) {
    throw new Error("Unable to read the Plan.");
  }

  return data?.status_slug ?? null;
};
