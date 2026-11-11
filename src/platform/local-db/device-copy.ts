/*
 * The copy of the whole device database kept before a device update, in its
 * own IndexedDB database so deleting the device data never takes it along.
 * One copy is kept: the one from before the latest update, for putting a
 * device back by hand if an update ever goes wrong after it finished.
 */
const copyDbName = "voydex-copies";
const storeName = "copies";
const copyKey = "before-update";

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
