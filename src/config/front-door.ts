import { ACTIVE_MODULE_STORAGE_KEY, modules } from "@/config/modules";

/*
 * The front page is for people who are new here. A device that has opened
 * the app before goes straight back in: `/` opens the module it was last in.
 * A link that names a part of the front page (`/#how-it-works`) still shows
 * it, so the app can link to how Voydex works.
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

/* Each module's first page, by its key, as the script below reads them. */
const moduleHrefs: Record<string, string> = Object.fromEntries(
  Object.entries(modules).map(([key, value]) => [key, value.defaultHref]),
);

/*
 * Where the front page sends a device that has opened the app: the module it
 * was last in, or Mainline. Null when the front page should show.
 */
export const readFrontDoorHref = (
  enteredKey: string = enteredStorageKey,
  moduleKey: string = ACTIVE_MODULE_STORAGE_KEY,
  hrefs: Record<string, string> = moduleHrefs,
  fallback: string = modules.mainline.defaultHref,
): string | null => {
  if (window.location.hash) return null;

  try {
    if (window.localStorage.getItem(enteredKey) !== "1") return null;

    return hrefs[window.localStorage.getItem(moduleKey) ?? ""] ?? fallback;
  } catch {
    return null;
  }
};

/*
 * Runs inline on the front page, before it paints, so a returning device
 * never sees it flash. It is serialised into the HTML, so it uses nothing
 * from outside itself.
 */
export const frontDoorScript = `(function(){var href=(${readFrontDoorHref.toString()})(${[
  enteredStorageKey,
  ACTIVE_MODULE_STORAGE_KEY,
  moduleHrefs,
  modules.mainline.defaultHref,
]
  .map((value) => JSON.stringify(value))
  .join(",")});if(href)window.location.replace(href)})()`;
