"use client";

import { useQueryClient } from "@tanstack/react-query";
import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useRef,
  useState,
  type ReactNode,
} from "react";

interface DatabaseStatusContextValue {
  isDbAvailable: boolean;
  isChecking: boolean;
  recheckHealth: () => Promise<boolean>;
}

const DatabaseStatusContext = createContext<DatabaseStatusContextValue>({
  isDbAvailable: true,
  isChecking: true,
  recheckHealth: async () => true,
});

const RETRY_INTERVAL_MS = 30_000;

function clearSupabaseAuthCookies() {
  document.cookie.split(";").forEach((c) => {
    const name = c.split("=")[0].trim();
    if (name.startsWith("sb-") || name.includes("supabase")) {
      document.cookie = `${name}=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/`;
    }
  });
}

export const DatabaseStatusProvider = ({
  children,
}: {
  children: ReactNode;
}) => {
  const [isDbAvailable, setIsDbAvailable] = useState(true);
  const [isChecking, setIsChecking] = useState(true);
  const hasLoggedOut = useRef(false);
  const queryClient = useQueryClient();

  const checkHealth = useCallback(async () => {
    try {
      const res = await fetch("/api/health", { cache: "no-store" });
      const ok = res.ok;
      setIsDbAvailable(ok);
      if (ok) hasLoggedOut.current = false;
      return ok;
    } catch {
      setIsDbAvailable(false);
      return false;
    } finally {
      setIsChecking(false);
    }
  }, []);

  useEffect(() => {
    checkHealth();
  }, [checkHealth]);

  // Auto-logout: clear cookies & auth cache when DB goes down
  useEffect(() => {
    if (isChecking || isDbAvailable || hasLoggedOut.current) return;
    hasLoggedOut.current = true;
    clearSupabaseAuthCookies();
    queryClient.setQueryData(["auth", "claims"], false);
  }, [isDbAvailable, isChecking, queryClient]);

  // Re-poll while DB is down so the app auto-recovers
  useEffect(() => {
    if (isDbAvailable || isChecking) return;
    const interval = setInterval(checkHealth, RETRY_INTERVAL_MS);
    return () => clearInterval(interval);
  }, [isDbAvailable, isChecking, checkHealth]);

  return (
    <DatabaseStatusContext.Provider
      value={{ isDbAvailable, isChecking, recheckHealth: checkHealth }}
    >
      {children}
    </DatabaseStatusContext.Provider>
  );
};

export const useDatabaseStatus = () => useContext(DatabaseStatusContext);
