/*
 * Copies kept beside the device database, in their own IndexedDB database
 * so deleting the device data never takes them along. Two, one of each:
 * the whole database from before the latest device update, for putting a
 * device back by hand if an update ever goes wrong after it finished; and
 * the device's own data, set aside while an account it wasn't added to is
 * logged in (`own-data-aside.ts`), as a backup file's bytes.
 */
const copyDbName = "voydex-copies";
const storeName = "copies";
const copyKey = "before-update";
const ownDataKey = "own-data";
const ownDataAddedKey = "own-data-added";

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
      const request = run(
        db.transaction(storeName, mode).objectStore(storeName),
      );
      request.onsuccess = () => resolve(request.result);
      request.onerror = () => reject(request.error);
    });
  } finally {
    db.close();
  }
};

export const saveDeviceCopy = async (copy: Blob) => {
  await inStore("readwrite", (store) => store.put(copy, copyKey));
};

/*
 * Where the device's own data waits while an account is logged in, and
 * whether a copy of it was added to that account.
 */
export type OwnDataStore = {
  forget: () => Promise<void>;
  markAdded: () => Promise<void>;
  read: () => Promise<Uint8Array | null>;
  readAdded: () => Promise<boolean>;
  save: (bytes: Uint8Array) => Promise<void>;
};

export const ownDataStore: OwnDataStore = {
  forget: async () => {
    await inStore("readwrite", (store) => store.delete(ownDataKey));
    await inStore("readwrite", (store) => store.delete(ownDataAddedKey));
  },
  markAdded: async () => {
    await inStore("readwrite", (store) => store.put(true, ownDataAddedKey));
  },
  readAdded: async () =>
    (await inStore<unknown>("readonly", (store) =>
      store.get(ownDataAddedKey),
    )) === true,
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
