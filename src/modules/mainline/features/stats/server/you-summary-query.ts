import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type YouSummary = {
  collection: { speciesCount: number };
  /* `playtimeMinutes` is null when no Play has playtime recorded. */
  statistics: { playCount: number; playtimeMinutes: number | null };
};

/*
 * The You page's two figures: Plays and recorded playtime, and how many
 * species have joined your teams. Null when nobody is signed in; a failed
 * read throws rather than reading as zero.
 */
export const readYouSummary = async (): Promise<YouSummary | null> => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    return null;
  }

  const { data, error } = await supabase
    .schema("views")
    .from("mainline_stats_summary")
    .select("total_play_count, total_playtime_minutes, used_species_count")
    .eq("user_id", userId)
    .maybeSingle();

  if (error) {
    throw new Error("Unable to load your statistics.");
  }

  return {
    collection: { speciesCount: data?.used_species_count ?? 0 },
    statistics: {
      playCount: data?.total_play_count ?? 0,
      /* As Statistics reads it: no recorded time is not zero hours. */
      playtimeMinutes:
        data?.total_playtime_minutes && data.total_playtime_minutes > 0
          ? data.total_playtime_minutes
          : null,
    },
  };
};
