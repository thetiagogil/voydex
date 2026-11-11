"use client";

import type { Session } from "@supabase/supabase-js";
import { useSyncExternalStore } from "react";

import { getBrowserSupabaseClient } from "@/platform/supabase/browser-client";

/* Who is signed in on this browser. Signing in is only for backups. */
export type AuthSession = {
  /* Null when the account carries no email. */
  email: string | null;
  /* The account's id, the folder its backups live in. */
  userId: string;
};

/*
 * Undefined while the browser's stored session is still being read (the
 * first moment of a visit), null when nobody is signed in.
 */
export type AuthSessionState = AuthSession | null | undefined;

type AuthClient = {
  auth: Pick<
    ReturnType<typeof getBrowserSupabaseClient>["auth"],
    "getSession" | "onAuthStateChange"
  >;
};

const toAuthSession = (session: Session | null): AuthSession | null =>
  session?.user
    ? { email: session.user.email ?? null, userId: session.user.id }
    : null;

const sameSession = (a: AuthSessionState, b: AuthSessionState) =>
  a === b ||
  (Boolean(a) &&
    Boolean(b) &&
    a?.userId === b?.userId &&
    a?.email === b?.email);

/*
 * The session as one value the whole page shares: read once from the
 * browser's storage, then kept current by Supabase's sign-in, sign-out,
 * refresh and email-change events. A missing Supabase setting reads as
 * signed out, so the app still opens.
 */
export const createAuthSessionStore = (getClient: () => AuthClient) => {
  let current: AuthSessionState = undefined;
  let started = false;
  const listeners = new Set<() => void>();

  const set = (next: AuthSessionState) => {
    if (sameSession(current, next)) return;

    current = next;

    for (const listener of listeners) listener();
  };

  const start = () => {
    if (started) return;

    started = true;

    let client: AuthClient;

    try {
      client = getClient();
    } catch {
      set(null);

      return;
    }

    client.auth.onAuthStateChange((_event, session) => {
      set(toAuthSession(session));
    });
    client.auth.getSession().then(
      ({ data }) => set(toAuthSession(data.session)),
      () => set(null),
    );
  };

  return {
    get: () => current,
    subscribe: (listener: () => void) => {
      listeners.add(listener);
      start();

      return () => {
        listeners.delete(listener);
      };
    },
  };
};

const store = createAuthSessionStore(getBrowserSupabaseClient);

/* The signed-in account on this browser; see `AuthSessionState`. */
export const useAuthSession = (): AuthSessionState =>
  useSyncExternalStore(store.subscribe, store.get, () => undefined);
