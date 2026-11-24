import { z } from "zod";

import type { Count } from "@/platform/offline/offline-progress";
import { imagesCacheName } from "@/platform/offline/offline-rules";
import { getAssetUrl } from "@/shared/utils/asset-url";

/*
 * The pictures Voydex keeps so it shows every Pokémon offline: the images
 * site lists them in `offline-images.json` (normal HOME sprites, game
 * covers, items, trainers and badges, about 41 MB), each with a short hash
 * of its content. The background downloads the ones the device doesn't
 * have, or has an older copy of, into the same cache the service worker
 * answers pictures from (`imagesCacheName`). Shiny sprites and official
 * art aren't listed: the worker keeps them once they are shown.
 */

const listSchema = z.object({
  bytes: z.number().int().nonnegative(),
  files: z.array(z.tuple([z.string().min(1), z.string().min(1)])),
});

export type ImageList = z.infer<typeof listSchema>;

/* The list's own address, and where the device keeps its last copy. */
const listPath = "offline-images.json";
/* Which hash of each picture the device has: `{ "pokemon/…webp": "a1b2…" }`. */
const keptPath = "__voydex/kept-images.json";

export type ImageProgress = Count;

/*
 * How far the device is with a list. The list gives only the size of all
 * its pictures, so the bytes on the device are that share of it.
 */
export const countKeptImages = (
  list: ImageList,
  kept: Record<string, string>,
): ImageProgress => {
  const done = list.files.filter(([path, hash]) => kept[path] === hash).length;
  const total = list.files.length;

  return {
    bytes: list.bytes,
    done,
    doneBytes: total ? Math.round((list.bytes * done) / total) : 0,
    total,
  };
};

/* The pictures still to download: missing, or kept with another hash. */
export const findMissingImages = (
  list: ImageList,
  kept: Record<string, string>,
) => list.files.filter(([path, hash]) => kept[path] !== hash);

const openImages = () =>
  typeof caches === "undefined" ? null : caches.open(imagesCacheName);

const readJson = async (cache: Cache, url: string) => {
  const response = await cache.match(url);

  return response ? ((await response.json()) as unknown) : null;
};

const readKept = async (cache: Cache) => {
  const value = await readJson(cache, getAssetUrl(keptPath) ?? "").catch(
    () => null,
  );

  return value && typeof value === "object"
    ? (value as Record<string, string>)
    : {};
};

const saveKept = (cache: Cache, kept: Record<string, string>) =>
  cache.put(getAssetUrl(keptPath) ?? "", Response.json(kept));

/*
 * The list from the images site, kept for offline; offline (or from a site
 * without one), the last kept copy. Null when there is neither.
 */
export const readImageList = async ({
  online,
}: {
  online: boolean;
}): Promise<ImageList | null> => {
  const url = getAssetUrl(listPath);
  const cache = await openImages();

  if (!url || !cache) return null;

  if (online) {
    try {
      const response = await fetch(url, {
        cache: "no-cache",
        credentials: "omit",
        mode: "cors",
      });

      if (response.ok) {
        const list = listSchema.parse(await response.json());

        await cache.put(url, Response.json(list));

        return list;
      }
    } catch {
      /* Not reachable, or not a list: the kept copy, if any. */
    }
  }

  const saved = listSchema.safeParse(await readJson(cache, url));

  return saved.success ? saved.data : null;
};

/* How far the device is with the list, or null with no list. */
export const readImageProgress = async (list: ImageList | null) => {
  const cache = await openImages();

  return list && cache ? countKeptImages(list, await readKept(cache)) : null;
};

export type ImageDownloadResult =
  /* Every picture on the list is on the device. */
  | "done"
  /* `shouldStop` asked, or the connection went. */
  | "stopped"
  /* The browser has no room left. */
  | "storage-full"
  /* Pictures kept failing (a site that doesn't allow keeping them). */
  | "failed";

/* At most this many pictures download at once. */
const downloadsAtOnce = 4;
/* Saves which pictures it has every so often, so a cut-short run keeps them. */
const saveEvery = 25;
/* This many failures in a row ends the run until the next one. */
const failuresToGiveUp = 10;
const pictureTimeoutMs = 30_000;

const isStorageFull = (error: unknown) =>
  error instanceof DOMException && error.name === "QuotaExceededError";

/*
 * Downloads the pictures on `list` the device doesn't have, a few at a
 * time. A picture asked with CORS is kept whole (a sealed copy would count
 * as megabytes); an older copy is asked for afresh. Each one done moves
 * `onProgress`.
 */
export const downloadImages = async (
  list: ImageList,
  {
    onProgress,
    shouldStop,
  }: {
    onProgress: (progress: ImageProgress) => void;
    shouldStop: () => boolean;
  },
): Promise<ImageDownloadResult> => {
  const cache = await openImages();

  if (!cache) return "failed";

  const kept = await readKept(cache);
  const queue = findMissingImages(list, kept);
  let result: ImageDownloadResult = "done";
  let unsaved = 0;
  let failuresInARow = 0;

  const keep = async ([path, hash]: [string, string]) => {
    const url = getAssetUrl(path);

    if (!url) return;

    const response = await fetch(url, {
      /*
       * Always past the browser's own cache: a picture a page showed
       * before the images site allowed CORS sits there without the header
       * a CORS request needs, so the request fails on that copy. An older
       * copy is asked for afresh this way too.
       */
      cache: "reload",
      credentials: "omit",
      mode: "cors",
      signal: AbortSignal.timeout(pictureTimeoutMs),
    });

    if (!response.ok) throw new Error(`${path} answered ${response.status}.`);

    await cache.put(url, response);
    kept[path] = hash;
    unsaved += 1;

    if (unsaved >= saveEvery) {
      unsaved = 0;
      await saveKept(cache, kept);
    }

    onProgress(countKeptImages(list, kept));
  };

  await Promise.all(
    Array.from({ length: downloadsAtOnce }, async () => {
      for (let next = queue.shift(); next; next = queue.shift()) {
        if (result !== "done") return;

        if (shouldStop()) {
          result = "stopped";
          return;
        }

        try {
          await keep(next);
          failuresInARow = 0;
        } catch (error) {
          if (isStorageFull(error)) {
            result = "storage-full";
            return;
          }

          failuresInARow += 1;

          if (failuresInARow >= failuresToGiveUp) {
            result = shouldStop() ? "stopped" : "failed";
          }
        }
      }
    }),
  );

  await saveKept(cache, kept).catch(() => undefined);

  if (result === "done" && findMissingImages(list, kept).length) {
    return "failed";
  }

  return result;
};
