import { saveDeviceCopy } from "@/platform/local-db/device-copy";
import { parseDeviceUpdates } from "@/platform/local-db/device-updates";
import {
  fetchGameDataVersions,
  type GameDataVersions,
} from "@/platform/local-db/game-data";
import type { LocalDb } from "@/platform/local-db/local-db";
import { createLocalQueryClient } from "@/platform/local-db/local-query-client";
import {
  DeviceProblemError,
  prepareDevice,
  type PrepareStep,
} from "@/platform/local-db/prepare-device";
import {
  deleteLocalDb,
  startLocalDb,
  type LocalDbHandle,
} from "@/platform/local-db/start-local-db";
import { requestPersistentStorage } from "@/platform/local-db/storage";

/*
 * The device database for this visit: started once, in its worker, with
 * relaxed durability (saves answer at once; the iPhone test showed normal
 * saves take a second), and made ready by `prepareDevice`. Every screen
 * shares it.
 */

export type OpenedLocalDb = {
  db: LocalDb;
  /* The game data version list; null when opened offline. */
  versions: GameDataVersions | null;
};

const schemaUrl = "/local-db/schema.sql";
const schemaHashUrl = "/local-db/schema-hash.txt";
const updatesUrl = "/local-db/updates.json";

const fetchOk = async (url: string) => {
  const response = await fetch(url, { cache: "no-cache" });

  if (!response.ok) throw new Error(`${url} answered ${response.status}.`);

  return response;
};

/* A database the failed update left unreadable comes back from its copy. */
const restoreIfDamaged = async (handle: LocalDbHandle, copy: Blob) => {
  const readable = await handle.db
    .query("SELECT schema_hash FROM device.installs")
    .then(
      () => true,
      () => false,
    );

  if (readable) return handle;

  await handle.stop();
  await deleteLocalDb();

  return startLocalDb({ relaxedDurability: true, restoreFrom: copy });
};

let handle: LocalDbHandle | null = null;
let opening: Promise<OpenedLocalDb> | null = null;

const open = async (
  onStep: (step: PrepareStep) => void,
): Promise<OpenedLocalDb> => {
  void requestPersistentStorage().catch(() => false);
  handle = await startLocalDb({ relaxedDurability: true });

  const started = handle;
  let copy: Blob | null = null;

  try {
    const versions = await prepareDevice(
      started.db,
      {
        fetchSchemaHash: () =>
          fetchOk(schemaHashUrl).then(
            async (response) => (await response.text()).trim(),
            () => null,
          ),
        fetchUpdates: async () =>
          parseDeviceUpdates(await (await fetchOk(updatesUrl)).json()),
        fetchVersions: () => fetchGameDataVersions().catch(() => null),
        readSchemaSql: async () => (await fetchOk(schemaUrl)).text(),
        saveCopy: async () => {
          copy = await started.db.dumpDataDir("gzip");
          await saveDeviceCopy(copy);
        },
      },
      onStep,
    );

    return { db: started.db, versions };
  } catch (error) {
    const restored =
      error instanceof DeviceProblemError &&
      error.problem === "update-failed" &&
      copy
        ? await restoreIfDamaged(started, copy).catch(() => started)
        : started;

    await restored.stop();
    handle = null;
    throw error;
  }
};

/* Opens the device database once per visit; a failed open can be retried. */
export const openLocalDb = (
  onStep: (step: PrepareStep) => void = () => undefined,
) => {
  opening ??= open(onStep).catch((error: unknown) => {
    opening = null;
    throw error;
  });

  return opening;
};

/*
 * Deletes everything Voydex keeps on this device and opens a new, empty
 * database. Only for a device the app can't read any more; the caller
 * confirms with the user first.
 */
export const startFreshLocalDb = async (
  onStep?: (step: PrepareStep) => void,
) => {
  await opening?.catch(() => undefined);
  await handle?.stop();
  handle = null;
  opening = null;
  await deleteLocalDb();

  return openLocalDb(onStep);
};

let queryClient: {
  client: ReturnType<typeof createLocalQueryClient>;
  db: LocalDb;
} | null = null;

/*
 * The opened device database behind the query interface the readers and
 * commands take, for the device's own queries and actions. Screens run
 * under the device gate, so it is already open when they ask.
 */
export const getLocalQueryClient = async () => {
  const { db } = await openLocalDb();

  if (queryClient?.db !== db) {
    queryClient = { client: createLocalQueryClient(db), db };
  }

  return queryClient.client;
};
