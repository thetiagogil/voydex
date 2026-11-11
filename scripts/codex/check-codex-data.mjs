#!/usr/bin/env node

/*
 * Warns before `npm run dev` when the Codex's pre-built files are missing:
 * without them every Codex page is not found and the game pickers are
 * empty. It never fails, so the app still starts.
 */

import fs from "node:fs";
import path from "node:path";

const marker = path.join(
  process.cwd(),
  "public",
  "codex-data",
  "version-groups.json.gz",
);

if (!fs.existsSync(marker)) {
  console.warn(
    "\nNo Codex files in public/codex-data/: run npm run game-data:build, then npm run codex:build.\n",
  );
}
