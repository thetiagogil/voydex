import {
  addCompositeDuplicateErrors,
  assertScopedContiguousSortOrder,
  mapRowsByColumn,
  relative,
} from "../core.mjs";
import {
  allowedGamePlatformReleaseKinds,
  expectedGamePlatformSlugs,
} from "../expectations.mjs";

export function assertVersionGroupRows(context, tableRows) {
  const rows = tableRows.get("reference.version_groups") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const versionGroupsById = mapRowsByColumn(rows, "id");
  addCompositeDuplicateErrors(
    context,
    "reference.version_groups",
    rows,
    "generation_id/sort_order",
    (row) => `${row.generation_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "reference.version_groups",
    rows,
    "generation_id",
    (row) => row.generation_id,
  );
  for (const { row, filePath } of rows) {
    if (!generationIds.has(row.generation_id)) {
      context.errors.push(
        `${relative(filePath)}: reference.version_groups.generation_id ${row.generation_id} is not seeded.`,
      );
    }
    if (row.parent_version_group_id === null) continue;
    const parent = versionGroupsById.get(row.parent_version_group_id);
    if (!parent) {
      context.errors.push(
        `${relative(filePath)}: version group ${row.slug} references unseeded parent_version_group_id ${row.parent_version_group_id}.`,
      );
      continue;
    }
    if (parent.id === row.id) {
      context.errors.push(
        `${relative(filePath)}: version group ${row.slug} cannot parent itself.`,
      );
    }
    if (parent.generation_id !== row.generation_id) {
      context.errors.push(
        `${relative(filePath)}: version group ${row.slug} parent must be in generation ${row.generation_id}, got ${parent.generation_id}.`,
      );
    }
  }
}

export function assertGameRows(context, tableRows) {
  const rows = tableRows.get("reference.games") ?? [];
  const productFamiliesById = mapRowsByColumn(
    tableRows.get("reference.product_families") ?? [],
    "id",
  );
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const regionIds = new Set(
    (tableRows.get("reference.regions") ?? []).map(({ row }) => row.id),
  );
  const gameTypeIds = new Set(
    (tableRows.get("reference.game_types") ?? []).map(({ row }) => row.id),
  );
  const versionGroupsById = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  addCompositeDuplicateErrors(
    context,
    "reference.games",
    rows,
    "version_group_id/sort_order",
    (row) => `${row.version_group_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "reference.games",
    rows,
    "version_group_id",
    (row) => row.version_group_id,
  );
  for (const { row, filePath } of rows) {
    const productFamily = productFamiliesById.get(row.product_family_id);
    if (!productFamily) {
      context.errors.push(
        `${relative(filePath)}: game ${row.slug} references unseeded product_family_id ${row.product_family_id}.`,
      );
    } else if (productFamily.slug !== "mainline") {
      context.errors.push(
        `${relative(filePath)}: current seeded game ${row.slug} must belong to mainline product family, got ${productFamily.slug}.`,
      );
    }
    if (!generationIds.has(row.generation_id)) {
      context.errors.push(
        `${relative(filePath)}: reference.games.generation_id ${row.generation_id} is not seeded.`,
      );
    }
    if (!regionIds.has(row.region_id)) {
      context.errors.push(
        `${relative(filePath)}: game ${row.slug} references unseeded region_id ${row.region_id}.`,
      );
    }
    if (!gameTypeIds.has(row.game_type_id)) {
      context.errors.push(
        `${relative(filePath)}: game ${row.slug} references unseeded game_type_id ${row.game_type_id}.`,
      );
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      context.errors.push(
        `${relative(filePath)}: game ${row.slug} references unseeded version_group_id ${row.version_group_id}.`,
      );
      continue;
    }
    if (versionGroup.generation_id !== row.generation_id) {
      context.errors.push(
        `${relative(filePath)}: game ${row.slug} generation_id ${row.generation_id} does not match version group ${versionGroup.slug} generation_id ${versionGroup.generation_id}.`,
      );
    }
  }
}

export function assertGameContentScopeRows(context, tableRows) {
  const rows = tableRows.get("reference.game_content_scopes") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const gamesById = mapRowsByColumn(games, "id");
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const versionGroupsById = mapRowsByColumn(versionGroups, "id");
  const scopesByGame = new Map();
  const scopeKeys = new Set();
  addCompositeDuplicateErrors(
    context,
    "reference.game_content_scopes",
    rows,
    "game_id/version_group_id",
    (row) => `${row.game_id}/${row.version_group_id}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.game_content_scopes",
    rows,
    "game_id/sort_order",
    (row) => `${row.game_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "reference.game_content_scopes",
    rows,
    "game_id",
    (row) => row.game_id,
  );
  for (const { row, filePath } of rows) {
    scopeKeys.add(`${row.game_id}/${row.version_group_id}`);
    if (!scopesByGame.has(row.game_id)) scopesByGame.set(row.game_id, []);
    scopesByGame.get(row.game_id).push(row);
    const game = gamesById.get(row.game_id);
    if (!game) {
      context.errors.push(
        `${relative(filePath)}: game content scope references unseeded game_id ${row.game_id}.`,
      );
      continue;
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      context.errors.push(
        `${relative(filePath)}: game content scope for game_id ${row.game_id} references unseeded version_group_id ${row.version_group_id}.`,
      );
      continue;
    }
    if (
      row.is_base_scope === true &&
      row.version_group_id !== game.version_group_id
    ) {
      context.errors.push(
        `${relative(filePath)}: base content scope for game_id ${row.game_id} must use version_group_id ${game.version_group_id}, got ${row.version_group_id}.`,
      );
    }
    if (
      row.is_base_scope === false &&
      row.version_group_id === game.version_group_id
    ) {
      context.errors.push(
        `${relative(filePath)}: game_id ${row.game_id} base version_group_id ${row.version_group_id} must be marked as base.`,
      );
    }
    if (
      row.is_base_scope === false &&
      versionGroup.parent_version_group_id !== game.version_group_id
    ) {
      context.errors.push(
        `${relative(filePath)}: optional content scope ${versionGroup.slug} for game_id ${row.game_id} must be a child of base version_group_id ${game.version_group_id}.`,
      );
    }
  }
  for (const { row: game, filePath } of games) {
    const gameScopes = scopesByGame.get(game.id) ?? [];
    const baseScopes = gameScopes.filter(
      (scope) => scope.is_base_scope === true,
    );
    if (baseScopes.length !== 1) {
      context.errors.push(
        `${relative(filePath)}: game ${game.slug} must have exactly one base content scope, got ${baseScopes.length}.`,
      );
    }
  }
  const gamesByBaseVersionGroup = new Map();
  for (const { row: game } of games) {
    if (!gamesByBaseVersionGroup.has(game.version_group_id)) {
      gamesByBaseVersionGroup.set(game.version_group_id, []);
    }
    gamesByBaseVersionGroup.get(game.version_group_id).push(game);
  }
  for (const { row: versionGroup, filePath } of versionGroups) {
    if (versionGroup.parent_version_group_id === null) continue;
    const parentGames =
      gamesByBaseVersionGroup.get(versionGroup.parent_version_group_id) ?? [];
    for (const game of parentGames) {
      if (!scopeKeys.has(`${game.id}/${versionGroup.id}`)) {
        context.errors.push(
          `${relative(filePath)}: optional version group ${versionGroup.slug} must be mapped to game ${game.slug}.`,
        );
      }
    }
  }
}

export function assertContentScopeDependencyRows(context, tableRows) {
  const rows = tableRows.get("reference.content_scope_dependencies") ?? [];
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const versionGroupsById = mapRowsByColumn(versionGroups, "id");
  const dependencyKinds = new Set(["required"]);
  const dependenciesByVersionGroup = new Map();
  addCompositeDuplicateErrors(
    context,
    "reference.content_scope_dependencies",
    rows,
    "version_group_id/required_version_group_id",
    (row) => `${row.version_group_id}/${row.required_version_group_id}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.content_scope_dependencies",
    rows,
    "version_group_id/sort_order",
    (row) => `${row.version_group_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "reference.content_scope_dependencies",
    rows,
    "version_group_id",
    (row) => row.version_group_id,
  );
  for (const { row, filePath } of rows) {
    if (!dependencyKinds.has(row.dependency_kind)) {
      context.errors.push(
        `${relative(filePath)}: content scope dependency ${row.version_group_id}/${row.required_version_group_id} has unsupported dependency_kind ${row.dependency_kind}.`,
      );
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    const requiredVersionGroup = versionGroupsById.get(
      row.required_version_group_id,
    );
    if (!versionGroup) {
      context.errors.push(
        `${relative(filePath)}: content scope dependency references unseeded version_group_id ${row.version_group_id}.`,
      );
      continue;
    }
    if (!requiredVersionGroup) {
      context.errors.push(
        `${relative(filePath)}: content scope dependency references unseeded required_version_group_id ${row.required_version_group_id}.`,
      );
      continue;
    }
    if (versionGroup.id === requiredVersionGroup.id) {
      context.errors.push(
        `${relative(filePath)}: content scope dependency ${versionGroup.slug} cannot require itself.`,
      );
    }
    if (versionGroup.generation_id !== requiredVersionGroup.generation_id) {
      context.errors.push(
        `${relative(filePath)}: content scope dependency ${versionGroup.slug} and ${requiredVersionGroup.slug} must be in the same generation.`,
      );
    }
    if (versionGroup.parent_version_group_id === null) {
      context.errors.push(
        `${relative(filePath)}: base version group ${versionGroup.slug} should not require optional content scopes.`,
      );
    }
    if (
      requiredVersionGroup.parent_version_group_id !==
      versionGroup.parent_version_group_id
    ) {
      context.errors.push(
        `${relative(filePath)}: content scope dependency ${versionGroup.slug} must require a sibling optional content scope with the same base parent.`,
      );
    }
    if (!dependenciesByVersionGroup.has(row.version_group_id)) {
      dependenciesByVersionGroup.set(row.version_group_id, []);
    }
    dependenciesByVersionGroup
      .get(row.version_group_id)
      .push(row.required_version_group_id);
  }
  const visiting = new Set();
  const visited = new Set();
  const visit = (versionGroupId, pathIds = []) => {
    if (visiting.has(versionGroupId)) {
      context.errors.push(
        `reference.content_scope_dependencies: dependency cycle detected: ${[...pathIds, versionGroupId].join(" -> ")}.`,
      );
      return;
    }
    if (visited.has(versionGroupId)) return;
    visiting.add(versionGroupId);
    for (const requiredVersionGroupId of dependenciesByVersionGroup.get(
      versionGroupId,
    ) ?? []) {
      visit(requiredVersionGroupId, [...pathIds, versionGroupId]);
    }
    visiting.delete(versionGroupId);
    visited.add(versionGroupId);
  };
  for (const versionGroupId of dependenciesByVersionGroup.keys()) {
    visit(versionGroupId);
  }
}

export function assertGamePlatformRows(context, tableRows) {
  const rows = tableRows.get("reference.game_platforms") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const gamesById = mapRowsByColumn(games, "id");
  const platformRows = tableRows.get("reference.platforms") ?? [];
  const platformsById = mapRowsByColumn(platformRows, "id");
  const platformsBySlug = mapRowsByColumn(platformRows, "slug");
  const gamePlatformRows = new Map();
  addCompositeDuplicateErrors(
    context,
    "reference.game_platforms",
    rows,
    "game_id/platform_id",
    (row) => `${row.game_id}/${row.platform_id}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.game_platforms",
    rows,
    "game_id/sort_order",
    (row) => `${row.game_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "reference.game_platforms",
    rows,
    "game_id",
    (row) => row.game_id,
  );
  for (const { row, filePath } of rows) {
    if (!gamesById.has(row.game_id)) {
      context.errors.push(
        `${relative(filePath)}: game platform references unseeded game_id ${row.game_id}.`,
      );
    }
    if (!platformsById.has(row.platform_id)) {
      context.errors.push(
        `${relative(filePath)}: game platform for game_id ${row.game_id} references unseeded platform_id ${row.platform_id}.`,
      );
    }
    if (!allowedGamePlatformReleaseKinds.has(row.release_kind)) {
      context.errors.push(
        `${relative(filePath)}: game platform for game_id ${row.game_id} has invalid release_kind ${row.release_kind}.`,
      );
    }
    if (!gamePlatformRows.has(row.game_id))
      gamePlatformRows.set(row.game_id, []);
    gamePlatformRows.get(row.game_id).push(row);
  }
  for (const { row: game, filePath } of games) {
    const platformMappings = gamePlatformRows.get(game.id) ?? [];
    const nativeMappings = platformMappings.filter(
      (row) => row.release_kind === "native",
    );
    const expectedPlatformSlugs = expectedGamePlatformSlugs[game.slug];
    if (platformMappings.length === 0) {
      context.errors.push(
        `${relative(filePath)}: game ${game.slug} must have at least one platform mapping.`,
      );
    }
    if (nativeMappings.length !== 1) {
      context.errors.push(
        `${relative(filePath)}: game ${game.slug} must have exactly one native platform mapping, got ${nativeMappings.length}.`,
      );
    }
    if (!expectedPlatformSlugs) {
      context.errors.push(
        `${relative(filePath)}: game ${game.slug} has no exact platform expectation.`,
      );
      continue;
    }
    const actualPlatformSlugs = platformMappings
      .sort((a, b) => a.sort_order - b.sort_order)
      .map(
        (row) =>
          platformsById.get(row.platform_id)?.slug ??
          `unknown-platform-${row.platform_id}`,
      );
    if (actualPlatformSlugs.join("|") !== expectedPlatformSlugs.join("|")) {
      context.errors.push(
        `reference.game_platforms: game ${game.slug} expected platforms [${expectedPlatformSlugs.join(", ")}], got [${actualPlatformSlugs.join(", ")}].`,
      );
    }
  }
  for (const [gameSlug, platformSlugs] of Object.entries(
    expectedGamePlatformSlugs,
  )) {
    if (![...gamesById.values()].some((game) => game.slug === gameSlug)) {
      context.errors.push(
        `reference.game_platforms: platform expectation references unseeded game ${gameSlug}.`,
      );
    }
    for (const platformSlug of platformSlugs) {
      if (!platformsBySlug.has(platformSlug)) {
        context.errors.push(
          `reference.game_platforms: platform expectation for game ${gameSlug} references unseeded platform ${platformSlug}.`,
        );
      }
    }
  }
}
