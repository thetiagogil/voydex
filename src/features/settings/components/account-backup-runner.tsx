"use client";

import { useEffect } from "react";

import { AccountNewerDialog } from "@/features/settings/components/account-newer-dialog";
import { useAuthSession } from "@/platform/local-db/account-session";
import {
  bringOwnDataBackIfLeft,
  startAccountBackups,
} from "@/platform/local-db/account-runner";

/*
 * Keeps this device backing up to your account while you're signed in on
 * this browser, and asks, wherever you are, when another device saved a
 * newer backup and this one changed things too. Signed out, it only puts
 * back what the device kept of its own while an account was logged in.
 */
export const AccountBackupRunner = () => {
  const session = useAuthSession();
  const userId = session?.userId ?? null;

  useEffect(() => (userId ? startAccountBackups(userId) : undefined), [userId]);

  /* Logged out for sure: what the device kept of its own is back in place. */
  useEffect(() => {
    if (session === null) void bringOwnDataBackIfLeft();
  }, [session]);

  return userId ? <AccountNewerDialog /> : null;
};
