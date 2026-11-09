import { PGliteWorker } from "@electric-sql/pglite/worker";

/* The IndexedDB database PGlite keeps the device data in ("/pglite/voydex"). */
const dataDir = "idb://voydex";
const indexedDbName = "/pglite/voydex";

export type LocalDbHandle = {
  db: PGliteWorker;
  /* Closes the database and ends its worker, letting go of IndexedDB. */
  stop: () => Promise<void>;
};

export type StartLocalDbOptions = {
  /*
   * Relaxed durability answers a save before the data reaches IndexedDB, so
   * saves feel instant; a crash in that moment can lose the last save.
   */
  relaxedDurability?: boolean;
};

/* Starts the device database in its worker; resolves once it can be queried. */
export const startLocalDb = async ({
  relaxedDurability = false,
}: StartLocalDbOptions = {}): Promise<LocalDbHandle> => {
  const worker = new Worker(new URL("./local-db-worker.ts", import.meta.url), {
    type: "module",
  });

  try {
    const db = await PGliteWorker.create(worker, {
      dataDir,
      relaxedDurability,
    });

    return {
      db,
      stop: async () => {
        await db.close().catch(() => undefined);
        worker.terminate();
      },
    };
  } catch (error) {
    worker.terminate();
    throw error;
  }
};

/*
 * Deletes every Voydex row on this device. The database must be closed
 * first; the caller confirms with the user.
 */
export const deleteLocalDb = () =>
  new Promise<void>((resolve, reject) => {
    const request = indexedDB.deleteDatabase(indexedDbName);
    request.onsuccess = () => resolve();
    request.onerror = () => reject(request.error);
    request.onblocked = () =>
      reject(new Error("Close Voydex in your other tabs first."));
  });
