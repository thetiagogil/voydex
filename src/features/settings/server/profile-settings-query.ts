import {
  parseStartIntent,
  START_INTENT_METADATA_KEY,
  type StartIntent,
} from "@/config/start-intent";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type ProfileSettings = {
  /* Null until you choose one. */
  displayName: string | null;
};

/*
 * The profile Settings edits. A required read: a failure throws to the page's
 * error boundary instead of showing an empty name you might save over.
 */
export const readProfileSettings = async (): Promise<ProfileSettings> => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Log in to see your settings.");
  }

  const { data, error } = await supabase
    .from("profiles")
    .select("display_name")
    .eq("id", userId)
    .maybeSingle();

  if (error) {
    throw new Error("Your profile couldn't be loaded.");
  }

  return { displayName: data?.display_name?.trim() || null };
};

export type WelcomeProfile = ProfileSettings & {
  /* The game picked on Start a Play before signing up, if any. */
  intent: StartIntent | null;
};

/*
 * Welcome's first-run read: your name so far, and the pick from Start a Play
 * stored on the account. The account is read from Supabase Auth itself, not
 * the token's claims, which only catch up with new metadata on refresh.
 */
export const readWelcomeProfile = async (): Promise<WelcomeProfile> => {
  const [profile, supabase] = await Promise.all([
    readProfileSettings(),
    createServerSupabaseClient(),
  ]);
  const { data } = await supabase.auth.getUser();

  /* The pick is a nicety on this page: without it, Welcome still works. */
  return {
    ...profile,
    intent: parseStartIntent(
      data.user?.user_metadata?.[START_INTENT_METADATA_KEY],
    ),
  };
};
