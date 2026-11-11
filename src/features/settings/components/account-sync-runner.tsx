"use client";

import { useEffect } from "react";

import { AccountClashDialog } from "@/features/settings/components/account-clash-dialog";
import { startAccountSync } from "@/platform/local-db/account-sync";

/*
 * Keeps this device in sync with your account while you're signed in, and
 * asks about clashes wherever you are. Signed out, it does nothing.
 */
export const AccountSyncRunner = ({ userId }: { userId: string | null }) => {
  useEffect(() => (userId ? startAccountSync(userId) : undefined), [userId]);

  return userId ? <AccountClashDialog /> : null;
};
