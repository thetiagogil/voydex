import {
  findGameData,
  installGame,
  installGameLearnsets,
  isGameDataOutdated,
  readInstalledGameData,
  type DownloadGameDataFile,
  type GameDataVersions,
} from "@/platform/local-db/game-data";
import { runQuery, type LocalDb } from "@/platform/local-db/local-db";
import { isStorageFullError } from "@/platform/local-db/prepare-device";

/*
 * The games this device should have before anyone waits for them, downloaded
 * one at a time in the background: the games of your Plays and Plans, and
 * the learnsets of every game already on the device. Each file goes in on
 * its own, so a run cut short keeps what it finished and the next run picks
 * up the rest. It never swaps the device's game data for a newer release;
 * that waits for the update when the app opens or a game is downloaded.
 */

export type BackgroundDownload = { file: "game" | "learnsets"; slug: string };

export type BackgroundDownloadResult = {
  done: BackgroundDownload[];
  /* Each download that failed; a failed game skips its learnsets. */
  failed: { download: BackgroundDownload; error: unknown }[];
  /*
   * "done" after the last one, "stopped" when `shouldStop` asked,
   * "storage-full" when the device has no room left, "waiting-for-update"
   * when the device is on another release than the list's.
   */
  status: "done" | "stopped" | "storage-full" | "waiting-for-update";
};

/*
 * The version groups the device should have, most wanted first: Plays you
 * have open, then Plans, then archived Plays; the most recently changed
 * first within each.
 */
const wantedVersionGroupsSql = `
SELECT version_group_id
FROM (
  SELECT version_group_id, CASE WHEN archived_at IS NULL THEN 1 ELSE 3 END AS rank, updated_at
  FROM gameplay.mainline_plays
  UNION ALL
  SELECT version_group_id, 2, updated_at
  FROM planning.mainline_team_plans
) wanted
ORDER BY rank, updated_at DESC`;

export const readWantedVersionGroups = async (db: LocalDb) =>
  (
    await runQuery<{ version_group_id: number }>(db, wantedVersionGroupsSql)
  ).map((row) => row.version_group_id);

/*
 * What to download, in order: the missing learnsets of games already on the
 * device (they are in use), then each wanted game the device doesn't have,
 * followed by its learnsets. A version group the list doesn't have is left
 * out; New Play says so when it is picked.
 */
export const planBackgroundDownloads = (
  versions: GameDataVersions,
  installed: Map<string, string>,
  wantedVersionGroupIds: number[],
): BackgroundDownload[] => {
  const downloads: BackgroundDownload[] = [];
  const planned = new Set<string>();

  for (const game of versions.games) {
    if (installed.has(game.data.name) && !installed.has(game.learnsets.name)) {
      downloads.push({ file: "learnsets", slug: game.slug });
    }
  }

  for (const versionGroupId of wantedVersionGroupIds) {
    const game = findGameData(versions, versionGroupId);

    if (!game || planned.has(game.slug) || installed.has(game.data.name)) {
      continue;
    }

    planned.add(game.slug);
    downloads.push(
      { file: "game", slug: game.slug },
      { file: "learnsets", slug: game.slug },
    );
  }

  return downloads;
};

/* What the device is missing now, by `versions`. */
export const readBackgroundDownloads = async (
  db: LocalDb,
  versions: GameDataVersions,
) =>
  planBackgroundDownloads(
    versions,
    await readInstalledGameData(db),
    await readWantedVersionGroups(db),
  );

/* One download's key, to remember it failed. */
export const backgroundDownloadKey = ({ file, slug }: BackgroundDownload) =>
  `${slug}:${file}`;

export type BackgroundDownloadOptions = {
  /* Runs before each download, to give way to one someone waits for. */
  beforeEach?: () => Promise<void>;
  download?: DownloadGameDataFile;
  /* Checked before each download; true ends the run (gone offline). */
  shouldStop?: () => boolean;
  /* Downloads to leave out (ones that failed earlier in this visit). */
  skip?: (download: BackgroundDownload) => boolean;
  versions: GameDataVersions;
};

export const runBackgroundDownloads = async (
  db: LocalDb,
  {
    beforeEach,
    download,
    shouldStop = () => false,
    skip = () => false,
    versions,
  }: BackgroundDownloadOptions,
): Promise<BackgroundDownloadResult> => {
  const result: BackgroundDownloadResult = {
    done: [],
    failed: [],
    status: "done",
  };
  if (isGameDataOutdated(await readInstalledGameData(db), versions)) {
    return { ...result, status: "waiting-for-update" };
  }

  const downloads = (await readBackgroundDownloads(db, versions)).filter(
    (item) => !skip(item),
  );
  const failedGames = new Set<string>();

  for (const item of downloads) {
    if (failedGames.has(item.slug)) continue;

    await beforeEach?.();

    if (shouldStop()) return { ...result, status: "stopped" };

    try {
      if (item.file === "game") {
        await installGame(
          db,
          item.slug,
          { download, versions },
          { update: false },
        );
      } else {
        await installGameLearnsets(db, item.slug, { download, versions });
      }

      result.done.push(item);
    } catch (error) {
      result.failed.push({ download: item, error });
      failedGames.add(item.slug);

      if (isStorageFullError(error)) {
        return { ...result, status: "storage-full" };
      }

      /* Another tab moved the device on; the rest waits for the update. */
      if (isGameDataOutdated(await readInstalledGameData(db), versions)) {
        return { ...result, status: "waiting-for-update" };
      }
    }
  }

  return result;
};
