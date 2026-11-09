/*
 * Browser storage for the device database. Safari clears a site's storage
 * after 7 days without a visit unless the site is installed to the Home
 * Screen or the browser grants persistent storage.
 */

export type LocalStorageStatus = {
  /* Opened from the Home Screen (or as an installed app). */
  installed: boolean;
  /* Whether the browser promised to keep the data; null where it can't say. */
  persisted: boolean | null;
  quotaBytes: number | null;
  usageBytes: number | null;
};

const isInstalled = () =>
  window.matchMedia("(display-mode: standalone)").matches ||
  ("standalone" in navigator && navigator.standalone === true);

export const readLocalStorageStatus = async (): Promise<LocalStorageStatus> => {
  const storage = navigator.storage;
  const [persisted, estimate] = await Promise.all([
    storage?.persisted ? storage.persisted() : Promise.resolve(null),
    storage?.estimate ? storage.estimate() : Promise.resolve(null),
  ]);

  return {
    installed: isInstalled(),
    persisted,
    quotaBytes: estimate?.quota ?? null,
    usageBytes: estimate?.usage ?? null,
  };
};

/* Asks the browser to keep the data; resolves to whether it agreed. */
export const requestPersistentStorage = async () =>
  navigator.storage?.persist ? navigator.storage.persist() : false;
