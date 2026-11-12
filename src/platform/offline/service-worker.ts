import {
  cacheKeyFor,
  cachesToDelete,
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
 * file list (`scripts/offline/build-service-worker.mjs`); the rules live in
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
 * A copy that can answer any request: a redirected response (`/codex/` to
 * `/codex`) can't answer a page, so its body is kept without the redirect.
 */
const cleanCopy = async (response: Response) =>
  response.redirected
    ? new Response(await response.blob(), {
        headers: response.headers,
        status: response.status,
        statusText: response.statusText,
      })
    : response;

const keepFile = async (cache: Cache, file: string) => {
  const key = `${origin}${file}`;

  if (await cache.match(key)) return;

  /*
   * A build file never changes under its name: reuse an older release's
   * copy, or the browser's own. Anything else is checked with the server,
   * so a release never keeps a page from the one before.
   */
  const isBuildFile = file.startsWith("/_next/static/");

  if (isBuildFile) {
    const kept = await caches.match(key);

    if (kept) {
      await cache.put(key, kept);
      return;
    }
  }

  const response = await fetch(key, {
    cache: isBuildFile ? "default" : "no-cache",
  });

  if (!response.ok) {
    throw new Error(`${file} answered ${response.status}.`);
  }

  await cache.put(key, await cleanCopy(response));
};

const install = async () => {
  const cache = await caches.open(releaseCacheName(release.id));
  const queue = [...release.files];

  await Promise.all(
    Array.from({ length: installDownloads }, async () => {
      for (let file = queue.shift(); file; file = queue.shift()) {
        await keepFile(cache, file);
      }
    }),
  );
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

/* This release's kept copy: the files it installed, then what was opened. */
const matchKept = async (key: string) => {
  const kept =
    (await (await caches.open(releaseCacheName(release.id))).match(key)) ??
    (await (await caches.open(visitedCacheName(release.id))).match(key));

  return kept ? asAnswer(kept) : undefined;
};

const fromNetwork = async (request: Request, key: string) => {
  const response = await fetch(request);

  /*
   * A file the release installed stays as installed, so offline pages and
   * scripts always come from one build; anything else is kept as opened.
   */
  if (response.ok && !releaseFiles.has(key)) {
    const copy = await cleanCopy(response.clone());

    void keepVisited(key, copy).catch(() => undefined);
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
  rule: RequestRule,
) => {
  try {
    return await fromNetwork(request, key);
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
    : answerFromNetworkFirst(request, key, rule);
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
    method: request.method,
    mode: request.mode,
    url: request.url,
  };
  const rule = ruleFor(info, origin);

  if (rule === "pass") return;

  event.respondWith(answer(request, rule, info));
});
