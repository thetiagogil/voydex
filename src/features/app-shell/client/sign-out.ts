"use client";

import { useRouter } from "next/navigation";

import { appRoutes } from "@/config/routes";
import {
  type BrowserSupabaseClient,
  getBrowserSupabaseClient,
} from "@/platform/supabase/browser-client";

/*
 * Signs this browser out of the account. Signing out everywhere needs the
 * network; without it Supabase keeps the session, so this browser is signed
 * out on its own instead and never stays signed in after Log out.
 */
export const signOutOfAccount = async (
  auth: Pick<BrowserSupabaseClient["auth"], "signOut">,
) => {
  const { error } = await auth.signOut();

  if (error) await auth.signOut({ scope: "local" });
};

/*
 * Log out: signs this browser out of the account, then opens Log in. The
 * app keeps working with the data on this device.
 */
export const useSignOut = () => {
  const router = useRouter();

  return async () => {
    await signOutOfAccount(getBrowserSupabaseClient().auth);
    router.push(appRoutes.login);
  };
};
