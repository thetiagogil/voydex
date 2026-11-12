import { describe, expect, it } from "vitest";

import {
  cacheKeyFor,
  cachesToDelete,
  isPrefetch,
  keptAddressFor,
  metaCacheName,
  nextReleases,
  releaseCacheName,
  ruleFor,
  visitedCacheName,
  type OfflineRequest,
} from "@/platform/offline/offline-rules";

const origin = "https://voydex.test";

const request = (
  path: string,
  overrides: Partial<OfflineRequest> = {},
): OfflineRequest => ({
  isPrefetch: false,
  method: "GET",
  mode: "cors",
  url: path.startsWith("http") ? path : `${origin}${path}`,
  ...overrides,
});

describe("ruleFor", () => {
  it("answers pages network first", () => {
    expect(ruleFor(request("/mainline", { mode: "navigate" }), origin)).toBe(
      "page",
    );
    expect(
      ruleFor(
        request("/mainline/plays/play?id=abc", { mode: "navigate" }),
        origin,
      ),
    ).toBe("page");
  });

  it("answers build files from the kept copy first", () => {
    expect(ruleFor(request("/_next/static/chunks/app.js"), origin)).toBe(
      "script",
    );
    expect(
      ruleFor(request("/_next/static/media/pglite.abc.wasm"), origin),
    ).toBe("script");
  });

  it("answers page data, icons and Codex files network first", () => {
    expect(ruleFor(request("/mainline.txt?_rsc=1x"), origin)).toBe("file");
    expect(
      ruleFor(request("/codex-data/pokemon/pikachu.json.gz"), origin),
    ).toBe("file");
    expect(ruleFor(request("/manifest.webmanifest"), origin)).toBe("file");
  });

  it("answers the device schema network first, so a release keeps its own", () => {
    expect(ruleFor(request("/local-db/schema-hash.txt"), origin)).toBe("file");
    expect(ruleFor(request("/local-db/updates.json"), origin)).toBe("file");
  });

  it("leaves game data to its own update rules", () => {
    expect(ruleFor(request("/game-data/versions.json"), origin)).toBe("pass");
    expect(
      ruleFor(request("/game-data/base.0123456789abcdef.json.gz"), origin),
    ).toBe("pass");
  });

  it("leaves the worker, other sites and anything but reads alone", () => {
    expect(ruleFor(request("/sw.js"), origin)).toBe("pass");
    expect(
      ruleFor(request("https://assets.test/pokemon/pikachu.webp"), origin),
    ).toBe("pass");
    expect(
      ruleFor(request("https://project.supabase.co/auth/v1/token"), origin),
    ).toBe("pass");
    expect(
      ruleFor(
        request("/mainline", { method: "POST", mode: "navigate" }),
        origin,
      ),
    ).toBe("pass");
  });
});

describe("isPrefetch", () => {
  it("knows Next.js's and the browser's prefetches from a page opened", () => {
    expect(isPrefetch(new Headers({ "Next-Router-Prefetch": "1" }))).toBe(true);
    expect(
      isPrefetch(new Headers({ "Next-Router-Segment-Prefetch": "/_tree" })),
    ).toBe(true);
    expect(isPrefetch(new Headers({ "Sec-Purpose": "prefetch" }))).toBe(true);
    expect(isPrefetch(new Headers({ RSC: "1" }))).toBe(false);
    expect(isPrefetch(new Headers())).toBe(false);
  });
});

describe("cacheKeyFor", () => {
  it("files a page under its path, whatever its query", () => {
    expect(cacheKeyFor(`${origin}/mainline/plays/play?id=abc`)).toBe(
      `${origin}/mainline/plays/play`,
    );
    expect(cacheKeyFor(`${origin}/codex/`)).toBe(`${origin}/codex`);
    expect(cacheKeyFor(`${origin}/`)).toBe(`${origin}/`);
  });

  it("files a page's data file without Next.js's cache buster", () => {
    expect(cacheKeyFor(`${origin}/mainline/plays.txt?_rsc=1x2y`)).toBe(
      `${origin}/mainline/plays.txt`,
    );
  });
});

