import { existsSync, readFileSync, readdirSync } from "node:fs";
import path from "node:path";
import { gunzipSync } from "node:zlib";

import {
  decodePrebuiltData,
  getPrebuiltDataPath,
} from "@/platform/prebuilt-data/prebuilt-data";

/*
 * The pre-built files as the app's build reads them from disk: which pages
 * to make ahead of time (one per Pokémon, game and Pokédex) and what their
 * titles say. Build time only (Node); pages read the same files in the
 * browser (`usePrebuiltData`).
 */

const prebuiltDataDirectory = path.join(process.cwd(), "public", "codex-data");

const missingFiles = () =>
  new Error(
    "The Codex's files are missing from public/codex-data/: run npm run game-data:build, then npm run codex:build, before building the app.",
  );

/* One pre-built file by slug segments ("pokemon", "pikachu"). */
export const readPrebuiltFile = <Data>(...segments: string[]): Data => {
  const relativePath = getPrebuiltDataPath(...segments);

  if (!relativePath) {
    throw new Error(`"${segments.join("/")}" can't name a pre-built file.`);
  }

  const filePath = path.join(prebuiltDataDirectory, relativePath);

  if (!existsSync(filePath)) {
    throw missingFiles();
  }

  return decodePrebuiltData<Data>(
    gunzipSync(readFileSync(filePath)).toString(),
  );
};

/*
 * The slugs with a file in a folder ("games/swsh" lists its Pokédexes);
 * none for a folder that isn't there.
 */
export const listPrebuiltFiles = (...segments: string[]): string[] => {
  if (!existsSync(prebuiltDataDirectory)) {
    throw missingFiles();
  }

  const directory = path.join(prebuiltDataDirectory, ...segments);

  if (!existsSync(directory)) {
    return [];
  }

  return readdirSync(directory)
    .filter((name) => name.endsWith(".json.gz"))
    .map((name) => name.slice(0, -".json.gz".length))
    .toSorted();
};
