import { appRoutes } from "@/config/routes";

/*
 * The front page is for people who are new here. A device that has opened
 * the app goes straight back in: `/` opens the app. Leave the app (the
 * account menu, You, and the V in the app's bar) brings the front page back
 * until you continue from it,
 * and a link that names a part of the front page (`/#how-it-works`) always
 * shows it. Your Plays stay on the device either way.
 */
const storageKey = "voydex-app-entered";
/* In the app: `/` skips the front page. */
const inApp = "1";
/* Left the app: the front page shows, and offers Continue. */
const leftApp = "left";

/*
 * Two more things the front page says to a device it knows, noted by the
 * app because the front page opens neither the device's data nor the
 * account: whether there is a Play here (its button reads Continue, not
 * Start a Play) and whether this browser is logged in (its bar offers the
 * app, not Log in).
 */
const hasPlaysKey = "voydex-has-plays";
const signedInKey = "voydex-signed-in";

const write = (value: string) => {
  try {
    window.localStorage.setItem(storageKey, value);
  } catch {
    /* Storage refused (a private window): the front page keeps showing. */
  }
};

const writeNote = (key: string, on: boolean) => {
  try {
    if (on) window.localStorage.setItem(key, "1");
    else window.localStorage.removeItem(key);
  } catch {
    /* Storage refused: the front page speaks as to a new device. */
  }
};

const readNote = (key: string) => {
  try {
    return window.localStorage.getItem(key) !== null;
  } catch {
    return false;
  }
};

/* Notes whether this device holds a Play; the app does, after every save. */
export const rememberHasPlays = (hasPlays: boolean) =>
  writeNote(hasPlaysKey, hasPlays);

/* Whether this device held a Play when the app last looked. */
export const readHasPlays = () => readNote(hasPlaysKey);

/* Notes whether this browser is logged in: on Log in, Log out and in the app. */
export const rememberSignedIn = (signedIn: boolean) =>
  writeNote(signedInKey, signedIn);

/* Whether this browser was logged in when the app last looked. */
export const readSignedIn = () => readNote(signedInKey);

/* Marks this device as in the app; opening any app page does it. */
export const rememberAppEntered = () => write(inApp);

/* Whether this device has ever opened the app, in it now or not. */
export const readAppEntered = () => {
  try {
    return window.localStorage.getItem(storageKey) !== null;
  } catch {
    return false;
  }
};

/*
 * Leaves the app: the front page shows again until you continue from it. A
 * device that has only browsed the Codex has nothing to leave, so its front
 * page still says Start a Play.
 */
export const leaveApp = () => {
  if (readAppEntered()) write(leftApp);
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
