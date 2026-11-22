"use client";

import { useSyncExternalStore } from "react";

import {
  logOutAnyway,
  logOutClean,
  type LogOutResult,
} from "@/platform/local-db/account-runner";
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
 * Log out asks first, wherever it is tapped (the account menu, Settings,
 * You): the one dialog that answers (`LogOutDialog`, in the app's frame)
 * opens when asked here.
 */
let asked = false;
const listeners = new Set<() => void>();

const setAsked = (next: boolean) => {
  asked = next;

  for (const listener of listeners) listener();
};

/* Opens the Log out question. */
export const askLogOut = () => setAsked(true);

/* Closes it: answered, or left alone. */
export const closeLogOut = () => setAsked(false);

/* Whether Log out is being asked, for the dialog. */
export const useLogOutAsked = () =>
  useSyncExternalStore(
    (listener) => {
      listeners.add(listener);

      return () => {
        listeners.delete(listener);
      };
    },
    () => asked,
    () => false,
  );

/* A Log out button's action: it asks, and the dialog does the rest. */
export const useAskLogOut = () => async () => askLogOut();

const signOutHere = () => signOutOfAccount(getBrowserSupabaseClient().auth);

/*
 * Log out, clean: the account gets one last backup, the account's data
 * leaves the device and this browser signs out (`logOutClean`).
 */
export const logOutAndClear = (userId: string): Promise<LogOutResult> =>
  logOutClean(userId, signOutHere);

/* "Log out anyway", when the last backup couldn't go up: its changes are lost. */
export const logOutWithoutBackup = (userId: string) =>
  logOutAnyway(userId, signOutHere);
