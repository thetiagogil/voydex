import { cache } from "react";

import { readAccountIcon } from "@/features/app-shell/server/account-icon-reader";
import type { SignedInAccount } from "@/features/app-shell/types";
import { formatTrainerSince } from "@/features/app-shell/utils/trainer-since";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Who is signed in, for the bars, the account menu and the trainer card: the
 * email from the claims, and the display name, Pokémon icon and when the
 * account was made from the profile. Null when nobody is signed in. Read once
 * per request.
 */
export const getSignedInAccount = cache(
  async (): Promise<SignedInAccount | null> => {
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);
    const claims = claimsResult?.error ? null : claimsResult?.data?.claims;

    if (!claims?.sub) {
      return null;
    }

    const { data: profile } = await supabase
      .from("profiles")
      .select("created_at, display_name, icon_form_id")
      .eq("id", claims.sub)
      .maybeSingle();

    return {
      /* The name, icon and "Trainer since" are quiet extras: a failed read leaves them out. */
      displayName: profile?.display_name?.trim() || null,
      email: typeof claims.email === "string" ? claims.email : null,
      icon: await readAccountIcon(supabase, profile?.icon_form_id ?? null),
      trainerSince: formatTrainerSince(profile?.created_at),
    };
  },
);
