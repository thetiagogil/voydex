"use client";

import { useSyncExternalStore } from "react";

import {
  findGameData,
  installGame,
  installGameLearnsets,
  readInstalledGameData,
  type GameDataProgress,
} from "@/platform/local-db/game-data";
import { LocalDbError, runQuery } from "@/platform/local-db/local-db";
import { openLocalDb } from "@/platform/local-db/open-local-db";

/*
 * A game's data on the device, downloaded the first time something needs
 * it: a Play's first start, the Team Planner opening on a game. Each game
 * file is named after its game's version group ("swsh") and holds its
 * expansions. While one downloads, `useGameDownload` says how far it is,
 * so whichever screen waits can show a bar.
 */

export type GameDownload = { name: string; progress: GameDataProgress };

let current: GameDownload | null = null;
const listeners = new Set<() => void>();

const setCurrent = (next: GameDownload | null) => {
  current = next;

  for (const listener of listeners) listener();
};

const subscribe = (listener: () => void) => {
  listeners.add(listener);

  return () => {
    listeners.delete(listener);
  };
};

/* The download running now, or null. */
export const useGameDownload = () =>
  useSyncExternalStore(
    subscribe,
    () => current,
    () => null,
  );

/*
 * Makes sure a version group's game is on the device, downloading it (and
 * the base file) when it isn't, then its learnsets in the background.
 * Offline, a game already on the device still opens.
 */
export const ensureVersionGroupData = async (versionGroupId: number) => {
  const { db, versions } = await openLocalDb();
  const [root] = await runQuery<{ id: number; name: string; slug: string }>(
    db,
    `SELECT COALESCE(parent.id, groups.id) AS id,
       COALESCE(parent.name, groups.name) AS name,
       COALESCE(parent.slug, groups.slug) AS slug
     FROM reference.version_groups groups
     LEFT JOIN reference.version_groups parent ON parent.id = groups.parent_version_group_id
     WHERE groups.id = $1`,
    [versionGroupId],
  );

  if (!root) throw new LocalDbError("That game isn't one Voydex knows.");

  if (!versions) {
    if ((await readInstalledGameData(db)).has(root.slug)) return;

    throw new LocalDbError(
      "You're offline. Connect once to download this game.",
    );
  }

  const file = findGameData(versions, root.id);

  if (!file) throw new LocalDbError("Voydex has no data for this game yet.");

  try {
    await installGame(db, file.slug, {
      onProgress: (progress) => setCurrent({ name: root.name, progress }),
      versions,
    });
    /* Only the move pickers need learnsets; a failure retries next time. */
    void installGameLearnsets(db, file.slug, { versions }).catch(
      () => undefined,
    );
  } finally {
    setCurrent(null);
  }
};

/* The same, for a game by its slug ("sword"). */
export const ensureGameData = async (gameSlug: string) => {
  const { db } = await openLocalDb();
  const [game] = await runQuery<{ version_group_id: number }>(
    db,
    "SELECT version_group_id FROM reference.games WHERE slug = $1",
    [gameSlug],
  );

  if (!game) throw new LocalDbError("That game isn't one Voydex knows.");

  await ensureVersionGroupData(game.version_group_id);
};
