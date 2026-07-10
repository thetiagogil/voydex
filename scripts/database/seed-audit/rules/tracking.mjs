import {
  addCompositeDuplicateErrors,
  assertScopedContiguousSortOrder,
  mapParsedRowsByColumn,
  mapRowsByColumn,
  relative,
} from "../core.mjs";

export function assertTerminalStatuses(context, rows) {
  const terminalBySlug = new Map(
    rows.map(({ row }) => [row.slug, row.is_terminal]),
  );
  for (const slug of ["completed", "abandoned"]) {
    if (terminalBySlug.get(slug) !== true) {
      context.errors.push(
        `gameplay.mainline_play_statuses: ${slug} must be terminal.`,
      );
    }
  }
  for (const slug of ["not_started", "playing", "paused"]) {
    if (terminalBySlug.get(slug) !== false) {
      context.errors.push(
        `gameplay.mainline_play_statuses: ${slug} must be non-terminal.`,
      );
    }
  }
}

export function assertTrackingCoreRows(context, tableRows) {
  const versionGroupsById = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  const typesById = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "id",
  );
  const speciesById = mapRowsByColumn(
    tableRows.get("reference.pokemon_species") ?? [],
    "id",
  );
  const formKeys = new Set(
    (tableRows.get("reference.pokemon_forms") ?? []).map(
      ({ row }) => `${row.species_id}/${row.id}`,
    ),
  );
  const gameScopeRows = tableRows.get("reference.game_content_scopes") ?? [];
  const gameScopeKeys = new Set(
    gameScopeRows.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const snapshotPoliciesById = mapRowsByColumn(
    tableRows.get("tracking.mainline_snapshot_policies") ?? [],
    "id",
  );
  const milestoneTypesById = mapRowsByColumn(
    tableRows.get("tracking.mainline_milestone_types") ?? [],
    "id",
  );
  const milestonePrerequisiteKindsById = mapRowsByColumn(
    tableRows.get("tracking.mainline_milestone_prerequisite_kinds") ?? [],
    "id",
  );
  const collectibleTypesById = mapRowsByColumn(
    tableRows.get("tracking.mainline_collectible_types") ?? [],
    "id",
  );
  const categories = tableRows.get("tracking.mainline_categories") ?? [];
  const opponents = tableRows.get("tracking.mainline_opponents") ?? [];
  const badges = tableRows.get("tracking.mainline_badges") ?? [];
  const collectibles = tableRows.get("tracking.mainline_collectibles") ?? [];
  const collectibleEntries =
    tableRows.get("tracking.mainline_collectible_entries") ?? [];
  const milestones = tableRows.get("tracking.mainline_milestones") ?? [];
  const pokemonRefs =
    tableRows.get("tracking.mainline_milestone_pokemon_refs") ?? [];
  const opponentRefs =
    tableRows.get("tracking.mainline_milestone_opponent_refs") ?? [];
  const badgeRefs =
    tableRows.get("tracking.mainline_milestone_badge_refs") ?? [];
  const collectibleRefs =
    tableRows.get("tracking.mainline_milestone_collectible_refs") ?? [];
  const decisionOptions =
    tableRows.get("tracking.mainline_milestone_decision_options") ?? [];
  const prerequisites =
    tableRows.get("tracking.mainline_milestone_prerequisites") ?? [];
  const categoriesByKey = new Map(
    categories.map(({ row }) => [`${row.version_group_id}/${row.id}`, row]),
  );
  const opponentsById = mapParsedRowsByColumn(opponents, "id");
  const badgesById = mapParsedRowsByColumn(badges, "id");
  const collectiblesById = mapParsedRowsByColumn(collectibles, "id");
  const collectibleEntryKeys = new Set(
    collectibleEntries.map(({ row }) => `${row.collectible_id}/${row.id}`),
  );
  const milestonesById = mapParsedRowsByColumn(milestones, "id");
  const scopeKey = (row) =>
    `${row.version_group_id}/${row.game_id ?? "version-group"}`;
  const scopedSlugKey = (row) => `${scopeKey(row)}/${row.slug}`;
  const scopedSortKey = (row) => `${scopeKey(row)}/${row.sort_order}`;
  const milestoneCategorySortKey = (row) =>
    `${scopeKey(row)}/${row.category_id}/${row.sort_order}`;
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_categories",
    categories,
    "version_group_id/slug",
    (row) => `${row.version_group_id}/${row.slug}`,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_categories",
    categories,
    "version_group_id/sort_order",
    (row) => `${row.version_group_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "tracking.mainline_categories",
    categories,
    "version_group_id",
    (row) => row.version_group_id,
  );
  for (const { row, filePath } of categories) {
    if (!versionGroupsById.has(row.version_group_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_categories row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (!["story", "collectible"].includes(row.category_kind)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_categories row ${row.id} has unsupported category_kind ${row.category_kind}.`,
      );
    }
  }
  for (const [tableName, rows] of [
    ["tracking.mainline_opponents", opponents],
    ["tracking.mainline_badges", badges],
  ]) {
    addCompositeDuplicateErrors(
      context,
      tableName,
      rows,
      "version_group/game/slug",
      scopedSlugKey,
    );
    addCompositeDuplicateErrors(
      context,
      tableName,
      rows,
      "version_group/game/sort_order",
      scopedSortKey,
    );
  }
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestones",
    milestones,
    "version_group/game/slug",
    scopedSlugKey,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestones",
    milestones,
    "version_group/game/category/sort_order",
    milestoneCategorySortKey,
  );
  for (const { row, filePath } of opponents) {
    if (!versionGroupsById.has(row.version_group_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_opponents row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (
      row.game_id !== null &&
      !gameScopeKeys.has(`${row.game_id}/${row.version_group_id}`)
    ) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_opponents row ${row.id} references game_id ${row.game_id} outside version_group_id ${row.version_group_id}.`,
      );
    }
    for (const column of ["primary_type_id", "secondary_type_id"]) {
      if (row[column] !== null && !typesById.has(row[column])) {
        context.errors.push(
          `${relative(filePath)}: tracking.mainline_opponents row ${row.id} references unseeded ${column} ${row[column]}.`,
        );
      }
    }
  }
  for (const { row, filePath } of badges) {
    if (!versionGroupsById.has(row.version_group_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_badges row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (
      row.game_id !== null &&
      !gameScopeKeys.has(`${row.game_id}/${row.version_group_id}`)
    ) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_badges row ${row.id} references game_id ${row.game_id} outside version_group_id ${row.version_group_id}.`,
      );
    }
    if (row.type_id !== null && !typesById.has(row.type_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_badges row ${row.id} references unseeded type_id ${row.type_id}.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_collectibles",
    collectibles,
    "version_group/game/slug",
    scopedSlugKey,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_collectibles",
    collectibles,
    "version_group/game/sort_order",
    scopedSortKey,
  );
  assertScopedContiguousSortOrder(
    context,
    "tracking.mainline_collectibles",
    collectibles,
    "version_group/game",
    scopeKey,
  );
  for (const { row, filePath } of collectibles) {
    if (!versionGroupsById.has(row.version_group_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_collectibles row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (
      row.game_id !== null &&
      !gameScopeKeys.has(`${row.game_id}/${row.version_group_id}`)
    ) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_collectibles row ${row.id} references game_id ${row.game_id} outside version_group_id ${row.version_group_id}.`,
      );
    }
    if (!collectibleTypesById.has(row.collectible_type_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_collectibles row ${row.id} references unseeded collectible_type_id ${row.collectible_type_id}.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_collectible_entries",
    collectibleEntries,
    "collectible_id/slug",
    (row) => `${row.collectible_id}/${row.slug}`,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_collectible_entries",
    collectibleEntries,
    "collectible_id/sort_order",
    (row) => `${row.collectible_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "tracking.mainline_collectible_entries",
    collectibleEntries,
    "collectible_id",
    (row) => row.collectible_id,
  );
  const entryCountByCollectibleId = new Map();
  for (const { row, filePath } of collectibleEntries) {
    const collectible = collectiblesById.get(row.collectible_id)?.row;
    if (!collectible) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_collectible_entries row ${row.id} references unseeded collectible_id ${row.collectible_id}.`,
      );
    }
    entryCountByCollectibleId.set(
      row.collectible_id,
      (entryCountByCollectibleId.get(row.collectible_id) ?? 0) + 1,
    );
  }
  for (const { row, filePath } of collectibles) {
    const entryCount = entryCountByCollectibleId.get(row.id) ?? 0;
    if (
      row.total_count !== null &&
      entryCount > 0 &&
      row.total_count !== entryCount
    ) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_collectibles row ${row.id} total_count ${row.total_count} does not match ${entryCount} seeded entries.`,
      );
    }
  }
  for (const { row, filePath } of milestones) {
    if (!versionGroupsById.has(row.version_group_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (
      row.game_id !== null &&
      !gameScopeKeys.has(`${row.game_id}/${row.version_group_id}`)
    ) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references game_id ${row.game_id} outside version_group_id ${row.version_group_id}.`,
      );
    }
    if (!categoriesByKey.has(`${row.version_group_id}/${row.category_id}`)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded category_id ${row.category_id} for version_group_id ${row.version_group_id}.`,
      );
    }
    if (!milestoneTypesById.has(row.milestone_type_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded milestone_type_id ${row.milestone_type_id}.`,
      );
    }
    if (!snapshotPoliciesById.has(row.snapshot_policy_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded snapshot_policy_id ${row.snapshot_policy_id}.`,
      );
    }
    if (row.parent_milestone_id !== null) {
      const parent = milestonesById.get(row.parent_milestone_id)?.row;
      if (!parent) {
        context.errors.push(
          `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded parent_milestone_id ${row.parent_milestone_id}.`,
        );
      } else if (parent.version_group_id !== row.version_group_id) {
        context.errors.push(
          `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references parent_milestone_id ${row.parent_milestone_id} from a different version group.`,
        );
      }
    }
  }
  const gameIdsByVersionGroup = new Map();
  for (const { row } of gameScopeRows) {
    if (!gameIdsByVersionGroup.has(row.version_group_id))
      gameIdsByVersionGroup.set(row.version_group_id, new Set());
    gameIdsByVersionGroup.get(row.version_group_id).add(row.game_id);
  }
  const versionGroupIdsWithMilestones = new Set(
    milestones.map(({ row }) => row.version_group_id),
  );
  for (const versionGroupId of versionGroupIdsWithMilestones) {
    const gameIds = [
      ...(gameIdsByVersionGroup.get(versionGroupId) ?? new Set([null])),
    ];
    for (const gameId of gameIds) {
      const rowsForGame = milestones.filter(
        ({ row }) =>
          row.version_group_id === versionGroupId &&
          (row.game_id === null || row.game_id === gameId),
      );
      const rowsByCategory = new Map();
      for (const parsedRow of rowsForGame) {
        const categoryId = parsedRow.row.category_id;
        if (!rowsByCategory.has(categoryId)) rowsByCategory.set(categoryId, []);
        rowsByCategory.get(categoryId).push(parsedRow.row);
      }
      for (const [categoryId, categoryRows] of rowsByCategory.entries()) {
        const sortOrders = categoryRows
          .map((row) => Number(row.sort_order))
          .sort((a, b) => a - b);
        const uniqueSortOrders = new Set(sortOrders);
        if (uniqueSortOrders.size !== sortOrders.length) {
          context.errors.push(
            `tracking.mainline_milestones: version_group/game/category ${versionGroupId}/${gameId ?? "version-group"}/${categoryId} has duplicate final sort_order values [${sortOrders.join(", ")}].`,
          );
          continue;
        }
        for (let index = 0; index < sortOrders.length; index += 1) {
          if (sortOrders[index] !== index + 1) {
            context.errors.push(
              `tracking.mainline_milestones: version_group/game/category ${versionGroupId}/${gameId ?? "version-group"}/${categoryId} final sort_order must be contiguous from 1; got [${sortOrders.join(", ")}].`,
            );
            break;
          }
        }
      }
    }
  }
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_prerequisites",
    prerequisites,
    "milestone_id/prerequisite_milestone_id/prerequisite_kind_id",
    (row) =>
      `${row.milestone_id}/${row.prerequisite_milestone_id}/${row.prerequisite_kind_id}`,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_prerequisites",
    prerequisites,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "tracking.mainline_milestone_prerequisites",
    prerequisites,
    "milestone_id",
    (row) => row.milestone_id,
  );
  for (const { row, filePath } of prerequisites) {
    const milestone = milestonesById.get(row.milestone_id)?.row;
    const prerequisite = milestonesById.get(row.prerequisite_milestone_id)?.row;
    if (!milestone) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} references unseeded milestone_id ${row.milestone_id}.`,
      );
    } else if (milestone.version_group_id !== row.version_group_id) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} has version_group_id ${row.version_group_id}, but milestone ${row.milestone_id} belongs to ${milestone.version_group_id}.`,
      );
    }
    if (!prerequisite) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} references unseeded prerequisite_milestone_id ${row.prerequisite_milestone_id}.`,
      );
    } else if (prerequisite.version_group_id !== row.version_group_id) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} has version_group_id ${row.version_group_id}, but prerequisite milestone ${row.prerequisite_milestone_id} belongs to ${prerequisite.version_group_id}.`,
      );
    }
    if (
      milestone &&
      prerequisite &&
      milestone.game_id !== null &&
      prerequisite.game_id !== null &&
      milestone.game_id !== prerequisite.game_id
    ) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} links game-specific milestones from different games.`,
      );
    }
    if (row.milestone_id === row.prerequisite_milestone_id) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} cannot reference itself.`,
      );
    }
    if (!milestonePrerequisiteKindsById.has(row.prerequisite_kind_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} references unseeded prerequisite_kind_id ${row.prerequisite_kind_id}.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_pokemon_refs",
    pokemonRefs,
    "milestone_id/species_id/form_id/relation_kind",
    (row) =>
      `${row.milestone_id}/${row.species_id}/${row.form_id ?? "species"}/${row.relation_kind}`,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_pokemon_refs",
    pokemonRefs,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "tracking.mainline_milestone_pokemon_refs",
    pokemonRefs,
    "milestone_id",
    (row) => row.milestone_id,
  );
  for (const { row, filePath } of pokemonRefs) {
    if (!milestonesById.has(row.milestone_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_pokemon_refs row ${row.milestone_id}/${row.species_id}/${row.form_id ?? "species"} references unseeded milestone_id ${row.milestone_id}.`,
      );
    }
    if (!speciesById.has(row.species_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_pokemon_refs row ${row.milestone_id}/${row.species_id}/${row.form_id ?? "species"} references unseeded species_id ${row.species_id}.`,
      );
    }
    if (
      row.form_id !== null &&
      !formKeys.has(`${row.species_id}/${row.form_id}`)
    ) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_pokemon_refs row ${row.milestone_id}/${row.species_id}/${row.form_id} references an unseeded or mismatched species_id/form_id pair.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_opponent_refs",
    opponentRefs,
    "milestone_id/opponent_id/version_group_id/relation_kind",
    (row) =>
      `${row.milestone_id}/${row.opponent_id}/${row.version_group_id}/${row.relation_kind}`,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_opponent_refs",
    opponentRefs,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "tracking.mainline_milestone_opponent_refs",
    opponentRefs,
    "milestone_id",
    (row) => row.milestone_id,
  );
  for (const { row, filePath } of opponentRefs) {
    const milestone = milestonesById.get(row.milestone_id)?.row;
    const opponent = opponentsById.get(row.opponent_id)?.row;
    if (!milestone) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_opponent_refs row ${row.milestone_id}/${row.opponent_id} references unseeded milestone_id ${row.milestone_id}.`,
      );
    } else if (milestone.version_group_id !== row.version_group_id) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_opponent_refs row ${row.milestone_id}/${row.opponent_id} has version_group_id ${row.version_group_id}, but milestone ${row.milestone_id} belongs to ${milestone.version_group_id}.`,
      );
    }
    if (!opponent) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_opponent_refs row ${row.milestone_id}/${row.opponent_id} references unseeded opponent_id ${row.opponent_id}.`,
      );
    } else if (opponent.version_group_id !== row.version_group_id) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_opponent_refs row ${row.milestone_id}/${row.opponent_id} has version_group_id ${row.version_group_id}, but opponent ${row.opponent_id} belongs to ${opponent.version_group_id}.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_badge_refs",
    badgeRefs,
    "milestone_id/badge_id/version_group_id/relation_kind",
    (row) =>
      `${row.milestone_id}/${row.badge_id}/${row.version_group_id}/${row.relation_kind}`,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_badge_refs",
    badgeRefs,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "tracking.mainline_milestone_badge_refs",
    badgeRefs,
    "milestone_id",
    (row) => row.milestone_id,
  );
  for (const { row, filePath } of badgeRefs) {
    const milestone = milestonesById.get(row.milestone_id)?.row;
    const badge = badgesById.get(row.badge_id)?.row;
    if (!milestone) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_badge_refs row ${row.milestone_id}/${row.badge_id} references unseeded milestone_id ${row.milestone_id}.`,
      );
    } else if (milestone.version_group_id !== row.version_group_id) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_badge_refs row ${row.milestone_id}/${row.badge_id} has version_group_id ${row.version_group_id}, but milestone ${row.milestone_id} belongs to ${milestone.version_group_id}.`,
      );
    }
    if (!badge) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_badge_refs row ${row.milestone_id}/${row.badge_id} references unseeded badge_id ${row.badge_id}.`,
      );
    } else if (badge.version_group_id !== row.version_group_id) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_badge_refs row ${row.milestone_id}/${row.badge_id} has version_group_id ${row.version_group_id}, but badge ${row.badge_id} belongs to ${badge.version_group_id}.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_collectible_refs",
    collectibleRefs,
    "milestone_id/collectible_id/collectible_entry_id/relation_kind",
    (row) =>
      `${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"}/${row.relation_kind}`,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_collectible_refs",
    collectibleRefs,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "tracking.mainline_milestone_collectible_refs",
    collectibleRefs,
    "milestone_id",
    (row) => row.milestone_id,
  );
  for (const { row, filePath } of collectibleRefs) {
    const milestone = milestonesById.get(row.milestone_id)?.row;
    const collectible = collectiblesById.get(row.collectible_id)?.row;
    if (!milestone) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"} references unseeded milestone_id ${row.milestone_id}.`,
      );
    } else if (milestone.version_group_id !== row.version_group_id) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"} has version_group_id ${row.version_group_id}, but milestone ${row.milestone_id} belongs to ${milestone.version_group_id}.`,
      );
    }
    if (!collectible) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"} references unseeded collectible_id ${row.collectible_id}.`,
      );
    } else if (collectible.version_group_id !== row.version_group_id) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"} has version_group_id ${row.version_group_id}, but collectible ${row.collectible_id} belongs to ${collectible.version_group_id}.`,
      );
    }
    if (
      row.collectible_entry_id !== null &&
      !collectibleEntryKeys.has(
        `${row.collectible_id}/${row.collectible_entry_id}`,
      )
    ) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id} references an unseeded or mismatched collectible_id/collectible_entry_id pair.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_decision_options",
    decisionOptions,
    "milestone_id/slug",
    (row) => `${row.milestone_id}/${row.slug}`,
  );
  addCompositeDuplicateErrors(
    context,
    "tracking.mainline_milestone_decision_options",
    decisionOptions,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "tracking.mainline_milestone_decision_options",
    decisionOptions,
    "milestone_id",
    (row) => row.milestone_id,
  );
  for (const { row, filePath } of decisionOptions) {
    if (!milestonesById.has(row.milestone_id)) {
      context.errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_decision_options row ${row.milestone_id}/${row.slug} references unseeded milestone_id ${row.milestone_id}.`,
      );
    }
  }
}
