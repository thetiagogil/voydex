import {
  ensureDeviceSchema,
  readInstalledSchemaHash,
} from "@/platform/local-db/device-schema";
import {
  runDeviceUpdates,
  type DeviceUpdate,
} from "@/platform/local-db/device-updates";
import {
  installGameBase,
  isGameDataOutdated,
  readInstalledGameData,
  updateGameData,
  type DownloadGameDataFile,
  type GameDataProgress,
  type GameDataVersions,
} from "@/platform/local-db/game-data";
import { LocalDbError, type LocalDb } from "@/platform/local-db/local-db";

/*
 * Gets a started device database ready for the screens: the app's schema
 * (installed on a new device, carried over by device updates on an older
 * one) and the base game data file. Kept apart from the browser's worker
 * and storage so it can be tested on its own.
 */

export type PrepareStep =
  | { step: "checking" }
  | { step: "updating" }
  | { progress: GameDataProgress; step: "base" }
  | { progress: GameDataProgress; step: "game-data" };

/* Why the device database can't be used as it is; each has its own screen. */
export type DeviceProblem =
  /* Offline on a device that has never been set up. */
  | "offline"
  /* The schema changed with no device update (before launch only). */
  | "needs-fresh-start"
  /* A device update failed; the data was left, or put back, as it was. */
  | "update-failed"
  /* The browser has no room left for the data. */
  | "storage-full";

export class DeviceProblemError extends LocalDbError {
  readonly problem: DeviceProblem;

  constructor(problem: DeviceProblem, message: string, cause?: unknown) {
    super(message, { cause });
    this.name = "DeviceProblemError";
    this.problem = problem;
  }
}

export type PrepareDeviceSources = {
  download?: DownloadGameDataFile;
  /* The app's schema hash; null when it can't be fetched (offline). */
  fetchSchemaHash: () => Promise<string | null>;
  fetchUpdates: () => Promise<DeviceUpdate[]>;
  /* The game data version list; null when it can't be fetched (offline). */
  fetchVersions: () => Promise<GameDataVersions | null>;
  readSchemaSql: () => Promise<string>;
  /* Keeps a copy of the whole database before a device update. */
  saveCopy: () => Promise<void>;
};

/* Quota errors differ by browser; this catches the ones they share. */
export const isStorageFullError = (error: unknown) => {
  const text = [
    error instanceof Error ? error.name : "",
    error instanceof Error ? error.message : String(error),
    error instanceof Error && error.cause instanceof Error
      ? `${error.cause.name} ${error.cause.message}`
      : "",
  ].join(" ");

  return /QuotaExceeded|quota|No space left|ENOSPC/i.test(text);
};

/*
 * The app's schema on this device: installed on a new device, carried over
 * by device updates on an older one. Offline, a device that was set up keeps
 * working with what it has.
 */
const prepareSchema = async (
  db: LocalDb,
  sources: PrepareDeviceSources,
  onStep: (step: PrepareStep) => void,
) => {
  const [appHash, installedHash] = await Promise.all([
    sources.fetchSchemaHash(),
    readInstalledSchemaHash(db),
  ]);

  if (appHash === null) {
    if (installedHash) return;

    throw new DeviceProblemError(
      "offline",
      "Voydex needs the internet once to set up on this device.",
    );
  }

  if (installedHash && installedHash !== appHash) onStep({ step: "updating" });

  const schema = await ensureDeviceSchema(db, {
    hash: appHash,
    readSql: sources.readSchemaSql,
  });

  if (schema.status !== "outdated") return;

  const result = await runDeviceUpdates(db, {
    saveCopy: sources.saveCopy,
    schemaHash: appHash,
    updates: await sources.fetchUpdates(),
  }).catch((error: unknown) => {
    throw new DeviceProblemError(
      "update-failed",
      "Voydex couldn't update the data on this device. Nothing was lost.",
      error,
    );
  });

  if (result.status === "no-update") {
    throw new DeviceProblemError(
      "needs-fresh-start",
      "This version of Voydex can't read the data on this device.",
    );
  }
};

/*
 * Returns the game data version list (null offline), for New Play to
 * download games with.
 */
export const prepareDevice = async (
  db: LocalDb,
  sources: PrepareDeviceSources,
  onStep: (step: PrepareStep) => void = () => undefined,
): Promise<GameDataVersions | null> => {
  onStep({ step: "checking" });

  try {
    await prepareSchema(db, sources, onStep);

    const versions = await sources.fetchVersions();
    const installed = await readInstalledGameData(db);

    if (!versions) {
      if (installed.has("base")) return null;

      throw new DeviceProblemError(
        "offline",
        "Voydex needs the internet once to set up on this device.",
      );
    }

    if (!installed.has("base")) {
      await installGameBase(db, {
        download: sources.download,
        onProgress: (progress) => onStep({ progress, step: "base" }),
        versions,
      });
    } else if (isGameDataOutdated(installed, versions)) {
      /*
       * A new release of the game data: the device takes it before the
       * screens open. If it can't (a dropped connection), the screens keep
       * the release the device has, and the next game download tries again.
       */
      await updateGameData(db, {
        download: sources.download,
        onProgress: (progress) => onStep({ progress, step: "game-data" }),
        versions,
      }).catch((error: unknown) => {
        if (isStorageFullError(error)) throw error;
      });
    }

    return versions;
  } catch (error) {
    if (error instanceof DeviceProblemError) throw error;

    if (isStorageFullError(error)) {
      throw new DeviceProblemError(
        "storage-full",
        "This device is out of room for Voydex's data.",
        error,
      );
    }

    throw error;
  }
};
