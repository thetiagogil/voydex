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
  "client",
  "components",
  "data",
  "sections",
  "server",
  "shared",
  "utils",
]);
/* Responsibility folders that hold files only, never another folder. */
const flatFolderNames = new Set(["client", "data", "server", "utils"]);
/*
 * Folder names reserved for one place each (see Agreed Folder Names in
 * docs/app/architecture.md), and names that the vocabulary retired. Any
 * other kebab-case name is a feature, view or section area.
 */
const placedFolderNames = new Map([
  ["domain", (segments) => segments[1] === "reference"],
  [
    "features",
    (segments) => segments[0] === "modules" && segments.length === 3,
  ],
  [
    "shell",
    (segments) =>
      startsWithSegments(segments, mainlinePlayHubViewsPrefix.slice(0, -1)) &&
      segments.length === mainlinePlayHubViewsPrefix.length,
  ],
  [
    "styles",
    (segments) =>
      segments.join("/") === "modules/reference/features/pokemon/styles",
  ],
  [
    "views",
    (segments) => segments.join("/") === mainlinePlayHubViewsPrefix.join("/"),
  ],
]);
const retiredFolderNames = new Set([
  "__tests__",
  "actions",
  "api",
  "application",
  "constants",
  "context",
  "display",
  "helpers",
  "hooks",
  "infrastructure",
  "lib",
  "models",
  "queries",
  "services",
  "test",
  "tests",
  "types",
]);

/* Folders whose files stay free of Next.js, React and platform code. */
const pureFolderNames = new Set(["data", "domain", "utils"]);
const clientFactoryNames = new Set([
  "createPublicSupabaseClient",
  "createServerSupabaseClient",
]);

/* Product modules whose features must not reach into each other. */
const featureBoundaryModules = new Set(["codex", "mainline"]);
/*
 * Feature families: each child is its own feature, and the family's
 * `shared` child is the one place its siblings (and other features) share.
 */
const featureFamilies = new Set(["mainline/plays"]);

const normalizePath = (value) => value.split(path.sep).join("/");
const startsWithSegments = (segments, prefix) =>
  prefix.every((segment, index) => segments[index] === segment);

