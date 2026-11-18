import { appRoutes } from "@/config/routes";

/*
 * The front page is for people who are new here. A device that has opened
 * the app goes straight back in: `/` opens the app. Leave the app (the
 * account menu, You) brings the front page back until you continue from it,
 * and a link that names a part of the front page (`/#how-it-works`) always
 * shows it. Your Plays stay on the device either way.
 */
const storageKey = "voydex-app-entered";
/* In the app: `/` skips the front page. */
const inApp = "1";
/* Left the app: the front page shows, and offers Continue. */
const leftApp = "left";

const write = (value: string) => {
  try {
    window.localStorage.setItem(storageKey, value);
  } catch {
    /* Storage refused (a private window): the front page keeps showing. */
  }
};

/* Marks this device as in the app; opening any app page does it. */
export const rememberAppEntered = () => write(inApp);

/* Leaves the app: the front page shows again until you continue from it. */
export const leaveApp = () => write(leftApp);

/*
 * Whether this device is in the app. Entering it (the first time, or after
 * leaving) is a moment of its own: the start screen takes its time then.
 */
export const readInApp = () => {
  try {
    return window.localStorage.getItem(storageKey) === inApp;
  } catch {
    return false;
  }
};

/* Whether this device has ever opened the app, in it now or not. */
export const readAppEntered = () => {
  try {
    return window.localStorage.getItem(storageKey) !== null;
  } catch {
    return false;
  }
};

/*
 * Whether the front page should send this device on to the app: it is in
 * the app, and the address names no part of the front page.
 */
export const shouldSkipFrontPage = (
  key: string = storageKey,
  value: string = inApp,
): boolean => {
  if (window.location.hash) return false;

  try {
    return window.localStorage.getItem(key) === value;
  } catch {
    return false;
  }
};

/*
 * Runs inline in the root layout's <head>, on a full load of any page, and
 * acts only on the front page (`/`): before it paints, so a returning device
 * never sees it flash. It is serialised into the HTML, so it uses nothing
 * from outside itself. Reaching the front page from inside the site is
 * `FrontDoorRedirect`'s job.
 */
export const frontDoorScript = `(function(){if(window.location.pathname===${JSON.stringify(
  appRoutes.home,
)}&&(${shouldSkipFrontPage.toString()})(${JSON.stringify(storageKey)},${JSON.stringify(
  inApp,
)}))window.location.replace(${JSON.stringify(appRoutes.mainline)})})()`;
