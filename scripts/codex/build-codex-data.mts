#!/usr/bin/env node

/*
 * Builds the Codex's pre-built files (and the game catalogue the game
 * pickers read) from the game data files:
 *
 *   npm run codex:build     after npm run game-data:build
 *
 * It installs every game data file in public/game-data/ (the base, each
 * game and its learnsets) into an in-memory device database, exactly as a
 * device would, runs the Codex's readers over it and writes one gzipped JSON
 * file per page to public/codex-data/. No page reads a database for them.
 */

import fs from "node:fs";
import path from "node:path";
import zlib from "node:zlib";

import { PGlite } from "@electric-sql/pglite";

import { buildCodexFiles } from "@/modules/codex/shared/server/codex-data-build";
import { gameCatalogueFile } from "@/modules/reference/features/games/client/game-catalogue";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";
import { ensureDeviceSchema } from "@/platform/local-db/device-schema";
import {
  installGame,
  installGameBase,
  installGameLearnsets,
  parseGameDataVersions,
} from "@/platform/local-db/game-data";
import { createLocalQueryClient } from "@/platform/local-db/local-query-client";
import {
  encodePrebuiltData,
  prebuiltAssetBase,
} from "@/platform/prebuilt-data/prebuilt-data";

import {
  hashDeviceSchemaSql,
  readDeviceSchemaSql,
} from "../database/device-schema.mjs";

const rootDir = process.cwd();
const gameDataDir = path.join(rootDir, "public", "game-data");
const outputDir = path.join(rootDir, "public", "codex-data");
const versionsPath = path.join(gameDataDir, "versions.json");

const seconds = (startedAt: number) =>
  `${((performance.now() - startedAt) / 1000).toFixed(1)} s`;

if (!fs.existsSync(versionsPath)) {
  console.error(
    "No game data files in public/game-data/: run npm run game-data:build first.",
  );
  process.exit(1);
}

/* Image addresses are kept as asset paths; each app fills in its own site. */
process.env.NEXT_PUBLIC_ASSETS_URL = prebuiltAssetBase;

const startedAt = performance.now();
const db = await PGlite.create();

try {
  const schemaSql = readDeviceSchemaSql();

  await ensureDeviceSchema(db, {
    hash: hashDeviceSchemaSql(schemaSql),
    readSql: () => Promise.resolve(schemaSql),
  });

  const versions = parseGameDataVersions(
    JSON.parse(fs.readFileSync(versionsPath, "utf8")),
  );
  const install = {
    download: async (file: string) =>
      new Uint8Array(fs.readFileSync(path.join(gameDataDir, file))),
    versions,
  };

  await installGameBase(db, install);
  for (const game of versions.games) {
    await installGame(db, game.slug, install);
    await installGameLearnsets(db, game.slug, install);
  }
  console.log(`Game data files: ${seconds(startedAt)}`);

  const writingAt = performance.now();
  let files = 0;
  let bytes = 0;
  const write = async (file: string, data: unknown) => {
    const filePath = path.join(outputDir, file);
    const json = encodePrebuiltData(data);

    /* A real image address in a file would point every app at one site. */
    if (/"https?:\/\/[^"]*\.(?:webp|png|jpe?g|svg|avif)"/.test(json)) {
      throw new Error(
        `${file} holds an image address; build it with asset paths.`,
      );
    }

    const gzipped = zlib.gzipSync(json, { level: 9 });

    fs.mkdirSync(path.dirname(filePath), { recursive: true });
    fs.writeFileSync(filePath, gzipped);
    files += 1;
    bytes += gzipped.length;
  };
  const supabase = createLocalQueryClient(db);

  fs.rmSync(outputDir, { force: true, recursive: true });
  fs.mkdirSync(outputDir, { recursive: true });

  if (gameCatalogueFile === null) {
    throw new Error("The game catalogue has no file name.");
  }

  await write(gameCatalogueFile, await readGameCatalogue(supabase));
  await buildCodexFiles(supabase, write);

  console.log(
    `Wrote ${files} files to public/codex-data/: ${(bytes / 1024 / 1024).toFixed(1)} MB gzipped, ${seconds(writingAt)}.`,
  );
} finally {
  await db.close();
}