function getPlayHubLeafView(segments) {
  const candidate = segments[mainlinePlayHubViewsPrefix.length + 1];

  /* `types` is the view's types.ts, imported without its extension. */
  if (
    !candidate ||
    candidate === "types" ||
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

/*
 * The feature an import path belongs to, as { key, shared }: `shared` marks a
 * family's shared child (or a file at the family root), which any feature of
 * the module may use. Null outside a boundary module's features.
 */
function getModuleFeature(segments) {
  const [area, moduleName, root, featureName, child] = segments;

  if (
    area !== "modules" ||
    !featureBoundaryModules.has(moduleName) ||
    root !== "features" ||
    !featureName ||
    sourceExtensions.has(path.extname(featureName))
  ) {
    return null;
  }

  if (!featureFamilies.has(`${moduleName}/${featureName}`)) {
    return { key: `${moduleName}/${featureName}`, shared: false };
  }

  if (
    !child ||
    child === "shared" ||
    sourceExtensions.has(path.extname(child))
  ) {
    return { key: `${moduleName}/${featureName}/shared`, shared: true };
  }

  return { key: `${moduleName}/${featureName}/${child}`, shared: false };
}

function crossesFeatureBoundary(sourceSegments, targetSegments) {
  const source = getModuleFeature(sourceSegments);
  const target = getModuleFeature(targetSegments);

  return Boolean(
    source && target && !target.shared && source.key !== target.key,
  );
}

function verifyFeatureBoundaryFixtures() {
  const fixtures = [
    {
      source: "modules/mainline/features/home/sections/home-band-section.tsx",
      target: "modules/mainline/features/plays/new/components/partner-cast.tsx",
      violates: true,
    },
    {
      source: "modules/mainline/features/plays/new/components/wizard.tsx",
      target: "modules/mainline/features/plays/browse/types.ts",
      violates: true,
    },
    {
      source: "modules/mainline/features/plays/shared/server/reader.ts",
      target: "modules/mainline/features/plays/browse/types.ts",
      violates: true,
    },
    {
      source: "modules/mainline/features/stats/server/stats-reader.ts",
      target: "modules/mainline/features/plans/types.ts",
      violates: true,
    },
    {
      source: "modules/mainline/features/home/server/home-page-query.ts",
      target: "modules/mainline/features/plays/shared/server/reader.ts",
      violates: false,
    },
    {
      source: "modules/mainline/features/plays/hub/views/team/team-roster.tsx",
      target: "modules/mainline/features/plays/hub/data/play-hub-mappers.ts",
      violates: false,
    },
    {
      source: "modules/mainline/public-codex.tsx",
      target: "modules/mainline/features/plays/browse/server/reader.ts",
      violates: false,
    },
    {
      source: "modules/reference/features/games/types.ts",
      target: "modules/reference/features/pokemon/types.ts",
      violates: false,
    },
  ];

  for (const fixture of fixtures) {
    const actual = crossesFeatureBoundary(
      fixture.source.split("/"),
      fixture.target.split("/"),
    );

    if (actual !== fixture.violates) {
      throw new Error(
        `Feature boundary fixture failed: ${fixture.source} -> ${fixture.target}`,
      );
    }
  }
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

/*
 * Why a folder under src/modules or src/features breaks the closed folder
 * vocabulary, or null when it fits. `segments` is its path below src.
 */
function getFolderViolation(segments) {
  const name = segments.at(-1);
  const parent = segments.at(-2);

  if (!/^[a-z0-9]+(-[a-z0-9]+)*$/.test(name)) {
    return "folder names are kebab-case";
  }

  if (retiredFolderNames.has(name)) {
    return `\`${name}/\` is not in the folder vocabulary; use client/, server/, data/, utils/, a types.ts file, or keep tests beside their file`;
  }

  const isPlaced = placedFolderNames.get(name);

  if (isPlaced && !isPlaced(segments)) {
    return `\`${name}/\` is reserved for one place in the folder vocabulary`;
  }

  if (flatFolderNames.has(parent)) {
    return `\`${parent}/\` holds files only; move \`${name}/\` into sections/ or a feature folder`;
  }

  return null;
}

function verifyFolderVocabularyFixtures() {
  const fixtures = [
    ["modules/codex/features/pokemon/detail/hooks", true],
    ["modules/mainline/features/plays/hub/server/__tests__", true],
    ["modules/mainline/features/stats/types", true],
    ["modules/mainline/features/stats/domain", true],
    ["modules/mainline/features/stats/server/readers", true],
    ["modules/mainline/features/stats/views", true],
    ["modules/codex/features/games/shell", true],
    ["modules/mainline/features/stats/Sections", true],
    ["modules/reference/features/games/domain", false],
    ["modules/mainline/features/plays/hub/shell/top-section", false],
    ["modules/mainline/features/plays/hub/views/team/team-roster", false],
    ["modules/mainline/features/stats/sections/stats-time", false],
    ["modules/reference/features/pokemon/styles", false],
    ["features/app-shell/components/navigation", false],
  ];

  for (const [folder, violates] of fixtures) {
    if (Boolean(getFolderViolation(folder.split("/"))) !== violates) {
      throw new Error(`Folder vocabulary fixture failed: ${folder}`);
    }
  }
}

async function collectFolderViolations(directory) {
  const entries = await readdir(directory, { withFileTypes: true });
  const violations = [];

  for (const entry of entries) {
    if (!entry.isDirectory()) {
      continue;
    }

    const entryPath = path.join(directory, entry.name);
    const segments = normalizePath(path.relative(sourceRoot, entryPath)).split(
      "/",
    );
    const violation = getFolderViolation(segments);

    if (violation) {
      violations.push(
        `${normalizePath(path.relative(projectRoot, entryPath))}: ${violation}`,
      );
    }

    violations.push(...(await collectFolderViolations(entryPath)));
  }

  return violations;
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

  const playHubPrefix = mainlinePlayHubViewsPrefix.slice(0, -1);

  if (
    sourceArea === "modules" &&
    startsWithSegments(targetSegments, playHubPrefix) &&
    !startsWithSegments(importerSegments, playHubPrefix) &&
    !/^public-[^/]+$/.test(importerSegments.slice(2).join("/"))
  ) {
    addImportViolation(
      violations,
      normalizePath(path.relative(projectRoot, importerPath)),
      "only the Play Hub and Mainline's public entries may use Play Hub internals; share code through plays/shared or mainline/shared",
      specifier,
    );
  }

  /* Play Hub targets are already covered by the rule above. */
  if (
    !startsWithSegments(targetSegments, playHubPrefix) &&
    crossesFeatureBoundary(importerSegments, targetSegments)
  ) {
    addImportViolation(
      violations,
      normalizePath(path.relative(projectRoot, importerPath)),
      "features must not import a sibling feature's internals; move shared code to the family's shared folder or the module's shared folder",
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

  const fileName = segments.at(-1) ?? "";
  const isPortableServerFile =
    segments.at(-2) === "server" &&
    /-(reader|loaders|command|commands|repository|writer)\.ts$/.test(fileName);
  const isPureFile =
    ["modules", "features"].includes(segments[0]) &&
    segments.some((segment) => pureFolderNames.has(segment)) &&
    !/\.test\.tsx?$/.test(fileName);

  for (const statement of sourceFile.statements) {
    if (
      !ts.isImportDeclaration(statement) ||
      !ts.isStringLiteral(statement.moduleSpecifier) ||
      statement.importClause?.isTypeOnly
    ) {
      continue;
    }

    const specifier = statement.moduleSpecifier.text;
    const namedBindings = statement.importClause?.namedBindings;
    const runtimeNames =
      namedBindings && ts.isNamedImports(namedBindings)
        ? namedBindings.elements
            .filter((element) => !element.isTypeOnly)
            .map((element) => (element.propertyName ?? element.name).text)
        : [];
    const hasRuntimeImport =
      !statement.importClause ||
      Boolean(statement.importClause.name) ||
      (namedBindings && !ts.isNamedImports(namedBindings)) ||
      runtimeNames.length > 0;

    if (
      isPortableServerFile &&
      runtimeNames.some((name) => clientFactoryNames.has(name))
    ) {
      addImportViolation(
        violations,
        normalizePath(path.relative(projectRoot, filePath)),
        "readers, loaders, commands, repositories and writers take their Supabase client as a parameter; create it in the query or Server Action",
        specifier,
      );
    }

    if (
      isPureFile &&
      hasRuntimeImport &&
      /^(next|react|react-dom)(\/|$)|^@\/platform(\/|$)/.test(specifier)
    ) {
      addImportViolation(
        violations,
        normalizePath(path.relative(projectRoot, filePath)),
        "data/, domain/ and utils/ stay pure: no runtime imports from Next.js, React or src/platform",
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
verifyFeatureBoundaryFixtures();
verifyFolderVocabularyFixtures();

const sourceFiles = await collectSourceFiles(sourceRoot);
const folderViolations = (
  await Promise.all(
    ["modules", "features"].map((area) =>
      collectFolderViolations(path.join(sourceRoot, area)),
    ),
  )
).flat();
const violations = [
  ...folderViolations,
  ...(await Promise.all(sourceFiles.map(checkFile))).flat(),
].sort();

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
