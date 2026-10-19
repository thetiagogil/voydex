#!/usr/bin/env node

/*
 * Fails when anything from a retired look is still referenced. Soft Clay
 * replaced the journal design in place: the journal tokens and classes, DM
 * Sans and Lora, the valley background and paper texture, the old meaning
 * colours, the realistic type scenery and glows, and the V1 styling docs.
 * Phase 4 then retired the raised "clicky" look: hard lips under surfaces,
 * buttons that move when pressed, and the lip tokens. The source rules below
 * guard the component rules too (see docs/app/design-system.md).
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
    label: "journal shadow scale (use a Soft Clay shadow role)",
    pattern: /(?<!drop-)\bshadow-(?:2xs|xs|sm|md|lg|xl|2xl)\b/,
  },
  {
    label: "retired V1 styling doc",
    pattern: /design\/v1\/|v1-screen-flow|visual-language\.md/,
  },
];

/*
 * Rules for the app's own source only (src/), where the components live:
 * each names what replaced the retired look. `allow` lists the files a rule
 * permits on purpose.
 */
const sourceRules = [
  {
    label:
      "a white band sized by hand (controls and corner marks take the --band token)",
    pattern:
      /\b(?:border|ring)-[1-9](?:\.\d+)?\s+(?:border|ring)-white\b|\b(?:border|ring)-white\s+(?:border|ring)-[1-9]\b|0_0_0_[\d.]+px_#fff/,
    /*
     * The controls: primitives, the top bar, a Play's tabs and the marks
     * on a card's corner. Pictures (covers, portraits) keep their own frame.
     */
    only: [
      path.join("src", "shared", "components", "ui"),
      path.join("src", "shared", "components", "picked-mark.tsx"),
      path.join("src", "shared", "components", "corner-bubble.tsx"),
      path.join("src", "features", "app-shell"),
      path.join(
        "src",
        "modules",
        "mainline",
        "features",
        "plays",
        "hub",
        "shell",
      ),
    ],
  },
  {
    label:
      "a white band drawn by hand in a shadow (use bubble, sticker or moment-ring)",
    pattern: /0_0_0_[\d.]+px_#fff/,
  },
  {
    label:
      "a hand-sized text, tracking or line height (use a title step, the type scale or a named leading)",
    pattern: /\btext-\[\d[\d.]*(?:px|rem)\]|\btracking-\[|\bleading-\[/,
  },
  {
    label: "a focus ring by hand (use focus-ring or focus-ring-inset)",
    pattern: /(?<![-\w])focus-visible:outline-3\b/,
  },
  {
    label:
      "hard lip under a surface (lift it with a soft shadow; buttons take the sticker edge)",
    pattern: /(?:shadow-\[|,)0_[1-9][\d.]*px_0(?:_|,|\])/,
  },
  {
    label: "retired lip token (use shadow-card, shadow-soft or shadow-button)",
    pattern:
      /\bshadow-(?:quiet|action|game)\b|--shadow-quiet-value|--clay-edge|--sticker-lip/,
  },
  {
    label: "a press that moves (buttons settle onto what they sit on)",
    pattern: /\bactive:[^\s"'`]*translate-y/,
  },
  {
    label: "gradient fill (colour is flat; gradients only mask or texture)",
    pattern: /\bbg-(?:linear|radial|conic|gradient)-/,
  },
  { label: "glass (no blur behind surfaces)", pattern: /\bbackdrop-blur/ },
  {
    label: "Button link variant (words that go somewhere are a TextLink)",
    pattern: /variant(?:=|:\s*)"link"/,
  },
];

/* Vendored third-party skills describe their own examples, not Voydex. */
const ignoredDirectories = [path.join(".claude", "skills", "shadcn")];

const collectFiles = (relativeDir) => {
  const absoluteDir = path.join(rootDir, relativeDir);

  if (!fs.existsSync(absoluteDir) || ignoredDirectories.includes(relativeDir)) {
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

  const rules = file.startsWith(`src${path.sep}`)
    ? [
        ...retired,
        ...sourceRules.filter(
          (rule) =>
            !rule.allow?.includes(file) &&
            (!rule.only || rule.only.some((scope) => file.startsWith(scope))),
        ),
      ]
    : retired;

  lines.forEach((line, index) => {
    for (const { label, pattern } of rules) {
      if (pattern.test(line)) {
        findings.push(`${file}:${index + 1}  ${label}`);
      }
    }
  });
}

if (findings.length) {
  console.error("A retired look is still referenced:\n");
  console.error(findings.map((finding) => `  ${finding}`).join("\n"));
  process.exit(1);
}

console.log(`No retired design references in ${files.length} files.`);
