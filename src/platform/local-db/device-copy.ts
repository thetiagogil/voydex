/*
 * Copies kept beside the device database, in their own IndexedDB database
 * so deleting the device data never takes them along. Two, one of each:
 * the whole database from before the latest device update, for putting a
 * device back by hand if an update ever goes wrong after it finished; and
 * the device's own data, set aside while an account is logged in
 * (`own-data-aside.ts`), as a backup file's bytes.
 */
const copyDbName = "voydex-copies";
const storeName = "copies";
const copyKey = "before-update";
const ownDataKey = "own-data";
/*
 * Kept beside the copy by the account sync that merged (#248), which is
 * gone: they are only ever deleted now.
 */
const retiredKeys = [
  "own-data-added",
  "own-data-synced-with",
  "own-data-sync-marks",
];

const openCopies = () =>
  new Promise<IDBDatabase>((resolve, reject) => {
    const request = indexedDB.open(copyDbName, 1);
    request.onupgradeneeded = () => request.result.createObjectStore(storeName);
    request.onsuccess = () => resolve(request.result);
    request.onerror = () => reject(request.error);
  });

const inStore = async <Result>(
  mode: IDBTransactionMode,
  run: (store: IDBObjectStore) => IDBRequest<Result>,
) => {
  const db = await openCopies();

  try {
    return await new Promise<Result>((resolve, reject) => {
      const transaction = db.transaction(storeName, mode);
      const request = run(transaction.objectStore(storeName));

      /*
       * A change counts once its transaction has committed, not when the
       * request answers: a page closed in between would lose it.
       */
      transaction.oncomplete = () => resolve(request.result);
      transaction.onerror = () => reject(transaction.error ?? request.error);
      transaction.onabort = () => reject(transaction.error ?? request.error);
    });
  } finally {
    db.close();
  }
};

export const saveDeviceCopy = async (copy: Blob) => {
  await inStore("readwrite", (store) => store.put(copy, copyKey));
};

/* Where the device's own data waits while an account is logged in. */
export type OwnDataStore = {
  /* Lets the copy go, once it is back in place. */
  forget: () => Promise<void>;
  read: () => Promise<Uint8Array | null>;
  save: (bytes: Uint8Array) => Promise<void>;
};

export const ownDataStore: OwnDataStore = {
  forget: async () => {
    for (const key of [ownDataKey, ...retiredKeys]) {
      await inStore("readwrite", (store) => store.delete(key));
    }
  },
  read: async () => {
    const kept = await inStore<unknown>("readonly", (store) =>
      store.get(ownDataKey),
    );

    return kept instanceof Uint8Array ? kept : null;
  },
  save: async (bytes) => {
    await inStore("readwrite", (store) => store.put(bytes, ownDataKey));
  },
};
