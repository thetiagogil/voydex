#!/usr/bin/env node

/*
 * Fails when anything from the retired journal design is still referenced.
 * Soft Clay replaced it in place: the journal tokens and classes, DM Sans and
 * Lora, the valley background and paper texture, the old meaning colours, the
 * realistic type scenery and glows, and the V1 styling docs.
 */

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const rootDir = path.resolve(
  path.dirname(fileURLToPath(import.meta.url)),
  "../..",
);

const scannedRoots = ["src", "docs", "scripts", "public", ".claude"];
const scannedFiles = [
  "package.json",
  "components.json",
  "AGENTS.md",
  "CLAUDE.md",
  "README.md",
];
const textExtensions = new Set([
  ".css",
  ".js",
  ".json",
  ".md",
  ".mjs",
  ".svg",
  ".ts",
  ".tsx",
]);
/* This guard and the brief name what was retired, so they may mention it. */
const ignoredFiles = new Set([
  path.join("scripts", "design", "check-design-leftovers.mjs"),
  path.join("docs", "design", "soft-clay-brief.md"),
  path.join("docs", "decisions", "0004-soft-clay-design-system.md"),
]);

const retired = [
  { label: "DM Sans font", pattern: /dm[- ]sans/i },
  { label: "Lora font", pattern: /\blora\b/i },
  { label: "serif font utility", pattern: /\bfont-serif\b/ },
  {
    label: "valley background",
    pattern: /bg-(?:day|night)\.webp|\/backgrounds\//,
  },
  { label: "journal paper texture", pattern: /journal-paper-texture/ },
  {
    label: "journal design token or class",
    pattern:
      /\bapp-(?:page-surface|background|nav-[a-z-]+|module-trigger|surface-border|surface-shadow|journal-[a-z-]+)\b|--app-[a-z-]+/,
  },
  {
    label: "journal card variant",
    pattern: /variant(?:=|:\s*)"journal"|^\s*journal:\s*"/m,
  },
  { label: "field-guide type badge", pattern: /field-guide/ },
  {
    label: "retired meaning colour",
    pattern:
      /\b(?:text|bg|border|ring|fill|stroke|from|to)-(?:success|info|warning|rare|legendary|mythic|seen|battle|milestone|decision)(?:\/\d+)?\b/,
  },
  {
    label: "retired game colour variable",
    pattern: /--pokemon-(?:game|type)-color|game-tokens\.css/,
  },
  {
    label: "portrait glow or scenery",
    pattern: /glowClassName|backgroundImageUrl|hover-shadow/,
  },
  {
    label: "retired V1 styling doc",
    pattern: /design\/v1\/|v1-screen-flow|visual-language\.md/,
  },
];

const collectFiles = (relativeDir) => {
  const absoluteDir = path.join(rootDir, relativeDir);

  if (!fs.existsSync(absoluteDir)) {
    return [];
  }

  return fs
    .readdirSync(absoluteDir, { withFileTypes: true })
    .flatMap((entry) => {
      const relativePath = path.join(relativeDir, entry.name);

      if (entry.isDirectory()) {
        return collectFiles(relativePath);
      }

      return textExtensions.has(path.extname(entry.name)) ? [relativePath] : [];
    });
};

const files = [
  ...scannedRoots.flatMap(collectFiles),
  ...scannedFiles.filter((file) => fs.existsSync(path.join(rootDir, file))),
].filter((file) => !ignoredFiles.has(file));

const findings = [];

for (const file of files) {
  const lines = fs.readFileSync(path.join(rootDir, file), "utf8").split("\n");

  lines.forEach((line, index) => {
    for (const { label, pattern } of retired) {
      if (pattern.test(line)) {
        findings.push(`${file}:${index + 1}  ${label}`);
      }
    }
  });
}

if (findings.length) {
  console.error("Retired journal design is still referenced:\n");
  console.error(findings.map((finding) => `  ${finding}`).join("\n"));
  process.exit(1);
}

console.log(`No retired design references in ${files.length} files.`);
