/*
 * What the service worker (`service-worker.ts`) keeps for offline use, and
 * how it answers each request. Pure rules, so they can be tested without a
 * browser.
 *
 * A release is one build of the app. Its files are kept together in one
 * cache, filled in full before the release takes over, so an offline visit
 * always gets pages and scripts from the same build. Online, pages still come
 * from the network first, so a new deploy shows at once.
 */

/* What the build tells the worker about its release (`build-service-worker.mjs`). */
export type OfflineRelease = {
  /* A hash of every kept file: the same build gives the same release. */
  id: string;
  /* The addresses kept before the release takes over. */
  files: string[];
  /* The page shown for a page that isn't kept, offline. */
  offlinePage: string;
};

const cachePrefix = "voydex-";

/* The files a release keeps when it installs. */
export const releaseCacheName = (releaseId: string) =>
  `${cachePrefix}release-${releaseId}`;

/* Pages and Codex files kept as they are opened (the Codex has thousands). */
export const visitedCacheName = (releaseId: string) =>
  `${cachePrefix}visited-${releaseId}`;

/* Remembers which release is current and which came before it. */
export const metaCacheName = `${cachePrefix}meta`;
export const releasesKey = "/__voydex-offline/releases";

/* How many opened pages and Codex files a release keeps, newest kept. */
export const visitedLimit = 400;

export type Releases = { current: string | null; previous: string | null };

/*
 * The releases to keep once `next` takes over: itself and the one before it,
 * so a tab still open on the old release can load the scripts it asks for
 * later (the server only has the new release's files).
 */
export const nextReleases = (known: Releases, next: string): Releases => ({
  current: next,
  previous: known.current === next ? known.previous : known.current,
});

/* The caches no kept release uses: older releases and failed installs. */
export const cachesToDelete = (names: string[], keep: Releases) => {
  const kept = new Set(
    [keep.current, keep.previous]
      .filter((id): id is string => Boolean(id))
      .flatMap((id) => [releaseCacheName(id), visitedCacheName(id)]),
  );

  return names.filter(
    (name) =>
      name.startsWith(cachePrefix) && name !== metaCacheName && !kept.has(name),
  );
};

export type OfflineRequest = {
  method: string;
  mode: string;
  url: string;
};

/*
 * How the worker answers a request:
 * - `pass`: not touched; the browser asks the network as if no worker ran.
 * - `script`: a build file whose name changes with its content, so a kept
 *   copy is always right: kept copy first, network if there is none.
 * - `page`: a page; network first, the kept copy offline, then the offline
 *   page.
 * - `file`: any other file of the app (page data, icons, Codex files, the
 *   device schema in /local-db/); network first, the kept copy offline.
 *
 * The device schema is kept with its release on purpose: a release that
 * took over in the background and first opens offline still finds the
 * schema its code was built for, and updates the device before any screen
 * reads it (`prepare-device.ts`).
 */
export type RequestRule = "pass" | "script" | "page" | "file";

/*
 * Never kept:
 * - /game-data/: the device asks for the game data list each visit and
 *   keeps the release it has when the list doesn't answer
 *   (`prepare-device.ts`); the files themselves go into the device
 *   database, which is what makes an installed game work offline, so a
 *   second copy would only use room.
 * - the worker itself, which the browser checks for updates on its own.
 */
const gameDataPath = "/game-data/";

export const ruleFor = (
  request: OfflineRequest,
  origin: string,
): RequestRule => {
  if (request.method !== "GET") return "pass";

  const url = new URL(request.url);

  if (url.origin !== origin) return "pass";
  if (url.pathname === "/sw.js") return "pass";
  if (url.pathname.startsWith(gameDataPath)) return "pass";
  if (request.mode === "navigate") return "page";
  if (url.pathname.startsWith("/_next/static/")) return "script";

  return "file";
};

/*
 * The address a kept copy is filed under, without its query: a page reads
 * its query in the browser (a Play's id), and Next.js adds `?_rsc=<hash>`
 * to a page's data file (`/mainline.txt`) only to dodge shared caches.
 */
export const cacheKeyFor = (url: string) => {
  const { origin, pathname } = new URL(url);
  const path =
    pathname.length > 1 && pathname.endsWith("/")
      ? pathname.slice(0, -1)
      : pathname;

  return `${origin}${path}`;
};

/*
 * The release's file list as the build reads `out/`: every page that
 * isn't one Codex entry among thousands, with the data files Next.js reads
 * to move between pages (`mainline.txt`, `mainline/__next._tree.txt`), the
 * build's scripts, the device schema, the shared pre-built files (the game
 * catalogue Home and New Play read, the Codex's lists) and the app's own
 * small files. `path` is relative to `out/`, with forward slashes.
 */
export const keptAddressFor = (path: string): string | null => {
  if (`/${path}`.startsWith(gameDataPath)) return null;
  if (path === "sw.js") return null;
  if (isCodexEntry(path) || isCodexEntryFile(path)) return null;
  if (path.endsWith(".html")) return pageAddress(path.slice(0, -5));

  return `/${path}`;
};

/* `index` is the folder's own page; `mainline/plays` is `/mainline/plays`. */
const pageAddress = (path: string) => {
  if (path === "index") return "/";
  if (path.endsWith("/index")) return `/${path.slice(0, -6)}`;

  return `/${path}`;
};

/*
 * One page per Pokémon, base game and Pokédex, with its data files: kept as
 * they are opened. Their lists (`codex/pokemon`, `codex/games`) are kept
 * with the release, the list's own data files (`codex/pokemon/__next.*`)
 * included.
 */
const isCodexEntry = (path: string) =>
  /^codex\/(pokemon|games)\/(?!__next\.)/.test(path);

/* An entry's pre-built file (`codex-data/pokemon/pikachu.json.gz`). */
const isCodexEntryFile = (path: string) =>
  /^codex-data\/(pokemon|games)\//.test(path);
