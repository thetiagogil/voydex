#!/usr/bin/env node

/*
 * Warns before `npm run dev` when the Codex's pre-built files are missing:
 * without them every Codex page is not found, the game pickers are empty
 * and the Team Planner can't open. It never fails, so the app still starts.
 */

import fs from "node:fs";
import path from "node:path";

/* The Codex's game list, and the Team Planner's (newer: an older build lacks it). */
const markers = ["version-groups.json.gz", "planner.json.gz"].map((file) =>
  path.join(process.cwd(), "public", "codex-data", file),
);

if (!markers.every((marker) => fs.existsSync(marker))) {
  console.warn(
    "\nNo Codex files in public/codex-data/: run npm run game-data:build, then npm run codex:build.\n",
  );
}
