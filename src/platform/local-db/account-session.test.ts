import type { Session } from "@supabase/supabase-js";
import { describe, expect, it, vi } from "vitest";

import { createAuthSessionStore } from "./account-session";

type Listener = (event: string, session: Session | null) => void;

const session = (id: string, email?: string) =>
  ({ user: { email, id } }) as unknown as Session;

const fakeClient = (stored: Session | null) => {
  let listener: Listener = () => undefined;

  return {
    client: {
      auth: {
        getSession: vi.fn(async () => ({
          data: { session: stored },
          error: null,
        })),
        onAuthStateChange: vi.fn((callback: Listener) => {
          listener = callback;

          return { data: { subscription: { unsubscribe: () => undefined } } };
        }),
      },
    },
    emit: (event: string, next: Session | null) => listener(event, next),
  };
};

describe("createAuthSessionStore", () => {
  it("reads as loading until the stored session is read", async () => {
    const { client } = fakeClient(session("user-1", "ash@example.com"));
    const store = createAuthSessionStore(() => client as never);

    expect(store.get()).toBeUndefined();

    store.subscribe(() => undefined);
    await vi.waitFor(() =>
      expect(store.get()).toEqual({
        email: "ash@example.com",
        userId: "user-1",
      }),
    );
  });

  it("reads as signed out when nothing is stored", async () => {
    const { client } = fakeClient(null);
    const store = createAuthSessionStore(() => client as never);

    store.subscribe(() => undefined);
    await vi.waitFor(() => expect(store.get()).toBeNull());
  });

  it("follows sign-in and sign-out, telling each listener once per change", async () => {
    const { client, emit } = fakeClient(null);
    const store = createAuthSessionStore(() => client as never);
    const listener = vi.fn();

    store.subscribe(listener);
    await vi.waitFor(() => expect(store.get()).toBeNull());
    listener.mockClear();

    emit("SIGNED_IN", session("user-2", "misty@example.com"));
    /* A token refresh with the same account changes nothing. */
    emit("TOKEN_REFRESHED", session("user-2", "misty@example.com"));
    expect(store.get()).toEqual({
      email: "misty@example.com",
      userId: "user-2",
    });
    expect(listener).toHaveBeenCalledTimes(1);

    emit("SIGNED_OUT", null);
    expect(store.get()).toBeNull();
    expect(listener).toHaveBeenCalledTimes(2);
  });

  it("starts once, however many subscribe", () => {
    const { client } = fakeClient(null);
    const getClient = vi.fn(() => client as never);
    const store = createAuthSessionStore(getClient);

    store.subscribe(() => undefined);
    store.subscribe(() => undefined);

    expect(getClient).toHaveBeenCalledTimes(1);
    expect(client.auth.getSession).toHaveBeenCalledTimes(1);
  });

  it("reads as signed out when Supabase isn't set up", () => {
    const store = createAuthSessionStore(() => {
      throw new Error("Missing NEXT_PUBLIC_SUPABASE_URL.");
    });

    store.subscribe(() => undefined);

    expect(store.get()).toBeNull();
  });

  it("keeps a missing email as null", async () => {
    const { client } = fakeClient(session("user-3"));
    const store = createAuthSessionStore(() => client as never);

    store.subscribe(() => undefined);
    await vi.waitFor(() =>
      expect(store.get()).toEqual({ email: null, userId: "user-3" }),
    );
  });
});
