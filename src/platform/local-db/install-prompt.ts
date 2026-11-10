"use client";

import { useSyncExternalStore } from "react";

/*
 * The browser's own "Install Voydex" prompt (Chrome, Edge, Android), kept
 * from the moment the browser offers it until Voydex shows it. Safari has
 * none: there you install with Share, then Add to Home Screen.
 */
type InstallPromptEvent = Event & {
  prompt: () => Promise<void>;
  userChoice: Promise<{ outcome: "accepted" | "dismissed" }>;
};

let offered: InstallPromptEvent | null = null;
const listeners = new Set<() => void>();
let listening = false;

const setOffered = (next: InstallPromptEvent | null) => {
  offered = next;

  for (const listener of listeners) listener();
};

/*
 * Starts listening for the browser's offer; the app frame calls it on
 * arrival, since the browser offers once, often before Settings opens.
 */
export const listenForInstallPrompt = () => {
  if (listening || typeof window === "undefined") return;

  listening = true;
  window.addEventListener("beforeinstallprompt", (event) => {
    event.preventDefault();
    setOffered(event as InstallPromptEvent);
  });
  window.addEventListener("appinstalled", () => setOffered(null));
};

const subscribe = (listener: () => void) => {
  listenForInstallPrompt();
  listeners.add(listener);

  return () => {
    listeners.delete(listener);
  };
};

/* Shows the browser's install prompt; resolves to whether you installed. */
const install = async () => {
  const event = offered;

  if (!event) return false;

  setOffered(null);
  await event.prompt();

  return (await event.userChoice).outcome === "accepted";
};

/* `install` while the browser offers to install Voydex; null otherwise. */
export const useInstallPrompt = () =>
  useSyncExternalStore(
    subscribe,
    () => (offered ? install : null),
    () => null,
  );
