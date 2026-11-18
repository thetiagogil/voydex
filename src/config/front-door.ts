import { appRoutes } from "@/config/routes";

/*
 * The front page is for people who are new here. A device that has opened
 * the app before goes straight back in: `/` opens the app. A link that names
 * a part of the front page (`/#how-it-works`) still shows it, so the app can
 * link to how Voydex works.
 */
const enteredStorageKey = "voydex-app-entered";

/* Marks this device as one that has opened the app. */
export const rememberAppEntered = () => {
  try {
    window.localStorage.setItem(enteredStorageKey, "1");
  } catch {
    /* Storage refused (a private window): the front page keeps showing. */
  }
};

export const readAppEntered = () => {
  try {
    return window.localStorage.getItem(enteredStorageKey) === "1";
  } catch {
    return false;
  }
};

/*
 * Whether the front page should send this device on to the app: it has
 * opened the app, and the address names no part of the front page.
 */
export const shouldSkipFrontPage = (
  enteredKey: string = enteredStorageKey,
): boolean => {
  if (window.location.hash) return false;

  try {
    return window.localStorage.getItem(enteredKey) === "1";
  } catch {
    return false;
  }
};

/*
 * Runs inline on the front page, before it paints, so a returning device
 * never sees it flash. It is serialised into the HTML, so it uses nothing
 * from outside itself.
 */
export const frontDoorScript = `(function(){if((${shouldSkipFrontPage.toString()})(${JSON.stringify(
  enteredStorageKey,
)}))window.location.replace(${JSON.stringify(appRoutes.mainline)})})()`;
