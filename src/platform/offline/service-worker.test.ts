import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

import {
  metaCacheName,
  releaseCacheName,
  releasesKey,
  visitedCacheName,
  visitedLimit,
  type OfflineRelease,
} from "@/platform/offline/offline-rules";

/*
 * Runs the real service worker against an in-memory Cache Storage and a
 * fake network, the way a browser would: install, activate, then requests
 * online and offline.
 */

const origin = "https://voydex.test";

type Stored = {
  body: ArrayBuffer;
  headers: [string, string][];
  status: number;
};

const keyOf = (input: RequestInfo | URL) =>
  typeof input === "string"
    ? input
    : input instanceof URL
      ? input.href
      : input.url;

class MemoryCache {
  entries = new Map<string, Stored>();

  async match(input: RequestInfo | URL) {
    const key = keyOf(input);
    const stored = this.entries.get(key);

    if (!stored) return undefined;

    /* Like a browser's, a kept response carries the address it was filed under. */
    return Object.defineProperty(
      new Response(stored.body, {
        headers: stored.headers,
        status: stored.status,
      }),
      "url",
      { value: key },
    );
  }

  async put(input: RequestInfo | URL, response: Response) {
    this.entries.set(keyOf(input), {
      body: await response.arrayBuffer(),
      headers: [...response.headers],
      status: response.status,
    });
  }

  async delete(input: RequestInfo | URL) {
    return this.entries.delete(keyOf(input));
  }

  async keys() {
    return [...this.entries.keys()].map((url) => new Request(url));
  }
}

class MemoryCaches {
  stores = new Map<string, MemoryCache>();

  async open(name: string) {
    let cache = this.stores.get(name);

    if (!cache) {
      cache = new MemoryCache();
      this.stores.set(name, cache);
    }

    return cache;
  }

  async keys() {
    return [...this.stores.keys()];
  }

  async delete(name: string) {
    return this.stores.delete(name);
  }

  async match(input: RequestInfo | URL) {
    for (const cache of this.stores.values()) {
      const found = await cache.match(input);

      if (found) return found;
    }

    return undefined;
  }

  /* What a cache holds, as text, for checks. */
  async text(name: string, path: string) {
    const found = await this.stores.get(name)?.match(`${origin}${path}`);

    return found ? found.text() : undefined;
  }
}

type Listener = (event: unknown) => void;

let caches: MemoryCaches;
let listeners: Record<string, Listener>;
let network: Map<string, string>;
let online: boolean;
let fetchCalls: string[];
let worker: {
  clients: { claim: ReturnType<typeof vi.fn> };
  skipWaiting: ReturnType<typeof vi.fn>;
};

const fakeFetch = vi.fn(async (input: RequestInfo | URL) => {
  const url = new URL(keyOf(input), origin);

  fetchCalls.push(url.pathname + url.search);

  if (!online) throw new TypeError("Failed to fetch");

  const body = network.get(url.pathname);

  return body === undefined
    ? new Response("not found", { status: 404 })
    : new Response(body, { status: 200 });
});

/* Starts a worker for a release, as the browser would after a deploy. */
const loadWorker = async (release: OfflineRelease) => {
  listeners = {};
  vi.stubGlobal("__VOYDEX_RELEASE__", release);
  vi.resetModules();
  await import("@/platform/offline/service-worker");
};

const runLifecycle = async (type: "install" | "activate") => {
  let done: Promise<unknown> = Promise.resolve();

  listeners[type]?.({
    waitUntil: (promise: Promise<unknown>) => (done = promise),
  });

  return done;
};

const install = async (release: OfflineRelease) => {
  await loadWorker(release);
  await runLifecycle("install");
  await runLifecycle("activate");
};

/* Sends a request through the worker; null when it leaves it alone. */
const request = async (path: string, init: { mode?: RequestMode } = {}) => {
  /* A page request's mode can't be set on a Request made outside a browser. */
  const fake = {
    method: "GET",
    mode: init.mode ?? "cors",
    url: `${origin}${path}`,
  } as Request;
  let answer: Promise<Response> | null = null;

  listeners.fetch?.({
    request: fake,
    respondWith: (response: Promise<Response>) => (answer = response),
  });

  return answer as Promise<Response> | null;
};

