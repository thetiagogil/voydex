"use client";

import { useEffect } from "react";

import { AccountClashDialog } from "@/features/settings/components/account-clash-dialog";
import { AccountOtherPlaysDialog } from "@/features/settings/components/account-other-plays-dialog";
import { AccountOwnDataDialog } from "@/features/settings/components/account-own-data-dialog";
import {
  bringOwnDataBackIfLeft,
  startAccountSync,
} from "@/platform/local-db/account-sync";
import { useAuthSession } from "@/platform/local-db/account-session";

/*
 * Keeps this device in sync with your account while you're signed in on
 * this browser, and asks about clashes, Plays from another account, or
 * Plays this device made without one, wherever you are. Signed out, it only
 * puts back what the device kept of its own while an account was logged in.
 */
export const AccountSyncRunner = () => {
  const session = useAuthSession();
  const userId = session?.userId ?? null;

  useEffect(() => (userId ? startAccountSync(userId) : undefined), [userId]);

  /* Logged out for sure: what the device kept of its own is back in place. */
  useEffect(() => {
    if (session === null) void bringOwnDataBackIfLeft();
  }, [session]);

  return userId ? (
    <>
      <AccountClashDialog />
      <AccountOtherPlaysDialog />
      <AccountOwnDataDialog />
    </>
  ) : null;
};
