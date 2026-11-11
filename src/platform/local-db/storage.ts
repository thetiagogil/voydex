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

/*
 * Apps that open links in their own browser (Instagram, Facebook, TikTok,
 * LinkedIn, Snapchat, Line, WeChat) keep a site's data only for a while, if
 * at all; Voydex asks you to open it in your real browser there.
 */
const inAppBrowserPattern =
  /\b(FBAN|FBAV|FB_IAB|Instagram|BytedanceWebview|musical_ly|TikTok|LinkedInApp|Snapchat|Line\/|MicroMessenger|Twitter)\b/i;

export const isInAppBrowser = (userAgent: string) =>
  inAppBrowserPattern.test(userAgent);

/* An iPhone or iPad, where installing is Share, then Add to Home Screen. */
export const isAppleMobile = (userAgent: string, maxTouchPoints: number) =>
  /iPhone|iPad|iPod/.test(userAgent) ||
  (/Macintosh/.test(userAgent) && maxTouchPoints > 1);
