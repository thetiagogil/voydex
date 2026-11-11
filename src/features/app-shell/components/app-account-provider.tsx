"use client";

import {
  createContext,
  useContext,
  useEffect,
  useState,
  type ReactNode,
} from "react";

import { readLocalAccount } from "@/features/app-shell/client/local-account-reader";
import type { AppAccount } from "@/features/app-shell/types";
import { localUserId } from "@/platform/local-db/device-schema";
import { useAuthSession } from "@/platform/local-db/account-session";
import { subscribeLocalSaves } from "@/platform/local-db/local-db-context";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";

const defaultAccount = (email: string | null): AppAccount => ({
  displayName: null,
  email,
  icon: null,
  motion: "full",
  searchFilters: "folded",
  trainerSince: null,
});

const AppAccountContext = createContext<AppAccount>(defaultAccount(null));

/*
 * You, for the bars, the menus and every page: read from this device once
 * its database is open, and again after each save, so a new name or icon
 * shows at once. Until then the bars show the defaults (your initial).
 */
export const AppAccountProvider = ({ children }: { children: ReactNode }) => {
  /* The signed-in account's email, from this browser; null when signed out. */
  const email = useAuthSession()?.email ?? null;
  const [account, setAccount] = useState(() => defaultAccount(email));

  useEffect(() => {
    let current = true;
    const read = () => {
      getLocalQueryClient()
        .then((client) =>
          readLocalAccount(client, { email, userId: localUserId }),
        )
        .then(
          (next) => {
            if (current) setAccount(next);
          },
          () => undefined,
        );
    };

    read();

    const stop = subscribeLocalSaves(read);

    return () => {
      current = false;
      stop();
    };
  }, [email]);

  return (
    <AppAccountContext.Provider value={account}>
      {children}
    </AppAccountContext.Provider>
  );
};

export const useAppAccount = () => useContext(AppAccountContext);
