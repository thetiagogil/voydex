#!/usr/bin/env node

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const imageExtensions = new Set([
  ".gif",
  ".jpeg",
  ".jpg",
  ".png",
  ".svg",
  ".webp",
]);

function collectFiles(directory, predicate) {
  if (!fs.existsSync(directory)) return [];

  const files = [];
  for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
    const entryPath = path.join(directory, entry.name);
    if (entry.isDirectory()) {
      files.push(...collectFiles(entryPath, predicate));
    } else if (entry.isFile() && predicate(entryPath)) {
      files.push(entryPath);
    }
  }
  return files.sort((left, right) => left.localeCompare(right));
}

function normalize(filePath) {
  return path.resolve(filePath).toLowerCase();
}

function displayPath(rootDir, filePath) {
  return path.relative(rootDir, filePath).replaceAll(path.sep, "/");
}

function markdownTargets(markdown) {
  const targets = [];
  const inlineLinkPattern = /!?(?:\[[^\]]*\])\(([^)]+)\)/g;
  const referenceLinkPattern = /^\s*\[[^\]]+\]:\s*(\S+)/gm;

  for (const match of markdown.matchAll(inlineLinkPattern)) {
    const raw = match[1].trim();
    targets.push(
      raw.startsWith("<") && raw.includes(">")
        ? raw.slice(1, raw.indexOf(">"))
        : raw.split(/\s+/)[0],
    );
  }
  for (const match of markdown.matchAll(referenceLinkPattern)) {
    targets.push(match[1]);
  }
  return targets;
}

function localTargetPath(sourcePath, rawTarget) {
  if (
    rawTarget.startsWith("#") ||
    /^[a-z][a-z0-9+.-]*:/i.test(rawTarget) ||
    rawTarget.startsWith("//")
  ) {
    return null;
  }

  const withoutFragment = rawTarget.split("#", 1)[0].split("?", 1)[0];
  if (!withoutFragment) return null;

  try {
    return path.resolve(path.dirname(sourcePath), decodeURI(withoutFragment));
  } catch {
    return path.resolve(path.dirname(sourcePath), withoutFragment);
  }
}

export function inspectDocumentation(rootDir) {
  const docsRoot = path.join(rootDir, "docs");
  const docsIndex = path.join(docsRoot, "README.md");
  const docsFiles = collectFiles(
    docsRoot,
    (filePath) => path.extname(filePath).toLowerCase() === ".md",
  );
  const isMarkdown = (filePath) =>
    path.extname(filePath).toLowerCase() === ".md";
  const markdownFiles = [
    path.join(rootDir, "README.md"),
    path.join(rootDir, "CLAUDE.md"),
    path.join(rootDir, ".claude", "engineering-guide.md"),
    ...collectFiles(path.join(rootDir, ".claude", "agents"), isMarkdown),
    ...collectFiles(
      path.join(rootDir, ".claude", "skills", "voydex-product-engineer"),
      isMarkdown,
    ),
    ...docsFiles,
  ].filter(fs.existsSync);
  const designAssets = collectFiles(path.join(docsRoot, "design"), (filePath) =>
    imageExtensions.has(path.extname(filePath).toLowerCase()),
  );

  const errors = [];
  const docGraph = new Map(
    docsFiles.map((filePath) => [normalize(filePath), []]),
  );
  const referencedDesignAssets = new Set();

  for (const sourcePath of markdownFiles) {
    const markdown = fs.readFileSync(sourcePath, "utf8");
    for (const rawTarget of markdownTargets(markdown)) {
      const targetPath = localTargetPath(sourcePath, rawTarget);
      if (!targetPath) continue;

      if (!fs.existsSync(targetPath)) {
        errors.push(
          `${displayPath(rootDir, sourcePath)} links to missing ${rawTarget}`,
        );
        continue;
      }

      const normalizedTarget = normalize(targetPath);
      if (
        docGraph.has(normalizedTarget) &&
        docGraph.has(normalize(sourcePath))
      ) {
        docGraph.get(normalize(sourcePath)).push(normalizedTarget);
      }
      if (
        normalize(targetPath).startsWith(
          normalize(path.join(docsRoot, "design")),
        ) &&
        imageExtensions.has(path.extname(targetPath).toLowerCase())
      ) {
        referencedDesignAssets.add(normalizedTarget);
      }
    }
  }

  if (!fs.existsSync(docsIndex)) {
    errors.push("docs/README.md is missing");
  } else {
    const reachable = new Set();
    const queue = [normalize(docsIndex)];
    while (queue.length > 0) {
      const current = queue.shift();
      if (reachable.has(current)) continue;
      reachable.add(current);
      queue.push(...(docGraph.get(current) ?? []));
    }

    for (const docPath of docsFiles) {
      if (!reachable.has(normalize(docPath))) {
        errors.push(
          `${displayPath(rootDir, docPath)} is not reachable from docs/README.md`,
        );
      }
    }
  }

  for (const assetPath of designAssets) {
    if (!referencedDesignAssets.has(normalize(assetPath))) {
      errors.push(
        `${displayPath(rootDir, assetPath)} is not indexed by an active Markdown document`,
      );
    }
  }

  return errors.sort();
}

export function runDocumentationCheck(rootDir) {
  const errors = inspectDocumentation(rootDir);
  if (errors.length > 0) {
    for (const error of errors) console.error(`- ${error}`);
    return 1;
  }

  const docsCount = collectFiles(
    path.join(rootDir, "docs"),
    (filePath) => path.extname(filePath).toLowerCase() === ".md",
  ).length;
  console.log(`Documentation check passed for ${docsCount} Markdown files.`);
  return 0;
}

const invokedPath = process.argv[1] ? path.resolve(process.argv[1]) : "";
if (invokedPath === fileURLToPath(import.meta.url)) {
  process.exitCode = runDocumentationCheck(
    path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..", ".."),
  );
}
