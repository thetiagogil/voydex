import {
  parseStartIntent,
  START_INTENT_METADATA_KEY,
  type StartIntent,
} from "@/config/start-intent";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type ProfileSettings = {
  /* Null until you choose one. */
  defaultTrainerName: string | null;
  /* Null until you choose one. */
  displayName: string | null;
  /* The Pokémon form you picked as your icon; null until you pick one. */
  iconFormId: number | null;
  /* Null until Welcome is finished or skipped. */
  welcomeCompletedAt: string | null;
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
    .select(
      "default_trainer_name, display_name, icon_form_id, welcome_completed_at",
    )
    .eq("id", userId)
    .maybeSingle();

  if (error) {
    throw new Error("Your profile couldn't be loaded.");
  }

  return {
    defaultTrainerName: data?.default_trainer_name?.trim() || null,
    displayName: data?.display_name?.trim() || null,
    iconFormId: data?.icon_form_id ?? null,
    welcomeCompletedAt: data?.welcome_completed_at ?? null,
  };
};

export type WelcomeProfile = ProfileSettings & {
  /* The game picked on Start a Play before signing up, if any. */
  intent: StartIntent | null;
};

/*
 * Welcome's first-run read: your profile so far, and the pick from Start a
 * Play stored on the account. The account is read from Supabase Auth itself,
 * not the token's claims, which only catch up with new metadata on refresh.
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
