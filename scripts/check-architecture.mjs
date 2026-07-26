import { readdir, readFile } from "node:fs/promises";
import path from "node:path";
import process from "node:process";
import ts from "typescript";

const projectRoot = process.cwd();
const sourceRoot = path.join(projectRoot, "src");
const sourceExtensions = new Set([".ts", ".tsx", ".mts", ".cts"]);
const mainlinePlayHubViewsPrefix = [
  "modules",
  "mainline",
  "features",
  "plays",
  "hub",
  "views",
];
const responsibilityFolderNames = new Set([
  "__tests__",
  "application",
  "client",
  "components",
  "data",
  "display",
  "domain",
  "infrastructure",
  "sections",
  "server",
  "shared",
  "types",
  "utils",
]);

const normalizePath = (value) => value.split(path.sep).join("/");
const startsWithSegments = (segments, prefix) =>
  prefix.every((segment, index) => segments[index] === segment);

function getPlayHubLeafView(segments) {
  const candidate = segments[mainlinePlayHubViewsPrefix.length + 1];

  if (
    !candidate ||
    responsibilityFolderNames.has(candidate) ||
    sourceExtensions.has(path.extname(candidate))
  ) {
    return null;
  }

  return candidate;
}

function crossesPlayHubViewBoundary(sourceSegments, targetSegments) {
  if (
    !startsWithSegments(sourceSegments, mainlinePlayHubViewsPrefix) ||
    !startsWithSegments(targetSegments, mainlinePlayHubViewsPrefix)
  ) {
    return false;
  }

  const viewIndex = mainlinePlayHubViewsPrefix.length;
  const sourceView = sourceSegments[viewIndex];
  const targetView = targetSegments[viewIndex];

  if (sourceView !== targetView) {
    return true;
  }

  const sourceLeaf = getPlayHubLeafView(sourceSegments);
  const targetLeaf = getPlayHubLeafView(targetSegments);

  return Boolean(targetLeaf) && sourceLeaf !== targetLeaf;
}

function verifyPlayHubBoundaryFixtures() {
  const fixtures = [
    {
      source:
        "modules/mainline/features/plays/hub/views/team/team-roster/sections/roster.tsx",
      target:
        "modules/mainline/features/plays/hub/views/team/team-plan/sections/comparison.tsx",
      violates: true,
    },
    {
      source:
        "modules/mainline/features/plays/hub/views/progress/progress-overall/sections/summary.tsx",
      target:
        "modules/mainline/features/plays/hub/views/progress/story/sections/story.tsx",
      violates: true,
    },
    {
      source:
        "modules/mainline/features/plays/hub/views/team/data/team-view-mapper.ts",
      target:
        "modules/mainline/features/plays/hub/views/team/team-plan/mainline-play-team-plan.tsx",
      violates: true,
    },
    {
      source:
        "modules/mainline/features/plays/hub/views/team/team-roster/sections/roster.tsx",
      target:
        "modules/mainline/features/plays/hub/views/team/shared/team-slot-label.tsx",
      violates: false,
    },
    {
      source:
        "modules/mainline/features/plays/hub/views/overview/sections/team/team-section.tsx",
      target:
        "modules/mainline/features/plays/hub/views/overview/data/team-preview-mapper.ts",
      violates: false,
    },
  ];

  for (const fixture of fixtures) {
    const actual = crossesPlayHubViewBoundary(
      fixture.source.split("/"),
      fixture.target.split("/"),
    );

    if (actual !== fixture.violates) {
      throw new Error(
        `Play Hub boundary fixture failed: ${fixture.source} -> ${fixture.target}`,
      );
    }
  }
}

async function collectSourceFiles(directory) {
  const entries = await readdir(directory, { withFileTypes: true });
  const files = [];

  for (const entry of entries) {
    const entryPath = path.join(directory, entry.name);

    if (entry.isDirectory()) {
      files.push(...(await collectSourceFiles(entryPath)));
      continue;
    }

    if (sourceExtensions.has(path.extname(entry.name))) {
      files.push(entryPath);
    }
  }

  return files;
}

function resolveInternalImport(importerPath, specifier) {
  if (specifier.startsWith("@/")) {
    return path.join(sourceRoot, specifier.slice(2));
  }

  if (specifier.startsWith(".")) {
    return path.resolve(path.dirname(importerPath), specifier);
  }

  return null;
}

