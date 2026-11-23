"use client";

import { useSyncExternalStore } from "react";

import type { ImageProgress } from "@/platform/offline/offline-images";

/*
 * How much of what Voydex keeps for offline is on this device: every game,
 * every game's learnsets and the pictures the images site lists. The
 * background downloads (`game-downloads.ts`) fill it in as they go; the
 * bar's status (`OfflineStatus`) shows it. Null parts aren't known yet.
 */

export type Count = { done: number; total: number };

export type OfflineProgress = {
  games: Count | null;
  learnsets: Count | null;
  images: ImageProgress | null;
  /* A background run is downloading something now. */
  running: boolean;
  /* Something is left, but the connection is mobile data or data saver. */
  waitingForWifi: boolean;
  /* The browser ran out of room; nothing more downloads this visit. */
  storageFull: boolean;
};

const initial: OfflineProgress = {
  games: null,
  images: null,
  learnsets: null,
  running: false,
  storageFull: false,
  waitingForWifi: false,
};

let progress = initial;
const listeners = new Set<() => void>();

export const readOfflineProgress = () => progress;

export const setOfflineProgress = (change: Partial<OfflineProgress>) => {
  progress = { ...progress, ...change };

  for (const listener of listeners) listener();
};

const subscribe = (listener: () => void) => {
  listeners.add(listener);

  return () => {
    listeners.delete(listener);
  };
};

export const useOfflineProgress = () =>
  useSyncExternalStore(
    subscribe,
    () => progress,
    () => initial,
  );

const isDone = (count: Count | null) =>
  count !== null && count.done >= count.total;

/*
 * Everything Voydex keeps for offline is on the device. Pictures not
 * counted yet aren't done; an images site with no list counts 0 of 0.
 */
export const isEverythingKept = ({
  games,
  images,
  learnsets,
}: OfflineProgress) => isDone(games) && isDone(learnsets) && isDone(images);

/*
 * How far along, 0 to 100: each part counts the same, so the pictures'
 * thousands of files don't hide the games'.
 */
export const getOfflinePercent = ({
  games,
  images,
  learnsets,
}: OfflineProgress) => {
  const parts = [games, learnsets, images].filter(
    (part): part is Count => part !== null && part.total > 0,
  );

  if (!parts.length) return 0;

  return Math.floor(
    (parts.reduce((sum, part) => sum + part.done / part.total, 0) /
      parts.length) *
      100,
  );
};
