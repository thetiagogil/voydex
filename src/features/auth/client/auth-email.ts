"use client";

import { useSyncExternalStore } from "react";

/*
 * The email someone just typed, kept in this tab for half an hour so the
 * next page can say where the link went ("We sent a link to …"), send it
 * again, or fill the field back in after a failed try. It never goes in a
 * URL, and closing the tab forgets it.
 */
const storageKey = "voydex-auth-email";
const keptForMs = 30 * 60 * 1000;

type Stored = { email: string; savedAt: number };

export const rememberAuthEmail = (email: string) => {
  try {
    window.sessionStorage.setItem(
      storageKey,
      JSON.stringify({ email, savedAt: Date.now() } satisfies Stored),
    );
  } catch {
    /* Storage refused: the pages just don't name the email. */
  }
};

export const forgetAuthEmail = () => {
  try {
    window.sessionStorage.removeItem(storageKey);
  } catch {
    /* Nothing kept. */
  }
};

/* The remembered email, or null once it is half an hour old or doesn't look like one. */
export const readAuthEmail = (now = Date.now()): string | null => {
  let stored: Partial<Stored> | null = null;

  try {
    stored = JSON.parse(window.sessionStorage.getItem(storageKey) ?? "null");
  } catch {
    stored = null;
  }

  const email = typeof stored?.email === "string" ? stored.email.trim() : "";
  const savedAt = typeof stored?.savedAt === "number" ? stored.savedAt : 0;

  return email &&
    email.length <= 320 &&
    email.includes("@") &&
    now - savedAt < keptForMs
    ? email
    : null;
};

const noSubscription = () => () => undefined;

/*
 * The remembered email for a page: null while the page is drawn ahead of
 * time, then this tab's. It only changes when the page sends a form, which
 * moves to another address and reads it again.
 */
export const useRememberedAuthEmail = () =>
  useSyncExternalStore(
    noSubscription,
    () => readAuthEmail(),
    () => null,
  );