function collectModuleSpecifiers(sourceFile) {
  const specifiers = [];

  const visit = (node) => {
    if (
      (ts.isImportDeclaration(node) || ts.isExportDeclaration(node)) &&
      node.moduleSpecifier &&
      ts.isStringLiteral(node.moduleSpecifier)
    ) {
      specifiers.push(node.moduleSpecifier.text);
    }

    if (
      ts.isCallExpression(node) &&
      node.expression.kind === ts.SyntaxKind.ImportKeyword &&
      node.arguments.length === 1 &&
      ts.isStringLiteral(node.arguments[0])
    ) {
      specifiers.push(node.arguments[0].text);
    }

    ts.forEachChild(node, visit);
  };

  visit(sourceFile);
  return specifiers;
}

function addImportViolation(violations, sourcePath, message, specifier) {
  violations.push(`${sourcePath}: ${message} (${specifier})`);
}

function checkImportBoundary({
  importerPath,
  importerSegments,
  isClientComponent,
  specifier,
  violations,
}) {
  const targetPath = resolveInternalImport(importerPath, specifier);

  if (!targetPath) {
    return;
  }

  const targetRelativePath = normalizePath(
    path.relative(sourceRoot, targetPath),
  );
  const targetSegments = targetRelativePath.split("/");
  const sourceArea = importerSegments[0];
  const targetArea = targetSegments[0];

  if (crossesPlayHubViewBoundary(importerSegments, targetSegments)) {
    addImportViolation(
      violations,
      normalizePath(path.relative(projectRoot, importerPath)),
      "Play Hub leaf views must use Hub-owned or family-owned shared code instead of sibling view internals",
      specifier,
    );
  }

  if (
    sourceArea === "shared" &&
    ["app", "config", "features", "modules", "platform"].includes(targetArea)
  ) {
    addImportViolation(
      violations,
      normalizePath(path.relative(projectRoot, importerPath)),
      "shared code must not depend on an application, feature, module, or platform layer",
      specifier,
    );
  }

  if (
    sourceArea === "platform" &&
    ["app", "config", "features", "modules"].includes(targetArea)
  ) {
    addImportViolation(
      violations,
      normalizePath(path.relative(projectRoot, importerPath)),
      "platform code must not depend on application or product layers",
      specifier,
    );
  }

  if (sourceArea === "features") {
    const sourceFeature = importerSegments[1];
    const targetFeature = targetSegments[1];

    if (["app", "modules"].includes(targetArea)) {
      addImportViolation(
        violations,
        normalizePath(path.relative(projectRoot, importerPath)),
        `global feature ${sourceFeature} must not depend on the application route layer or a product module`,
        specifier,
      );
    }

    if (targetArea === "features" && sourceFeature !== targetFeature) {
      addImportViolation(
        violations,
        normalizePath(path.relative(projectRoot, importerPath)),
        `global feature ${sourceFeature} must not depend on global feature ${targetFeature}`,
        specifier,
      );
    }
  }

  if (sourceArea === "modules" && ["app", "features"].includes(targetArea)) {
    addImportViolation(
      violations,
      normalizePath(path.relative(projectRoot, importerPath)),
      "product modules must not depend on application routes or global feature internals",
      specifier,
    );
  }

  if (
    sourceArea === "config" &&
    ["app", "features", "modules", "platform"].includes(targetArea)
  ) {
    addImportViolation(
      violations,
      normalizePath(path.relative(projectRoot, importerPath)),
      "configuration must remain independent of runtime and product layers",
      specifier,
    );
  }

  if (sourceArea === "modules" && targetArea === "modules") {
    const sourceModule = importerSegments[1];
    const targetModule = targetSegments[1];
    const importsReferenceModule =
      targetModule === "reference" && sourceModule !== "reference";
    const importsReferenceInternals =
      importsReferenceModule && targetSegments[2] === "shared";

    if (importsReferenceInternals) {
      addImportViolation(
        violations,
        normalizePath(path.relative(projectRoot, importerPath)),
        `module ${sourceModule} must use the public reference entry points instead of reference/shared internals`,
        specifier,
      );
    }

    if (sourceModule !== targetModule && !importsReferenceModule) {
      addImportViolation(
        violations,
        normalizePath(path.relative(projectRoot, importerPath)),
        `module ${sourceModule} must not depend on module ${targetModule}`,
        specifier,
      );
    }
  }

  const serverSegmentIndex = targetSegments.indexOf("server");
  const targetName = targetSegments.at(-1) ?? "";
  const isServerAction = /(^|[-.])actions?(\.|$)/.test(targetName);

  if (isClientComponent && serverSegmentIndex >= 0 && !isServerAction) {
    addImportViolation(
      violations,
      normalizePath(path.relative(projectRoot, importerPath)),
      "client components may import Server Actions but not server query or loader modules",
      specifier,
    );
  }
}