const release = (
  id: string,
  files: string[] = ["/", "/mainline", "/offline", "/_next/static/a.js"],
): OfflineRelease => ({ files, id, offlinePage: "/offline" });

const flush = () => new Promise((resolve) => setTimeout(resolve, 0));

beforeEach(() => {
  caches = new MemoryCaches();
  network = new Map([
    ["/", "front door v1"],
    ["/mainline", "home v1"],
    ["/offline", "offline page v1"],
    ["/_next/static/a.js", "script a"],
    ["/_next/static/b.js", "script b"],
    ["/codex/pokemon/pikachu", "pikachu page"],
    ["/codex-data/pokemon/pikachu.json.gz", "pikachu data"],
    ["/game-data/versions.json", "versions"],
  ]);
  online = true;
  fetchCalls = [];
  worker = {
    clients: { claim: vi.fn(async () => undefined) },
    skipWaiting: vi.fn(async () => undefined),
  };

  vi.stubGlobal("caches", caches);
  vi.stubGlobal("fetch", fakeFetch);
  vi.stubGlobal("self", {
    ...worker,
    addEventListener: (type: string, listener: Listener) => {
      listeners[type] = listener;
    },
    location: { origin },
  });
});

afterEach(() => {
  vi.unstubAllGlobals();
  fakeFetch.mockClear();
});

describe("install", () => {
  it("keeps every file of the release, then takes over at once", async () => {
    await loadWorker(release("r1"));
    await runLifecycle("install");

    expect(await caches.text(releaseCacheName("r1"), "/mainline")).toBe(
      "home v1",
    );
    expect(
      await caches.text(releaseCacheName("r1"), "/_next/static/a.js"),
    ).toBe("script a");
    expect(worker.skipWaiting).toHaveBeenCalledOnce();
  });

  it("never takes over with a partial copy", async () => {
    network.delete("/mainline");
    await loadWorker(release("r1"));

    await expect(runLifecycle("install")).rejects.toThrow("/mainline");
    expect(worker.skipWaiting).not.toHaveBeenCalled();
  });

  it("reuses a build file an older release kept instead of downloading it", async () => {
    await install(release("r1"));
    fetchCalls = [];

    await loadWorker(release("r2"));
    await runLifecycle("install");

    expect(fetchCalls).not.toContain("/_next/static/a.js");
    expect(fetchCalls).toContain("/mainline");
    expect(
      await caches.text(releaseCacheName("r2"), "/_next/static/a.js"),
    ).toBe("script a");
  });

  it("picks up where a dropped install stopped", async () => {
    network.delete("/offline");
    await loadWorker(release("r1"));
    await expect(runLifecycle("install")).rejects.toThrow();

    network.set("/offline", "offline page v1");
    fetchCalls = [];
    await runLifecycle("install");

    expect(fetchCalls).toEqual(["/offline"]);
  });
});

describe("activate", () => {
  it("keeps the release before, deletes older ones and takes open tabs", async () => {
    await install(release("r1"));
    await install(release("r2"));
    await install(release("r3"));

    expect([...caches.stores.keys()].sort()).toEqual(
      [metaCacheName, releaseCacheName("r2"), releaseCacheName("r3")].sort(),
    );
    expect(
      await (await caches.open(metaCacheName))
        .match(releasesKey)
        .then((r) => r?.json()),
    ).toEqual({ current: "r3", previous: "r2" });
    expect(worker.clients.claim).toHaveBeenCalled();
  });

  it("deletes a release that never finished installing", async () => {
    await install(release("r1"));
    network.delete("/offline");
    await loadWorker(release("broken"));
    await expect(runLifecycle("install")).rejects.toThrow();

    network.set("/offline", "offline page v3");
    await install(release("r3"));

    expect(caches.stores.has(releaseCacheName("broken"))).toBe(false);
    expect(caches.stores.has(releaseCacheName("r1"))).toBe(true);
  });
});

