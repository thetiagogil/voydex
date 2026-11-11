import { getAssetUrl } from "@/shared/utils/asset-url";

/*
 * Pre-built data: what a page shows of the game data, written once by the
 * build (`npm run codex:build`) from the game data files and served as
 * static files under /codex-data/, so no page reads a database for it.
 * Each file is gzipped JSON; Maps and Sets are kept as tagged arrays.
 */

export const prebuiltDataUrl = "/codex-data";

const slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;

/*
 * A file's path under /codex-data/ from slug segments ("pokemon",
 * "pikachu"). A segment that isn't a slug never makes a path, so an address
 * can't reach another file.
 */
export const getPrebuiltDataPath = (...segments: string[]) => {
  if (
    !segments.length ||
    !segments.every((segment) => slugPattern.test(segment))
  ) {
    return null;
  }

  return `${segments.join("/")}.json.gz`;
};

/*
 * Row timestamps say when the build's database was filled, not anything
 * about the game: left out, a file only changes when its data does.
 */
const buildTimeKeys = new Set(["created_at", "updated_at"]);

/*
 * Image addresses depend on where the app runs (the voydex-assets site, or
 * a local stand-in), so a file never holds one: the build runs with this as
 * the assets site (`NEXT_PUBLIC_ASSETS_URL`), and reading a file turns each
 * `voydex-asset:/…` back into this app's address for the image (or null when
 * no assets site is set, so the image shows its letter fallback).
 */
export const prebuiltAssetBase = "voydex-asset:";

const assetPrefix = `${prebuiltAssetBase}/`;

const isPlainObject = (item: object) => {
  const prototype = Object.getPrototypeOf(item);

  return prototype === Object.prototype || prototype === null;
};

/*
 * A page's data as JSON. A value JSON can't keep as it is (a Date, a class
 * instance, a function, NaN) fails the build rather than reach a page
 * changed; Maps and Sets are kept as tagged arrays.
 */
export const encodePrebuiltData = (value: unknown) =>
  JSON.stringify(value, function (this: unknown, key: string, item: unknown) {
    if (buildTimeKeys.has(key)) return undefined;

    /* The value before JSON's own conversion (a Date's toJSON). */
    const raw = key === "" ? item : (this as Record<string, unknown>)[key];

    if (raw instanceof Map) return { $map: [...raw] };
    if (raw instanceof Set) return { $set: [...raw] };

    if (
      typeof raw === "function" ||
      typeof raw === "symbol" ||
      typeof raw === "bigint" ||
      (typeof raw === "number" && !Number.isFinite(raw)) ||
      (typeof raw === "object" &&
        raw !== null &&
        !Array.isArray(raw) &&
        !isPlainObject(raw))
    ) {
      throw new Error(
        `"${key}" holds a value a pre-built file can't keep (${String(raw)}).`,
      );
    }

    return item;
  });

const isTagged = (
  item: unknown,
  tag: "$map" | "$set",
): item is Record<typeof tag, unknown[]> =>
  typeof item === "object" &&
  item !== null &&
  Object.keys(item).length === 1 &&
  Array.isArray((item as Record<string, unknown>)[tag]);

export const decodePrebuiltData = <Data>(text: string): Data =>
  JSON.parse(text, (_key, item: unknown) => {
    if (typeof item === "string" && item.startsWith(assetPrefix)) {
      return getAssetUrl(item.slice(assetPrefix.length));
    }

    if (isTagged(item, "$map"))
      return new Map(item.$map as [unknown, unknown][]);
    if (isTagged(item, "$set")) return new Set(item.$set);

    return item;
  }) as Data;
