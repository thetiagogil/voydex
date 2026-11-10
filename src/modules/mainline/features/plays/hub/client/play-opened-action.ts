import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import { readLocalClaims } from "@/platform/local-db/local-claims";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";
import { safeParseInput } from "@/shared/utils/input-schemas";

/*
 * Stamps when the trainer opened a Play, for Home's shelf order. Only
 * last_opened_at moves: the database doesn't count it as a change to the
 * Play, and it adds no History moment. Best effort: a failure leaves the
 * shelf order as it was.
 */
export const markPlayOpenedAction = async (playId: string): Promise<void> => {
  const parsed = safeParseInput(playIdSchema, playId);

  if (!parsed.ok) {
    return;
  }

  const supabase = await getLocalQueryClient();
  const claimsResult = await readLocalClaims(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    return;
  }

  await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .update({ last_opened_at: new Date().toISOString() })
    .eq("id", parsed.data)
    .eq("user_id", userId);
};
