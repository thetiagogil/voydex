#!/usr/bin/env node

/*
 * Builds the game data files a device downloads, from the seeds:
 *
 *   npm run game-data:build                 checks, then writes the files
 *   npm run game-data:check                 only the release checks
 *   npm run game-data:build -- --release    also records this release, which
 *                                           the checks compare against (from
 *                                           launch on)
 *
 * It loads the device schema and the seeds (no development fixtures) into an
 * in-memory PGlite, runs the ID and schema checks, and writes to
 * public/game-data/ one shared base file, one file per game (a version group
 * with its expansions), one learnsets file per game and the version list,
 * versions.json. File names carry a hash of their content, so a device
 * downloads a file again only when its rows changed.
 */

import { createHash } from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import zlib from "node:zlib";

import { rootDir } from "../context.mjs";
import { hashDeviceSchemaSql, readDeviceSchemaSql } from "../device-schema.mjs";
import { relativePath } from "../files.mjs";
import {
  findIdProblems,
  findSchemaProblems,
  lastReleasePath,
  readDeviceUpdates,
  readIdChanges,
  readLastRelease,
  readReleaseIds,
} from "./release-checks.mjs";
import { loadSeededDb } from "./seeded-db.mjs";
import { splitGameData } from "./split-game-data.mjs";

const gameDataFormat = 2;
const outputDir = path.join(rootDir, "public", "game-data");
const args = new Set(process.argv.slice(2));
const checkOnly = args.has("--check");
const release = args.has("--release");

if ([...args].some((arg) => arg !== "--check" && arg !== "--release")) {
  console.error(
    "Usage: node scripts/database/game-data/build-game-data.mjs [--check] [--release]",
  );
  process.exit(1);
}

const step = async (label, run) => {
  const startedAt = performance.now();
  const result = await run();
  console.log(
    `${label}: ${((performance.now() - startedAt) / 1000).toFixed(1)} s`,
  );
  return result;
};

const formatMegabytes = (bytes) => `${(bytes / 1024 / 1024).toFixed(2)} MB`;

const db = await step("Schema and seeds", () => loadSeededDb());

try {
  const schemaHash = hashDeviceSchemaSql(readDeviceSchemaSql());
  const lastRelease = readLastRelease();
  const idChanges = readIdChanges();
  const deviceUpdates = readDeviceUpdates();
  const ids = await readReleaseIds(db);
  const problems = [
    ...findIdProblems({ idChanges, ids, lastRelease }),
    ...findSchemaProblems({ deviceUpdates, lastRelease, schemaHash }),
  ];

  if (problems.length) {
    console.error(`\nThe release checks failed (${problems.length}):`);
    for (const problem of problems.slice(0, 40)) console.error(`  ${problem}`);
    if (problems.length > 40) {
      console.error(`  ...and ${problems.length - 40} more.`);
    }
    console.error(
      "\nAdd each removed or reused ID to database/game-data/id-changes.json, and each schema change to database/device-updates/.",
    );
    process.exitCode = 1;
  } else {
    console.log(
      lastRelease
        ? `Release checks passed against the release of ${lastRelease.releasedAt}.`
        : "Release checks passed: no release recorded yet, so IDs and the schema may still change freely.",
    );
  }

  if (!checkOnly && !process.exitCode) {
    const { base, games } = await step("Split", () => splitGameData(db));

    fs.rmSync(outputDir, { force: true, recursive: true });
    fs.mkdirSync(outputDir, { recursive: true });

    const writeFile = (name, kind, slug, tables) => {
      const json = JSON.stringify({
        format: gameDataFormat,
        kind,
        slug,
        tables,
      });
      const hash = createHash("sha256").update(json).digest("hex");
      const filePath = `${name}.${hash.slice(0, 16)}.json.gz`;
      const gzipped = zlib.gzipSync(json, { level: 9 });

      fs.writeFileSync(path.join(outputDir, filePath), gzipped);

      return {
        bytes: gzipped.length,
        hash,
        name,
        path: filePath,
        rows: tables.reduce((sum, table) => sum + table.rows, 0),
      };
    };

    const versions = {
      base: writeFile("base", "base", "base", base),
      builtAt: new Date().toISOString(),
      format: gameDataFormat,
      games: games.map((game) => ({
        data: writeFile(game.slug, "game", game.slug, game.data),
        learnsets: writeFile(
          `${game.slug}-learnsets`,
          "learnsets",
          game.slug,
          game.learnsets,
        ),
        slug: game.slug,
        versionGroupIds: game.versionGroupIds,
      })),
      idChanges,
      schemaHash,
    };

    fs.writeFileSync(
      path.join(outputDir, "versions.json"),
      `${JSON.stringify(versions, null, 2)}\n`,
    );

    const files = [
      versions.base,
      ...versions.games.flatMap((game) => [game.data, game.learnsets]),
    ];

    console.log(
      `\nWrote ${files.length} files and versions.json to ${relativePath(rootDir, outputDir)}: ${formatMegabytes(files.reduce((sum, file) => sum + file.bytes, 0))} gzipped.`,
    );
    console.log(
      `  base: ${formatMegabytes(versions.base.bytes)}, ${versions.base.rows} rows`,
    );
    for (const game of versions.games) {
      console.log(
        `  ${game.slug}: ${formatMegabytes(game.data.bytes)}, ${game.data.rows} rows; learnsets ${formatMegabytes(game.learnsets.bytes)}, ${game.learnsets.rows} rows`,
      );
    }

    if (release) {
      fs.writeFileSync(
        lastReleasePath,
        `${JSON.stringify(
          {
            deviceUpdate: deviceUpdates.at(-1) ?? null,
            ids,
            releasedAt: versions.builtAt,
            schemaHash,
          },
          null,
          2,
        )}\n`,
      );
      console.log(
        `\nRecorded this release in ${relativePath(rootDir, lastReleasePath)}; commit it.`,
      );
    }
  }
} finally {
  await db.close();
}
