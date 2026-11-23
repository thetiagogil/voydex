"use client";

import { useSyncExternalStore } from "react";
import { z } from "zod";

/*
 * How much of what Voydex keeps for offline is on this device: every game,
 * every game's learnsets and the pictures the images site lists. The
 * background downloads (`game-downloads.ts`) fill it in as they go; the
 * bar's status (`OfflineStatus`) shows it. Null parts aren't known yet.
 *
 * The device remembers the last counts it saw, so after a reload the bar
 * shows where things stood at once, before the device is read again.
 */

/*
 * One part: how many of its files are on the device, and how many bytes
 * that is of all of them (what the percent weighs).
 */
export type Count = {
  bytes: number;
  done: number;
  doneBytes: number;
  total: number;
};

export type OfflineProgress = {
  games: Count | null;
  learnsets: Count | null;
  images: Count | null;
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

const storageKey = "voydex-offline-progress";

const countSchema = z
  .object({
    bytes: z.number().nonnegative(),
    done: z.number().int().nonnegative(),
    doneBytes: z.number().nonnegative(),
    total: z.number().int().nonnegative(),
  })
  .nullable();

const storedSchema = z.object({
  games: countSchema,
  images: countSchema,
  learnsets: countSchema,
});

type Stored = z.infer<typeof storedSchema>;

/* The counts this device saw last, or none when there are none (or no room). */
export const readStoredProgress = (): Partial<OfflineProgress> => {
  try {
    const value = window.localStorage.getItem(storageKey);
    const stored = value ? storedSchema.safeParse(JSON.parse(value)) : null;

    return stored?.success ? stored.data : {};
  } catch {
    return {};
  }
};

const storeProgress = ({ games, images, learnsets }: OfflineProgress) => {
  try {
    const stored: Stored = { games, images, learnsets };

    window.localStorage.setItem(storageKey, JSON.stringify(stored));
  } catch {
    /* No storage (private mode, no room): the bar waits for the device. */
  }
};

let progress: OfflineProgress =
  typeof window === "undefined"
    ? initial
    : { ...initial, ...readStoredProgress() };
const listeners = new Set<() => void>();

export const readOfflineProgress = () => progress;

const partsChanged = (before: OfflineProgress, after: OfflineProgress) =>
  (["games", "learnsets", "images"] as const).some(
    (part) =>
      before[part]?.done !== after[part]?.done ||
      before[part]?.total !== after[part]?.total,
  );

export const setOfflineProgress = (change: Partial<OfflineProgress>) => {
  const before = progress;

  progress = { ...progress, ...change };

  if (partsChanged(before, progress)) storeProgress(progress);

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
}: Pick<OfflineProgress, "games" | "images" | "learnsets">) =>
  isDone(games) && isDone(learnsets) && isDone(images);

/*
 * How far along, 0 to 100, by the bytes on the device of all there is to
 * download, so every picture moves it a little and it climbs evenly. A
 * part not counted yet adds nothing it can weigh, so the figure stops at
 * 99 until everything is in.
 */
export const getOfflinePercent = (
  progress: Pick<OfflineProgress, "games" | "images" | "learnsets">,
) => {
  if (isEverythingKept(progress)) return 100;

  const parts = [progress.games, progress.learnsets, progress.images].filter(
    (part) => part !== null,
  );
  const bytes = parts.reduce((sum, part) => sum + part.bytes, 0);

  if (!bytes) return 0;

  const doneBytes = parts.reduce(
    (sum, part) => sum + Math.min(part.doneBytes, part.bytes),
    0,
  );

  return Math.min(99, Math.floor((doneBytes / bytes) * 100));
};

/* Where the offline data stands, for the bar and Settings to say. */
export type OfflineState =
  "checking" | "downloading" | "full" | "offline" | "ready";

export const readOfflineState = (
  online: boolean,
  progress: OfflineProgress,
): OfflineState => {
  if (!online) return "offline";
  if (progress.storageFull) return "full";
  if (progress.games === null) return "checking";

  return isEverythingKept(progress) ? "ready" : "downloading";
};
