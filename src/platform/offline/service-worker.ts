import {
  cacheKeyFor,
  cachesToDelete,
  isBuildFile,
  isPrefetch,
  metaCacheName,
  nextReleases,
  releaseCacheName,
  releasesKey,
  ruleFor,
  visitedCacheName,
  visitedLimit,
  type OfflineRelease,
  type OfflineRequest,
  type Releases,
  type RequestRule,
} from "@/platform/offline/offline-rules";

/*
 * The service worker: keeps the app working offline after the first visit
 * (#274). The build bundles this file into `out/sw.js` with the release's
 * file list (`scripts/offline/build-service-worker.mts`); the rules live in
 * `offline-rules.ts`.
 *
 * - Install: download every file of the release into its own cache. Only a
 *   complete copy takes over; a dropped connection leaves the old release
 *   in charge, and the next visit tries again.
 * - Activate: the new release takes over open tabs at once and deletes the
 *   caches of releases before the previous one.
 * - Fetch: pages and data from the network first; the kept copy offline.
 */

declare const __VOYDEX_RELEASE__: OfflineRelease;

/* The few service worker types used here (the app's types are the page's). */
type ExtendableEvent = Event & {
  waitUntil: (promise: Promise<unknown>) => void;
};
type FetchEvent = ExtendableEvent & {
  request: Request;
  respondWith: (response: Promise<Response>) => void;
};
type WorkerScope = {
  addEventListener: {
    (
      type: "install" | "activate",
      listener: (event: ExtendableEvent) => void,
    ): void;
    (type: "fetch", listener: (event: FetchEvent) => void): void;
  };
  clients: { claim: () => Promise<void> };
  location: Location;
  skipWaiting: () => Promise<void>;
};

const worker = self as unknown as WorkerScope;
const release = __VOYDEX_RELEASE__;
const origin = worker.location.origin;
const releaseFiles = new Set(release.files.map((file) => `${origin}${file}`));

/* At most this many downloads at once while a release installs. */
const installDownloads = 6;

/*
 * Whether a response came from the address it was asked for: a redirect
 * only between `/codex/` and `/codex` counts as the same file.
 */
const isSameAddress = (response: Response, key: string) =>
  !response.redirected || cacheKeyFor(response.url) === key;

/*
 * A copy that can answer any request: a redirected response (`/codex/` to
 * `/codex`) can't answer a page, so its body is kept without the redirect.
 */
const cleanCopy = (response: Response, body: BodyInit | null) =>
  new Response(body, {
    headers: response.headers,
    status: response.status,
    statusText: response.statusText,
  });

const hashOf = async (bytes: ArrayBuffer) =>
  Array.from(
    new Uint8Array(await crypto.subtle.digest("SHA-256", bytes)),
    (byte) => byte.toString(16).padStart(2, "0"),
  )
    .join("")
    .slice(0, release.hashLength);

const keepFile = async (cache: Cache, file: string) => {
  const key = `${origin}${file}`;

  if (await cache.match(key)) return;

  /*
   * A build file never changes under its name: reuse an older release's
   * copy, or the browser's own. Anything else is checked with the server,
   * so a release never keeps a page from the one before.
   */
  const buildFile = isBuildFile(file);

  if (buildFile) {
    const kept = await caches.match(key);

    if (kept) {
      await cache.put(key, kept);
      return;
    }
  }

  const response = await fetch(key, {
    cache: buildFile ? "default" : "no-cache",
  });

  if (!response.ok || !isSameAddress(response, key)) {
    throw new Error(
      `${file} answered ${response.status} from ${response.url}.`,
    );
  }

  if (buildFile) {
    await cache.put(key, response);
    return;
  }

  /*
   * A page or data file must be the one this release was built with: a
   * deploy that lands while a release installs would otherwise mix the new
   * build's pages with this one's scripts. The install fails instead, and
   * the browser installs the newer release next.
   */
  const body = await response.arrayBuffer();

  if ((await hashOf(body)) !== release.hashes[file]) {
    throw new Error(`${file} changed since this release was built.`);
  }

  await cache.put(key, cleanCopy(response, body));
};

/*
 * Every file is in the release's cache, opened again by name: an older
 * release that activates late deletes caches it doesn't know, a newer
 * release's half-filled one included.
 */
const checkComplete = async () => {
  const cache = await caches.open(releaseCacheName(release.id));
  const kept = await Promise.all(
    release.files.map((file) => cache.match(`${origin}${file}`)),
  );

  if (kept.some((response) => !response)) {
    throw new Error("The release's copy is incomplete; installing again.");
  }
};

const install = async () => {
  const cache = await caches.open(releaseCacheName(release.id));
  const queue = [...release.files];

  /* One failed file stops the install, once the downloads under way finish. */
  const downloads = await Promise.allSettled(
    Array.from({ length: installDownloads }, async () => {
      for (let file = queue.shift(); file; file = queue.shift()) {
        await keepFile(cache, file).catch((error: unknown) => {
          queue.length = 0;
          throw error;
        });
      }
    }),
  );
  const failed = downloads.find((download) => download.status === "rejected");

  if (failed) throw failed.reason;

  await checkComplete();
  await worker.skipWaiting();
};

