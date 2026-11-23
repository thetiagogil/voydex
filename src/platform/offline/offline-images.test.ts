import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

import {
  countKeptImages,
  downloadImages,
  findMissingImages,
  readImageList,
  readImageProgress,
  type ImageList,
} from "@/platform/offline/offline-images";
import { imagesCacheName } from "@/platform/offline/offline-rules";

const site = "https://images.test";

/* A Cache Storage in memory, enough for the downloader. */
class MemoryCache {
  entries = new Map<string, { body: ArrayBuffer; type: string }>();

  async match(url: string) {
    const stored = this.entries.get(url);

    return stored
      ? new Response(stored.body, { headers: { "Content-Type": stored.type } })
      : undefined;
  }

  async put(url: string, response: Response) {
    this.entries.set(url, {
      body: await response.arrayBuffer(),
      type: response.headers.get("Content-Type") ?? "",
    });
  }
}

let stores: Map<string, MemoryCache>;
let server: Map<string, string>;
let online: boolean;
let asked: { cache?: RequestCache; mode?: RequestMode; url: string }[];

const list = (files: [string, string][]): ImageList => ({ bytes: 100, files });

beforeEach(() => {
  stores = new Map();
  server = new Map([
    ["/pokemon/home/md/pikachu.webp", "pikachu"],
    ["/pokemon/home/md/eevee.webp", "eevee"],
    ["/games/covers/red.webp", "red cover"],
  ]);
  online = true;
  asked = [];

  vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", site);
  vi.stubGlobal("caches", {
    open: async (name: string) => {
      const cache = stores.get(name) ?? new MemoryCache();

      stores.set(name, cache);

      return cache;
    },
  });
  vi.stubGlobal(
    "fetch",
    vi.fn(async (url: string, init?: RequestInit) => {
      asked.push({ cache: init?.cache, mode: init?.mode, url });

      if (!online) throw new TypeError("Failed to fetch");

      const body = server.get(new URL(url).pathname);

      return body === undefined
        ? new Response("missing", { status: 404 })
        : new Response(body, { status: 200 });
    }),
  );
});

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
});

const pictures = list([
  ["pokemon/home/md/pikachu.webp", "aaa"],
  ["pokemon/home/md/eevee.webp", "bbb"],
  ["games/covers/red.webp", "ccc"],
]);

const download = (imageList: ImageList, shouldStop = () => false) =>
  downloadImages(imageList, { onProgress: () => undefined, shouldStop });

describe("countKeptImages and findMissingImages", () => {
  it("count a picture kept with another hash as missing", () => {
    const kept = {
      "games/covers/red.webp": "old",
      "pokemon/home/md/pikachu.webp": "aaa",
    };

    expect(countKeptImages(pictures, kept)).toEqual({
      bytes: 100,
      done: 1,
      total: 3,
    });
    expect(findMissingImages(pictures, kept).map(([path]) => path)).toEqual([
      "pokemon/home/md/eevee.webp",
      "games/covers/red.webp",
    ]);
  });
});

describe("downloadImages", () => {
  it("keeps every listed picture, asked with CORS, and nothing the next time", async () => {
    await expect(download(pictures)).resolves.toBe("done");

    const cache = stores.get(imagesCacheName);

    await expect(
      cache?.match(`${site}/pokemon/home/md/eevee.webp`).then((r) => r?.text()),
    ).resolves.toBe("eevee");
    expect(asked.every((request) => request.mode === "cors")).toBe(true);
    await expect(readImageProgress(pictures)).resolves.toEqual({
      bytes: 100,
      done: 3,
      total: 3,
    });

    asked = [];

    await expect(download(pictures)).resolves.toBe("done");
    expect(asked).toEqual([]);
  });

  it("asks afresh for a picture that changed, past the browser's cache", async () => {
    await download(pictures);
    server.set("/games/covers/red.webp", "new red cover");
    asked = [];

    const changed = list([
      ["pokemon/home/md/pikachu.webp", "aaa"],
      ["pokemon/home/md/eevee.webp", "bbb"],
      ["games/covers/red.webp", "ddd"],
    ]);

    await expect(download(changed)).resolves.toBe("done");
    expect(asked).toEqual([
      { cache: "reload", mode: "cors", url: `${site}/games/covers/red.webp` },
    ]);
    await expect(
      stores
        .get(imagesCacheName)
        ?.match(`${site}/games/covers/red.webp`)
        .then((r) => r?.text()),
    ).resolves.toBe("new red cover");
  });

  it("stops when asked and keeps what it finished", async () => {
    let calls = 0;

    await expect(download(pictures, () => ++calls > 2)).resolves.toBe(
      "stopped",
    );
    await expect(readImageProgress(pictures)).resolves.toMatchObject({
      done: 2,
    });
  });

  it("says it failed when a picture can't be downloaded", async () => {
    server.delete("/pokemon/home/md/eevee.webp");

    await expect(download(pictures)).resolves.toBe("failed");
    await expect(readImageProgress(pictures)).resolves.toMatchObject({
      done: 2,
    });
  });
});

describe("readImageList", () => {
  it("keeps the list it read, for when the device is offline", async () => {
    server.set("/offline-images.json", JSON.stringify(pictures));

    await expect(readImageList({ online: true })).resolves.toEqual(pictures);

    online = false;

    await expect(readImageList({ online: true })).resolves.toEqual(pictures);
    await expect(readImageList({ online: false })).resolves.toEqual(pictures);
  });

  it("has no list before it ever read one", async () => {
    await expect(readImageList({ online: false })).resolves.toBeNull();
  });
});
