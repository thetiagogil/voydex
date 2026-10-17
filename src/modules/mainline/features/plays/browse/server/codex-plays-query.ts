import { cache } from "react";

import {
  settleCodexExtra,
  toCodexPlays,
  type CodexPlay,
} from "@/modules/mainline/features/plays/browse/data/codex-plays-model";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";

export type { CodexPlay };

const readSignedInClient = async () => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  return userId ? { supabase, userId } : null;
};

/*
 * The signed-in trainer's Plays still in the library, newest activity first,
 * with the client that read them; null when nobody is signed in or the read
 * fails, so the Codex's Mainline pieces render nothing instead of breaking
 * a public page. Read once per request: an entry's hero and its In your
 * Plays card share it.
 */
export const readCodexPlays = cache(
  async (): Promise<{
    plays: CodexPlay[];
    supabase: ServerSupabaseClient;
  } | null> =>
    settleCodexExtra(
      "Reading your Plays",
      async () => {
        const session = await readSignedInClient();

        if (!session) {
          return null;
        }

        const { data, error } = await session.supabase
          .schema("views")
          .from("mainline_play_summary")
          .select(
            "game_name, game_slug, play_id, play_name, status_name, status_slug, version_group_slug",
          )
          .eq("user_id", session.userId)
          .is("archived_at", null)
          .order("updated_at", { ascending: false });

        if (error) {
          throw new Error("Unable to load your Plays.", { cause: error });
        }

        return { plays: toCodexPlays(data ?? []), supabase: session.supabase };
      },
      null,
    ),
);