const readReleases = async (meta: Cache): Promise<Releases> => {
  const saved = await meta.match(releasesKey);
  const value: unknown = await saved?.json().catch(() => null);

  if (value && typeof value === "object") {
    const { current, previous } = value as Record<string, unknown>;

    return {
      current: typeof current === "string" ? current : null,
      previous: typeof previous === "string" ? previous : null,
    };
  }

  return { current: null, previous: null };
};

const activate = async () => {
  const meta = await caches.open(metaCacheName);
  const keep = nextReleases(await readReleases(meta), release.id);

  await meta.put(releasesKey, Response.json(keep));
  await Promise.all(
    cachesToDelete(await caches.keys(), keep).map((name) =>
      caches.delete(name),
    ),
  );
  await worker.clients.claim();
};

/* Keeps an opened page or Codex file, dropping the oldest past the limit. */
const keepVisited = async (key: string, response: Response) => {
  const cache = await caches.open(visitedCacheName(release.id));

  await cache.delete(key);
  await cache.put(key, response);

  const keys = await cache.keys();
  const extra = keys.length - visitedLimit;

  if (extra > 0) {
    await Promise.all(keys.slice(0, extra).map((old) => cache.delete(old)));
  }
};

/*
 * A kept copy answers as if it came from the address asked for. A copy is
 * filed without its query, and a response carries the address it was filed
 * under: a page would lose `?id=`, and a script worker its `?params=`
 * (PGlite's worker reads its setup there). An answer with no address takes
 * the request's.
 */
const asAnswer = (kept: Response) =>
  new Response(kept.body, {
    headers: kept.headers,
    status: kept.status,
    statusText: kept.statusText,
  });

/* The release before this one, read once per worker start. */
let previousRelease: Promise<string | null> | null = null;

const readPrevious = () =>
  (previousRelease ??= caches
    .open(metaCacheName)
    .then(readReleases)
    .then(({ current, previous }) =>
      current === release.id ? previous : current,
    )
    .catch(() => null));

/*
 * The kept copy: this release's files, then what was opened, then what was
 * opened before this release took over (a Codex page still opens offline
 * after a deploy; its scripts are kept with the release before).
 */
const matchKept = async (key: string) => {
  const previous = await readPrevious();
  const names = [
    releaseCacheName(release.id),
    visitedCacheName(release.id),
    ...(previous ? [visitedCacheName(previous)] : []),
  ];

  for (const name of names) {
    const kept = await (await caches.open(name)).match(key);

    if (kept) return asAnswer(kept);
  }

  return undefined;
};

const fromNetwork = async (
  request: Request,
  key: string,
  info: OfflineRequest,
) => {
  const response = await fetch(request);

  /*
   * A file the release installed stays as installed, so offline pages and
   * scripts always come from one build; anything else is kept as opened.
   * A prefetch isn't an opened page: the Codex list prefetches every entry
   * in view, which would push out the ones you opened.
   */
  if (
    response.ok &&
    !info.isPrefetch &&
    !releaseFiles.has(key) &&
    isSameAddress(response, key)
  ) {
    const copy = response.clone();

    void copy
      .blob()
      .then((body) => keepVisited(key, cleanCopy(copy, body)))
      .catch(() => undefined);
  }

  return response;
};

const answerScript = async (request: Request, key: string) => {
  const kept = await caches.match(key);

  if (kept) return asAnswer(kept);

  const response = await fetch(request);

  if (response.ok) {
    const copy = response.clone();

    void caches
      .open(releaseCacheName(release.id))
      .then((cache) => cache.put(key, copy))
      .catch(() => undefined);
  }

  return response;
};

const answerFromNetworkFirst = async (
  request: Request,
  key: string,
  info: OfflineRequest,
  rule: RequestRule,
) => {
  try {
    return await fromNetwork(request, key, info);
  } catch (error) {
    const kept =
      (await matchKept(key)) ??
      (rule === "page"
        ? await matchKept(`${origin}${release.offlinePage}`)
        : undefined);

    if (kept) return kept;

    throw error;
  }
};

const answer = (request: Request, rule: RequestRule, info: OfflineRequest) => {
  const key = cacheKeyFor(info.url);

  return rule === "script"
    ? answerScript(request, key)
    : answerFromNetworkFirst(request, key, info, rule);
};

worker.addEventListener("install", (event) => {
  event.waitUntil(install());
});

worker.addEventListener("activate", (event) => {
  event.waitUntil(activate());
});

worker.addEventListener("fetch", (event) => {
  const { request } = event;
  const info: OfflineRequest = {
    isPrefetch: isPrefetch(request.headers),
    method: request.method,
    mode: request.mode,
    url: request.url,
  };
  const rule = ruleFor(info, origin);

  if (rule === "pass") return;

  event.respondWith(answer(request, rule, info));
});
