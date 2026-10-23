/*
 * The once-per-visit reveals: motion that rewards arriving (the meadow's
 * partners popping in, the Statistics title rising) plays the first time a
 * piece is shown in a browser tab, then never again, not even on a reload.
 *
 * A reveal's root carries `data-first-visit="<name>"` while it may play, and
 * its parts animate under it (`group-data-first-visit/<group>:animate-…`).
 */
export const firstVisitNames = ["meadow", "stats-title"] as const;

export type FirstVisitName = (typeof firstVisitNames)[number];

/* sessionStorage keeps it for the tab, through reloads. */
export const getFirstVisitKey = (name: FirstVisitName) => `voydex:${name}-seen`;

/* Set on <html> before first paint: the reveals this tab has already seen. */
const seenAttribute = "data-first-visit-seen";

/*
 * Runs inline in <head>, before the page paints and long before it hydrates,
 * so a reload doesn't start a reveal the hydrated page would then cut off.
 * It is serialised into the HTML, so it uses nothing from outside itself.
 */
export const markSeenReveals = (
  entries: readonly (readonly [name: string, key: string])[],
  attribute: string,
) => {
  const seen = entries
    .filter(([, key]) => {
      try {
        return window.sessionStorage.getItem(key) === "1";
      } catch {
        /* Without storage it counts as a later visit, so nothing replays. */
        return true;
      }
    })
    .map(([name]) => name);

  if (seen.length) {
    document.documentElement.setAttribute(attribute, seen.join(" "));
  }
};

export const firstVisitScript = `(${markSeenReveals.toString()})(${JSON.stringify(
  firstVisitNames.map((name) => [name, getFirstVisitKey(name)]),
)}, ${JSON.stringify(seenAttribute)})`;

/* A reveal this tab has seen is drawn finished from the server's HTML on. */
export const firstVisitStyles = firstVisitNames
  .map(
    (name) =>
      `:root[${seenAttribute}~="${name}"] [data-first-visit="${name}"] *{animation:none}`,
  )
  .join("");
