#!/usr/bin/env node

/*
 * Writes the service worker, out/sw.js, after `next build` (npm runs it as
 * `postbuild`). It lists the files in out/ the app keeps for offline use
 * (`keptAddressFor`), names the release by a hash of their content, and
 * bundles `src/platform/offline/service-worker.ts` with that list. See #274.
 */

import { createHash } from "node:crypto";
import fs from "node:fs";
import path from "node:path";

import { build } from "esbuild";

import {
  keptAddressFor,
  type OfflineRelease,
} from "@/platform/offline/offline-rules";

const root = process.cwd();
const outDirectory = path.join(root, "out");
const workerSource = path.join(root, "src/platform/offline/service-worker.ts");
const offlinePage = "/offline";

const listFiles = (directory: string): string[] =>
  fs.readdirSync(directory, { withFileTypes: true }).flatMap((entry) => {
    const full = path.join(directory, entry.name);

    return entry.isDirectory() ? listFiles(full) : [full];
  });

if (!fs.existsSync(outDirectory)) {
  throw new Error("out/ is missing: run npm run build first.");
}

const hash = createHash("sha256");
let bytes = 0;
const files: string[] = [];

for (const full of listFiles(outDirectory).sort()) {
  const relative = path.relative(outDirectory, full).split(path.sep).join("/");
  const address = keptAddressFor(relative);

  if (!address) continue;

  const content = fs.readFileSync(full);

  hash.update(`${address}\n`).update(content);
  bytes += content.byteLength;
  files.push(address);
}

if (!files.includes(offlinePage)) {
  throw new Error(`The offline page (${offlinePage}) is missing from out/.`);
}

const release: OfflineRelease = {
  files,
  id: hash.digest("hex").slice(0, 16),
  offlinePage,
};

await build({
  bundle: true,
  define: { __VOYDEX_RELEASE__: JSON.stringify(release) },
  entryPoints: [workerSource],
  format: "iife",
  legalComments: "none",
  logLevel: "warning",
  minify: true,
  outfile: path.join(outDirectory, "sw.js"),
  target: "es2020",
  tsconfig: path.join(root, "tsconfig.json"),
});

console.log(
  `Service worker: release ${release.id}, ${files.length} files kept offline (${(bytes / 1024 / 1024).toFixed(1)} MB).`,
);
