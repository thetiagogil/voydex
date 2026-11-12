import { createHash } from "node:crypto";
import { gzipSync } from "node:zlib";

import type { GameDataFile } from "@/platform/local-db/game-data";

/* A file as the release build writes it: its JSON, gzipped and hashed. */
export const buildFile = (
  name: string,
  kind: GameDataFile["kind"],
  slug: string,
  tables: GameDataFile["tables"],
) => {
  const json = JSON.stringify({ format: 2, kind, slug, tables });
  const hash = createHash("sha256").update(json).digest("hex");
  const bytes = new Uint8Array(gzipSync(json));

  return {
    bytes,
    entry: {
      bytes: bytes.byteLength,
      hash,
      name,
      path: `${name}.${hash.slice(0, 16)}.json.gz`,
      rows: tables.reduce((sum, table) => sum + table.rows, 0),
    },
    json,
  };
};
