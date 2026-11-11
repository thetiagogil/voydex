"use client";

import { useEffect } from "react";

import { AccountClashDialog } from "@/features/settings/components/account-clash-dialog";
import { startAccountSync } from "@/platform/local-db/account-sync";
import { useAuthSession } from "@/platform/local-db/account-session";

/*
 * Keeps this device in sync with your account while you're signed in on
 * this browser, and asks about clashes wherever you are. Signed out, it
 * does nothing.
 */
export const AccountSyncRunner = () => {
  const userId = useAuthSession()?.userId ?? null;

  useEffect(() => (userId ? startAccountSync(userId) : undefined), [userId]);

  return userId ? <AccountClashDialog /> : null;
};