describe("pages", () => {
  it("come from the network while online, so a deploy shows at once", async () => {
    await install(release("r1"));
    network.set("/mainline", "home v2");

    const answer = await request("/mainline", { mode: "navigate" });

    expect(await answer?.text()).toBe("home v2");
  });

  it("never overwrite the release's copy with a newer build's page", async () => {
    await install(release("r1"));
    network.set("/mainline", "home v2");

    await (await request("/mainline", { mode: "navigate" }))?.text();
    await flush();

    expect(await caches.text(releaseCacheName("r1"), "/mainline")).toBe(
      "home v1",
    );
  });

  it("come from the release's copy offline, whatever the query", async () => {
    await install(release("r1"));
    online = false;

    const answer = await request("/mainline?new=1", { mode: "navigate" });

    expect(await answer?.text()).toBe("home v1");
  });

  it("answer offline as the address asked for, query included", async () => {
    await install(release("r1"));
    online = false;

    const answer = await request("/mainline?id=abc", { mode: "navigate" });

    /* An answer with no address of its own takes the request's. */
    expect(answer?.url).toBe("");
  });

  it("show the offline page for a page never opened", async () => {
    await install(release("r1"));
    online = false;

    const answer = await request("/codex/pokemon/pikachu", {
      mode: "navigate",
    });

    expect(await answer?.text()).toBe("offline page v1");
  });

  it("keep a Codex entry once opened, for offline", async () => {
    await install(release("r1"));

    await (
      await request("/codex/pokemon/pikachu", { mode: "navigate" })
    )?.text();
    await flush();
    online = false;

    const answer = await request("/codex/pokemon/pikachu", {
      mode: "navigate",
    });

    expect(await answer?.text()).toBe("pikachu page");
  });

  it("keep at most the limit of opened pages, dropping the oldest", async () => {
    await install(release("r1"));

    for (let index = 0; index <= visitedLimit; index += 1) {
      network.set(`/codex/pokemon/p${index}`, `page ${index}`);
      await (
        await request(`/codex/pokemon/p${index}`, { mode: "navigate" })
      )?.text();
      await flush();
    }

    const visited = caches.stores.get(visitedCacheName("r1"));

    expect(visited?.entries.size).toBe(visitedLimit);
    expect(visited?.entries.has(`${origin}/codex/pokemon/p0`)).toBe(false);
    expect(
      visited?.entries.has(`${origin}/codex/pokemon/p${visitedLimit}`),
    ).toBe(true);
  });
});

describe("files", () => {
  it("answers a build file from the kept copy, with no download", async () => {
    await install(release("r1"));
    fetchCalls = [];

    const answer = await request("/_next/static/a.js");

    expect(await answer?.text()).toBe("script a");
    expect(fetchCalls).toEqual([]);
  });

  it("answers a script worker as its own address, so it keeps its setup", async () => {
    await install(release("r1"));

    const answer = await request("/_next/static/a.js?params=%7B%7D");

    expect(answer?.url).toBe("");
    expect(await answer?.text()).toBe("script a");
  });

  it("serves a tab on the previous release the scripts the new one dropped", async () => {
    await install(release("r1", ["/", "/offline", "/_next/static/a.js"]));
    network.delete("/_next/static/a.js");
    await install(release("r2", ["/", "/offline", "/_next/static/b.js"]));
    online = false;

    const answer = await request("/_next/static/a.js");

    expect(await answer?.text()).toBe("script a");
  });

  it("keeps an opened Codex file for offline", async () => {
    await install(release("r1"));

    await (await request("/codex-data/pokemon/pikachu.json.gz"))?.text();
    await flush();
    online = false;

    const answer = await request("/codex-data/pokemon/pikachu.json.gz");

    expect(await answer?.text()).toBe("pikachu data");
  });

  it("fails offline for a file it never kept, like the network would", async () => {
    await install(release("r1"));
    online = false;

    await expect(request("/codex-data/pokemon/mew.json.gz")).rejects.toThrow();
  });

  it("leaves the game data list and the worker to the network", async () => {
    await install(release("r1"));

    expect(await request("/game-data/versions.json")).toBeNull();
    expect(await request("/sw.js")).toBeNull();
  });

  it("gives a release opened offline the device schema it was built for", async () => {
    const files = ["/", "/offline", "/local-db/schema-hash.txt"];

    network.set("/local-db/schema-hash.txt", "schema 1");
    await install(release("r1", files));
    network.set("/local-db/schema-hash.txt", "schema 2");
    await install(release("r2", files));
    online = false;

    const answer = await request("/local-db/schema-hash.txt");

    expect(await answer?.text()).toBe("schema 2");
  });
});
