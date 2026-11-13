#!/usr/bin/env node

/*
 * Checks that the voydex-assets checkout has a picture for everything the
 * seeds name: every Pokémon form (HOME sprites and official art, normal and
 * shiny), game cover, trainer portrait and gym badge. A missing file is not
 * an error in the app (it shows a letter or the type's icon instead), so
 * nothing else notices it. Items are left out: only held items and Poké
 * Balls have sprites, and the rest keep their stand-in icon on purpose.
 *
 * The assets live in their own repository, so this runs on a computer that
 * has both checkouts: `npm run assets:check`, reading `../voydex-assets` or
 * the folder in VOYDEX_ASSETS_DIR. Without that folder it says so and passes.
 */

import { existsSync, readFileSync } from "node:fs";
import path from "node:path";
import { pathToFileURL } from "node:url";

import { rootDir } from "../database/context.mjs";
import { collectSqlFiles } from "../database/files.mjs";
import { createAuditContext } from "../database/seed-audit/context.mjs";
import {
  parseInserts,
  stripLineComments,
} from "../database/seed-audit/core.mjs";

const pokemonImageFolders = [
  "pokemon/home/sm",
  "pokemon/home/md",
  "pokemon/home-shiny/sm",
  "pokemon/home-shiny/md",
  "pokemon/art/normal",
  "pokemon/art/shiny",
];

const homeShinyFolders = ["pokemon/home-shiny/sm", "pokemon/home-shiny/md"];
const shinyFolders = [...homeShinyFolders, "pokemon/art/shiny"];

/* Pictures that don't exist anywhere yet, each with why. */
export const knownImageGaps = new Map([
  ...[
    "pikachu-original-cap",
    "pikachu-hoenn-cap",
    "pikachu-sinnoh-cap",
    "pikachu-unova-cap",
    "pikachu-kalos-cap",
    "pikachu-alola-cap",
    "pikachu-world-cap",
    "pikachu-rock-star",
    "pikachu-belle",
    "pikachu-pop-star",
    "pikachu-phd",
    "pikachu-libre",
    "pikachu-cosplay",
  ].flatMap((slug) =>
    homeShinyFolders.map((folder) => [`${folder}/${slug}.webp`, "never shiny"]),
  ),
  ...["pikachu-partner", "eevee-partner"].flatMap((slug) =>
    shinyFolders.map((folder) => [`${folder}/${slug}.webp`, "never shiny"]),
  ),
  ...[
    "mega-garchomp-z",
    "mega-tatsugiri",
    "mega-tatsugiri-droopy",
    "mega-magearna-original-color",
    "terapagos-stellar",
  ].map((slug) => [
    `pokemon/art/shiny/${slug}.webp`,
    "no shiny official art yet",
  ]),
  ...[
    "segin-starmobile",
    "schedar-starmobile",
    "navi-starmobile",
    "ruchbah-starmobile",
    "caph-starmobile",
  ].flatMap((slug) =>
    shinyFolders.map((folder) => [
      `${folder}/${slug}.webp`,
      "Team Star's Starmobiles are never shiny",
    ]),
  ),
]);

const imageTables = [
  "reference.pokemon_forms",
  "reference.games",
  "tracking.mainline_opponents",
  "tracking.mainline_badges",
];

const insertsIntoImageTable = new RegExp(
  `INSERT\\s+INTO\\s+(?:${imageTables.join("|").replaceAll(".", "\\.")})\\s*\\(`,
  "i",
);

const readSeedRows = () => {
  const context = createAuditContext();
  const rows = collectSqlFiles(path.join(rootDir, "database", "seeds"))
    .map((filePath) => ({
      filePath,
      sql: stripLineComments(readFileSync(filePath, "utf8")),
    }))
    .filter(({ sql }) => insertsIntoImageTable.test(sql))
    .flatMap(({ filePath, sql }) => parseInserts(context, sql, filePath));
  if (context.errors.length > 0) {
    throw new Error(`Could not read the seeds:\n${context.errors.join("\n")}`);
  }
  return rows;
};

/* Every image path the seeds ask the assets site for. */
export const listExpectedImages = (rows) => {
  const images = new Set();
  const add = (folder, slug) => {
    if (slug) images.add(`${folder}/${slug}.webp`);
  };

  for (const { table, row } of rows) {
    if (table === "reference.pokemon_forms") {
      pokemonImageFolders.forEach((folder) => add(folder, row.slug));
    } else if (table === "reference.games") {
      add("games/covers", row.slug);
    } else if (table === "tracking.mainline_opponents") {
      add("trainers", row.sprite_slug);
    } else if (
      table === "tracking.mainline_badges" &&
      /* Alola's Z-Crystals wear their type's icon. */
      row.kind !== "z-crystal"
    ) {
      add("badges", row.sprite_slug);
    }
  }

  return [...images].sort();
};

/*
 * Images the seeds need and the folder lacks, and known gaps that are no
 * longer missing (so their entry can go).
 */
export const findMissingImages = (
  expected,
  hasImage,
  knownGaps = knownImageGaps,
) => ({
  missing: expected.filter(
    (image) => !knownGaps.has(image) && !hasImage(image),
  ),
  filledGaps: expected.filter(
    (image) => knownGaps.has(image) && hasImage(image),
  ),
});

const main = () => {
  const assetsDir = path.resolve(
    process.env.VOYDEX_ASSETS_DIR ?? path.join(rootDir, "..", "voydex-assets"),
  );

  if (!existsSync(path.join(assetsDir, "pokemon"))) {
    console.log(
      `No voydex-assets checkout at ${assetsDir}; set VOYDEX_ASSETS_DIR to check the images.`,
    );
    return;
  }

  const expected = listExpectedImages(readSeedRows());
  const { missing, filledGaps } = findMissingImages(expected, (image) =>
    existsSync(path.join(assetsDir, image)),
  );

  for (const image of filledGaps) {
    console.warn(
      `${image} exists now: take it off the known gaps in scripts/assets/check-asset-images.mjs.`,
    );
  }

  if (missing.length > 0) {
    console.error(
      `${missing.length} images are missing from ${assetsDir}:\n${missing.map((image) => `  ${image}`).join("\n")}`,
    );
    process.exitCode = 1;
    return;
  }

  console.log(`All ${expected.length} images the seeds name are there.`);
};

if (import.meta.url === pathToFileURL(process.argv[1] ?? "").href) {
  main();
}
