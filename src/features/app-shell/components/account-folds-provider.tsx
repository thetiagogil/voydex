"use client";

import type { ReactNode } from "react";

import { useAppAccount } from "@/features/app-shell/components/app-account-provider";
import { FoldsOpenProvider } from "@/shared/components/fold";

/* Lists keep their search and filters open when your setting says so. */
export const AccountFoldsProvider = ({ children }: { children: ReactNode }) => {
  const { searchFilters } = useAppAccount();

  return (
    <FoldsOpenProvider open={searchFilters === "open"}>
      {children}
    </FoldsOpenProvider>
  );
};