describe("keptAddressFor", () => {
  it("leaves out Cloudflare's settings file, which it never serves", () => {
    expect(keptAddressFor("_headers")).toBeNull();
  });

  it("keeps every app page under the address that serves it", () => {
    expect(keptAddressFor("index.html")).toBe("/");
    expect(keptAddressFor("mainline.html")).toBe("/mainline");
    expect(keptAddressFor("mainline/plays/play.html")).toBe(
      "/mainline/plays/play",
    );
    expect(keptAddressFor("offline.html")).toBe("/offline");
    expect(keptAddressFor("codex/pokemon.html")).toBe("/codex/pokemon");
    expect(keptAddressFor("codex/games.html")).toBe("/codex/games");
  });

  it("keeps the data files Next.js reads to move between kept pages", () => {
    expect(keptAddressFor("index.txt")).toBe("/index.txt");
    expect(keptAddressFor("mainline/plays.txt")).toBe("/mainline/plays.txt");
    expect(keptAddressFor("mainline/__next._tree.txt")).toBe(
      "/mainline/__next._tree.txt",
    );
    expect(keptAddressFor("codex/pokemon.txt")).toBe("/codex/pokemon.txt");
    expect(keptAddressFor("codex/pokemon/__next._tree.txt")).toBe(
      "/codex/pokemon/__next._tree.txt",
    );
  });

  it("keeps the shared pre-built files Home, New Play and the Codex lists read", () => {
    expect(keptAddressFor("codex-data/game-catalogue.json.gz")).toBe(
      "/codex-data/game-catalogue.json.gz",
    );
    expect(keptAddressFor("codex-data/pokemon.json.gz")).toBe(
      "/codex-data/pokemon.json.gz",
    );
    expect(keptAddressFor("codex-data/pokemon-menu/swsh.json.gz")).toBe(
      "/codex-data/pokemon-menu/swsh.json.gz",
    );
  });

  it("keeps the build's files and the app's own small files", () => {
    expect(keptAddressFor("_next/static/chunks/app.js")).toBe(
      "/_next/static/chunks/app.js",
    );
    expect(keptAddressFor("_next/static/media/pglite.abc.wasm")).toBe(
      "/_next/static/media/pglite.abc.wasm",
    );
    expect(keptAddressFor("manifest.webmanifest")).toBe(
      "/manifest.webmanifest",
    );
    expect(keptAddressFor("icon.png")).toBe("/icon.png");
  });

  it("leaves out each Codex entry, kept only once opened", () => {
    expect(keptAddressFor("codex/pokemon/pikachu.html")).toBeNull();
    expect(keptAddressFor("codex/games/swsh.html")).toBeNull();
    expect(keptAddressFor("codex/games/swsh/galar.html")).toBeNull();
    expect(keptAddressFor("codex/pokemon/pikachu.txt")).toBeNull();
    expect(keptAddressFor("codex/pokemon/pikachu/__next._tree.txt")).toBeNull();
    expect(keptAddressFor("codex-data/pokemon/pikachu.json.gz")).toBeNull();
    expect(keptAddressFor("codex-data/games/swsh.json.gz")).toBeNull();
    expect(keptAddressFor("codex-data/games/swsh/galar.json.gz")).toBeNull();
  });

  it("keeps the device schema the release's code was built for", () => {
    expect(keptAddressFor("local-db/schema.sql")).toBe("/local-db/schema.sql");
    expect(keptAddressFor("local-db/schema-hash.txt")).toBe(
      "/local-db/schema-hash.txt",
    );
    expect(keptAddressFor("local-db/updates.json")).toBe(
      "/local-db/updates.json",
    );
  });

  it("leaves out game data files and the worker", () => {
    expect(keptAddressFor("game-data/versions.json")).toBeNull();
    expect(
      keptAddressFor("game-data/base.0123456789abcdef.json.gz"),
    ).toBeNull();
    expect(keptAddressFor("sw.js")).toBeNull();
  });
});

describe("releases", () => {
  it("keeps the release before a new one, for tabs still open on it", () => {
    expect(nextReleases({ current: null, previous: null }, "b")).toEqual({
      current: "b",
      previous: null,
    });
    expect(nextReleases({ current: "a", previous: null }, "b")).toEqual({
      current: "b",
      previous: "a",
    });
    expect(nextReleases({ current: "b", previous: "a" }, "c")).toEqual({
      current: "c",
      previous: "b",
    });
  });

  it("keeps the previous release when the same one takes over again", () => {
    expect(nextReleases({ current: "b", previous: "a" }, "b")).toEqual({
      current: "b",
      previous: "a",
    });
  });

  it("deletes older releases and failed installs, never other sites' caches", () => {
    const names = [
      releaseCacheName("a"),
      visitedCacheName("a"),
      releaseCacheName("b"),
      visitedCacheName("b"),
      releaseCacheName("c"),
      releaseCacheName("failed"),
      metaCacheName,
      "someone-else",
    ];

    expect(cachesToDelete(names, { current: "c", previous: "b" })).toEqual([
      releaseCacheName("a"),
      visitedCacheName("a"),
      releaseCacheName("failed"),
    ]);
  });
});
