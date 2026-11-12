/*
 * PGlite's file system bundle (`pglite.data`, about 6 MB), gzipped by the
 * build into public/local-db/engine/ (about 1 MB). The host sends a `.data`
 * file as it is, so the device database reads this copy instead
 * (`local-db-worker.ts`). Its name changes with its content, so browsers
 * keep it without asking again (`public/_headers`).
 */

import { createHash } from "node:crypto";
import fs from "node:fs";
import { createRequire } from "node:module";
import path from "node:path";
import zlib from "node:zlib";

const require = createRequire(import.meta.url);
const sourcePath = path.join(
  path.dirname(require.resolve("@electric-sql/pglite")),
  "pglite.data",
);
const folder = "local-db/engine";

/* The address the app reads the bundle from, named by its content. */
export function pgliteBundleAddress() {
  const hash = createHash("sha256")
    .update(fs.readFileSync(sourcePath))
    .digest("hex")
    .slice(0, 16);

  return `/${folder}/pglite-${hash}.data.gz`;
}

/* Writes the gzipped bundle under `publicDir`, replacing any older one. */
export function writePgliteBundle(publicDir) {
  const outputDir = path.join(publicDir, folder);

  fs.rmSync(outputDir, { force: true, recursive: true });
  fs.mkdirSync(outputDir, { recursive: true });
  fs.writeFileSync(
    path.join(publicDir, pgliteBundleAddress()),
    zlib.gzipSync(fs.readFileSync(sourcePath), { level: 9 }),
  );
}
