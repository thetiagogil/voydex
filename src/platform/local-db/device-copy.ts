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
const ownDataSyncedWithKey = "own-data-synced-with";
const ownDataSyncMarksKey = "own-data-sync-marks";

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

/*
 * Where the device's own data waits while an account is logged in: the
 * copy, the account a copy of it was added to (if it was), and, kept after
 * the copy is put back, the account the device's own data is already in.
 */
export type OwnDataStore = {
  /* Lets the copy go, once it is back in place. */
  forget: () => Promise<void>;
  /*
   * Which of the copy's changes the account already had, kept beside it: a
   * backup file leaves them out, as they mean nothing on another device, but
   * this copy never leaves this one.
   */
  readSyncMarks: () => Promise<string | null>;
  saveSyncMarks: (marks: string) => Promise<void>;
  markAdded: (accountId: string) => Promise<void>;
  read: () => Promise<Uint8Array | null>;
  /* The account a copy of it was added to; null when it was kept separate. */
  readAddedTo: () => Promise<string | null>;
  /* The account the device's own data was last added to, if any. */
  readSyncedWith: () => Promise<string | null>;
  rememberSyncedWith: (accountId: string) => Promise<void>;
  save: (bytes: Uint8Array) => Promise<void>;
};

const readString = async (key: string) => {
  const value = await inStore<unknown>("readonly", (store) => store.get(key));

  return typeof value === "string" ? value : null;
};

export const ownDataStore: OwnDataStore = {
  forget: async () => {
    await inStore("readwrite", (store) => store.delete(ownDataKey));
    await inStore("readwrite", (store) => store.delete(ownDataAddedKey));
    await inStore("readwrite", (store) => store.delete(ownDataSyncMarksKey));
  },
  readSyncMarks: () => readString(ownDataSyncMarksKey),
  saveSyncMarks: async (marks) => {
    await inStore("readwrite", (store) =>
      store.put(marks, ownDataSyncMarksKey),
    );
  },
  markAdded: async (accountId) => {
    await inStore("readwrite", (store) =>
      store.put(accountId, ownDataAddedKey),
    );
  },
  read: async () => {
    const kept = await inStore<unknown>("readonly", (store) =>
      store.get(ownDataKey),
    );

    return kept instanceof Uint8Array ? kept : null;
  },
  readAddedTo: () => readString(ownDataAddedKey),
  readSyncedWith: () => readString(ownDataSyncedWithKey),
  rememberSyncedWith: async (accountId) => {
    await inStore("readwrite", (store) =>
      store.put(accountId, ownDataSyncedWithKey),
    );
  },
  save: async (bytes) => {
    await inStore("readwrite", (store) => store.put(bytes, ownDataKey));
  },
};