async function checkFile(filePath) {
  const sourceText = await readFile(filePath, "utf8");
  const relativePath = normalizePath(path.relative(sourceRoot, filePath));
  const segments = relativePath.split("/");
  const scriptKind = filePath.endsWith(".tsx")
    ? ts.ScriptKind.TSX
    : ts.ScriptKind.TS;
  const sourceFile = ts.createSourceFile(
    filePath,
    sourceText,
    ts.ScriptTarget.Latest,
    true,
    scriptKind,
  );
  const isClientComponent = sourceFile.statements.some(
    (statement) =>
      ts.isExpressionStatement(statement) &&
      ts.isStringLiteral(statement.expression) &&
      statement.expression.text === "use client",
  );
  const violations = [];

  if (segments[0] === "lib") {
    violations.push(
      `${normalizePath(path.relative(projectRoot, filePath))}: src/lib is retired; move the file to its platform, feature, module, config, or shared owner`,
    );
  }

  const retiredReferencePaths = [
    ["shared", "components", "game"],
    ["shared", "components", "pokemon"],
    ["shared", "domain", "games"],
    ["shared", "domain", "pokemon"],
  ];

  if (
    retiredReferencePaths.some((retiredPath) => {
      return retiredPath.every((segment, index) => segments[index] === segment);
    })
  ) {
    violations.push(
      `${normalizePath(path.relative(projectRoot, filePath))}: Pokemon/game reference code belongs under src/modules/reference`,
    );
  }

  const retiredMainlinePlayDetailPath = [
    "modules",
    "mainline",
    "features",
    "plays",
    "detail",
  ];

  if (
    retiredMainlinePlayDetailPath.every(
      (segment, index) => segments[index] === segment,
    )
  ) {
    violations.push(
      `${normalizePath(path.relative(projectRoot, filePath))}: the Mainline Play Hub belongs under src/modules/mainline/features/plays/hub`,
    );
  }

  const retiredPokemonCompatibilityRoute = [
    "app",
    "(app-public)",
    "codex",
    "pokemon",
    "[gameSlug]",
    "page.tsx",
  ];

  if (
    retiredPokemonCompatibilityRoute.every(
      (segment, index) => segments[index] === segment,
    ) &&
    segments.length === retiredPokemonCompatibilityRoute.length
  ) {
    violations.push(
      `${normalizePath(path.relative(projectRoot, filePath))}: Pokemon detail routes must use the neutral [slug] segment; do not restore src/app/(app-public)/codex/pokemon/[gameSlug]/page.tsx`,
    );
  }

  for (const specifier of collectModuleSpecifiers(sourceFile)) {
    checkImportBoundary({
      importerPath: filePath,
      importerSegments: segments,
      isClientComponent,
      specifier,
      violations,
    });

    if (
      segments.includes("components") &&
      (specifier.startsWith("@supabase/") ||
        /\/(supabase|database)\//.test(specifier))
    ) {
      addImportViolation(
        violations,
        normalizePath(path.relative(projectRoot, filePath)),
        "components must not create or import database clients",
        specifier,
      );
    }
  }

  if (segments.includes("components") && /\.schema\s*\(/.test(sourceText)) {
    violations.push(
      `${normalizePath(path.relative(projectRoot, filePath))}: components must not perform raw Supabase schema reads`,
    );
  }

  return violations;
}

verifyPlayHubBoundaryFixtures();

const sourceFiles = await collectSourceFiles(sourceRoot);
const violations = (await Promise.all(sourceFiles.map(checkFile)))
  .flat()
  .sort();

if (violations.length > 0) {
  console.error("Architecture boundary violations:");
  for (const violation of violations) {
    console.error(`- ${violation}`);
  }
  process.exitCode = 1;
} else {
  console.log(
    `Architecture check passed for ${sourceFiles.length} source files.`,
  );
}
