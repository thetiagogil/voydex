"use client";

import { useSyncExternalStore } from "react";

/*
 * Whether the browser has a connection. A few things need the internet
 * (logging in, backups, a game or a Codex page the device doesn't have
 * yet): offline they switch off and say why (`NeedsInternet`), and come
 * back by themselves with the connection. The browser only knows when it
 * has no network at all; a network that doesn't reach the internet still
 * counts as online, and the action says so when it fails. On the build,
 * and before the page runs, it counts as online.
 */

type ConnectionEvents = Pick<
  Window,
  "addEventListener" | "removeEventListener"
>;

/* Calls `listener` each time the connection goes or comes back. */
export const subscribeConnection = (
  target: ConnectionEvents,
  listener: () => void,
) => {
  target.addEventListener("online", listener);
  target.addEventListener("offline", listener);

  return () => {
    target.removeEventListener("online", listener);
    target.removeEventListener("offline", listener);
  };
};

const subscribe = (listener: () => void) =>
  subscribeConnection(window, listener);

export const useOnline = () =>
  useSyncExternalStore(
    subscribe,
    () => navigator.onLine,
    () => true,
  );
