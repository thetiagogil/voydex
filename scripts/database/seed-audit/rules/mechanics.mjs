import {
  addCompositeDuplicateErrors,
  assertContiguousSortOrder,
  mapRowsByColumn,
  relative,
} from "../core.mjs";
import {
  expectedKnownEvolutionMoveSlugs,
  expectedMoveGenerationCounts,
  expectedMoveKindCounts,
  expectedTypeMatchupRows,
  expectedZMoveSlugs,
} from "../expectations.mjs";

export function assertMoveRows(context, tableRows) {
  const moveRows = tableRows.get("reference.moves") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const moveKindIds = new Set(
    (tableRows.get("reference.move_kinds") ?? []).map(({ row }) => row.id),
  );
  const movesBySlug = mapRowsByColumn(moveRows, "slug");
  if (moveRows.length !== 935) {
    context.errors.push(
      `reference.moves: expected 935 scoped move rows, got ${moveRows.length}.`,
    );
  }
  assertContiguousSortOrder(context, "reference.moves", moveRows);
  const generationCounts = new Map();
  const kindCounts = new Map();
  for (const { row, filePath } of moveRows) {
    if (!generationIds.has(row.introduced_generation_id)) {
      context.errors.push(
        `${relative(filePath)}: move ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (!moveKindIds.has(row.move_kind_id)) {
      context.errors.push(
        `${relative(filePath)}: move ${row.slug} references unseeded move_kind_id ${row.move_kind_id}.`,
      );
    }
    generationCounts.set(
      row.introduced_generation_id,
      (generationCounts.get(row.introduced_generation_id) ?? 0) + 1,
    );
    kindCounts.set(
      row.move_kind_id,
      (kindCounts.get(row.move_kind_id) ?? 0) + 1,
    );
    if (row.slug.startsWith("g-max-")) {
      if (row.move_kind_id !== 4) {
        context.errors.push(
          `${relative(filePath)}: G-Max move ${row.slug} must use move_kind_id 4.`,
        );
      }
      if (row.id < 10001 || row.id > 10033) {
        context.errors.push(
          `${relative(filePath)}: G-Max move ${row.slug} must use reserved id range 10001-10033.`,
        );
      }
      if (row.external_id !== null) {
        context.errors.push(
          `${relative(filePath)}: G-Max move ${row.slug} must use null external_id because Bulbapedia has only local G-Max order.`,
        );
      }
    } else {
      if (row.id >= 10000) {
        context.errors.push(
          `${relative(filePath)}: non-G-Max move ${row.slug} must not use reserved G-Max id range.`,
        );
      }
      if (row.external_id !== row.id) {
        context.errors.push(
          `${relative(filePath)}: indexed move ${row.slug} external_id ${row.external_id} must match its source index id ${row.id}.`,
        );
      }
    }
    if (expectedZMoveSlugs.has(row.slug) && row.move_kind_id !== 2) {
      context.errors.push(
        `${relative(filePath)}: Z-Move ${row.slug} must use move_kind_id 2.`,
      );
    }
    if (row.slug.startsWith("max-") && row.move_kind_id !== 3) {
      context.errors.push(
        `${relative(filePath)}: Max move ${row.slug} must use move_kind_id 3.`,
      );
    }
    if (
      !expectedZMoveSlugs.has(row.slug) &&
      !row.slug.startsWith("max-") &&
      !row.slug.startsWith("g-max-") &&
      row.move_kind_id !== 1
    ) {
      context.errors.push(
        `${relative(filePath)}: regular move ${row.slug} must use move_kind_id 1.`,
      );
    }
  }
  for (const [
    generationId,
    expectedCount,
  ] of expectedMoveGenerationCounts.entries()) {
    const actualCount = generationCounts.get(generationId) ?? 0;
    if (actualCount !== expectedCount) {
      context.errors.push(
        `reference.moves: generation ${generationId} expected ${expectedCount} moves, got ${actualCount}.`,
      );
    }
  }
  for (const [moveKindId, expectedCount] of expectedMoveKindCounts.entries()) {
    const actualCount = kindCounts.get(moveKindId) ?? 0;
    if (actualCount !== expectedCount) {
      context.errors.push(
        `reference.moves: move_kind_id ${moveKindId} expected ${expectedCount} moves, got ${actualCount}.`,
      );
    }
  }
  for (const slug of expectedZMoveSlugs) {
    if (!movesBySlug.has(slug)) {
      context.errors.push(`reference.moves: missing Z-Move ${slug}.`);
    }
  }
  for (const slug of expectedKnownEvolutionMoveSlugs) {
    const row = movesBySlug.get(slug);
    if (!row) {
      context.errors.push(
        `reference.moves: missing known-move evolution dependency ${slug}.`,
      );
    } else if (row.move_kind_id !== 1) {
      context.errors.push(
        `reference.moves: known-move evolution dependency ${slug} must be a regular move.`,
      );
    }
  }
}

export function assertMoveAttributeRows(context, tableRows) {
  const attributeRows = tableRows.get("reference.move_attributes") ?? [];
  const moveRows = tableRows.get("reference.moves") ?? [];
  const movesById = mapRowsByColumn(moveRows, "id");
  const movesBySlug = mapRowsByColumn(moveRows, "slug");
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const typeIds = new Set(
    (tableRows.get("reference.types") ?? []).map(({ row }) => row.id),
  );
  const allowedDamageClasses = new Set([
    "physical",
    "special",
    "status",
    "variable",
  ]);
  const fixedPowerGmaxSlugs = new Set([
    "g-max-drum-solo",
    "g-max-fireball",
    "g-max-hydrosnipe",
  ]);
  const rowsByMoveId = new Map();
  if (attributeRows.length !== 1149) {
    context.errors.push(
      `reference.move_attributes: expected 1149 generation change-point rows, got ${attributeRows.length}.`,
    );
  }
  addCompositeDuplicateErrors(
    context,
    "reference.move_attributes",
    attributeRows,
    "move_id/generation_start_id",
    (row) => `${row.move_id}/${row.generation_start_id}`,
  );
  for (const { row, filePath } of attributeRows) {
    const move = movesById.get(row.move_id);
    if (!move) {
      context.errors.push(
        `${relative(filePath)}: move attribute references unseeded move_id ${row.move_id}.`,
      );
      continue;
    }
    if (!generationIds.has(row.generation_start_id)) {
      context.errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} references unseeded generation_start_id ${row.generation_start_id}.`,
      );
    }
    if (!typeIds.has(row.type_id)) {
      context.errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} references unseeded type_id ${row.type_id}.`,
      );
    }
    if (row.generation_start_id < move.introduced_generation_id) {
      context.errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} starts before the move was introduced.`,
      );
    }
    if (!allowedDamageClasses.has(row.damage_class)) {
      context.errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid damage_class ${row.damage_class}.`,
      );
    }
    if (
      row.power !== null &&
      (!Number.isInteger(row.power) || row.power < 0 || row.power > 300)
    ) {
      context.errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid power ${row.power}.`,
      );
    }
    if (
      row.accuracy !== null &&
      (!Number.isInteger(row.accuracy) ||
        row.accuracy < 1 ||
        row.accuracy > 100)
    ) {
      context.errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid accuracy ${row.accuracy}.`,
      );
    }
    if (
      row.pp !== null &&
      (!Number.isInteger(row.pp) || row.pp < 1 || row.pp > 64)
    ) {
      context.errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid pp ${row.pp}.`,
      );
    }
    if (
      !Number.isInteger(row.priority) ||
      row.priority < -7 ||
      row.priority > 7
    ) {
      context.errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid priority ${row.priority}.`,
      );
    }
    if (!rowsByMoveId.has(row.move_id)) rowsByMoveId.set(row.move_id, []);
    rowsByMoveId.get(row.move_id).push(row);
    const isCollapsedGenericZMove =
      move.move_kind_id === 2 && move.id >= 622 && move.id <= 656;
    if (isCollapsedGenericZMove) {
      if (
        row.damage_class !== "variable" ||
        row.power !== null ||
        row.accuracy !== null ||
        row.pp !== 1
      ) {
        context.errors.push(
          `${relative(filePath)}: collapsed generic Z-Move ${move.slug} must use variable class, null power/accuracy, and 1 PP.`,
        );
      }
    }
    if (move.move_kind_id === 3) {
      if (move.slug === "max-guard") {
        if (
          row.damage_class !== "status" ||
          row.power !== null ||
          row.accuracy !== null ||
          row.pp !== null ||
          row.priority !== 4
        ) {
          context.errors.push(
            `${relative(filePath)}: Max Guard must be status with null fixed values and priority 4.`,
          );
        }
      } else if (
        row.damage_class !== "variable" ||
        row.power !== null ||
        row.accuracy !== null ||
        row.pp !== null
      ) {
        context.errors.push(
          `${relative(filePath)}: damaging Max Move ${move.slug} must use variable class and null fixed power/accuracy/PP.`,
        );
      }
    }
    if (move.move_kind_id === 4) {
      const expectedPower = fixedPowerGmaxSlugs.has(move.slug) ? 160 : null;
      if (
        row.damage_class !== "variable" ||
        row.power !== expectedPower ||
        row.accuracy !== null ||
        row.pp !== null ||
        row.generation_start_id !== 8
      ) {
        context.errors.push(
          `${relative(filePath)}: G-Max Move ${move.slug} must use Gen 8 variable class, expected fixed power ${expectedPower ?? "NULL"}, and null accuracy/PP.`,
        );
      }
    }
    if (move.move_kind_id === 1 && row.damage_class === "variable") {
      context.errors.push(
        `${relative(filePath)}: regular move ${move.slug} must not use variable damage_class without a documented schema exception.`,
      );
    }
  }
  for (const { row: move } of moveRows) {
    const rows = rowsByMoveId.get(move.id) ?? [];
    if (rows.length === 0) {
      context.errors.push(
        `reference.move_attributes: missing attribute rows for move ${move.slug}.`,
      );
      continue;
    }
    const firstGeneration = Math.min(
      ...rows.map((row) => row.generation_start_id),
    );
    if (firstGeneration !== move.introduced_generation_id) {
      context.errors.push(
        `reference.move_attributes: move ${move.slug} first attribute generation expected ${move.introduced_generation_id}, got ${firstGeneration}.`,
      );
    }
  }
  const findAttribute = (moveSlug, generationStartId) => {
    const move = movesBySlug.get(moveSlug);
    if (!move) return null;
    return (
      (rowsByMoveId.get(move.id) ?? []).find(
        (row) => row.generation_start_id === generationStartId,
      ) ?? null
    );
  };
  const expectAttribute = (moveSlug, generationStartId, expected) => {
    const row = findAttribute(moveSlug, generationStartId);
    if (!row) {
      context.errors.push(
        `reference.move_attributes: missing ${moveSlug} generation ${generationStartId} sanity row.`,
      );
      return;
    }
    for (const [column, expectedValue] of Object.entries(expected)) {
      if (row[column] !== expectedValue) {
        context.errors.push(
          `reference.move_attributes: ${moveSlug} generation ${generationStartId} expected ${column} ${expectedValue ?? "NULL"}, got ${row[column] ?? "NULL"}.`,
        );
      }
    }
  };
  expectAttribute("karate-chop", 1, { type_id: 1, damage_class: "physical" });
  expectAttribute("karate-chop", 2, { type_id: 7, damage_class: "physical" });
  expectAttribute("gust", 1, { type_id: 1, damage_class: "physical" });
  expectAttribute("gust", 2, { type_id: 10, damage_class: "physical" });
  expectAttribute("gust", 4, { type_id: 10, damage_class: "special" });
  expectAttribute("bite", 1, { type_id: 1, damage_class: "physical" });
  expectAttribute("bite", 2, { type_id: 16, damage_class: "special" });
  expectAttribute("bite", 4, { type_id: 16, damage_class: "physical" });
  // A change row starts in the first generation that has the new value.
  expectAttribute("self-destruct", 2, { power: 200 });
  expectAttribute("razor-wind", 2, { accuracy: 100 });
  expectAttribute("low-kick", 3, { power: null, accuracy: 100 });
  expectAttribute("dig", 4, { power: 80, damage_class: "physical" });
  expectAttribute("tackle", 5, { power: 50, accuracy: 100 });
  expectAttribute("flamethrower", 6, { power: 90 });
  expectAttribute("charm", 6, { type_id: 18 });
  expectAttribute("tackle", 7, { power: 40 });
  expectAttribute("rapid-spin", 8, { power: 50 });
  expectAttribute("mist-ball", 9, { power: 95 });
  expectAttribute("hypnosis", 1, { accuracy: 60 });
  expectAttribute("breakneck-blitz", 7, {
    damage_class: "variable",
    power: null,
    accuracy: null,
    pp: 1,
  });
  expectAttribute("max-flare", 8, {
    damage_class: "variable",
    power: null,
    accuracy: null,
    pp: null,
  });
  expectAttribute("max-guard", 8, {
    damage_class: "status",
    power: null,
    accuracy: null,
    pp: null,
    priority: 4,
  });
  expectAttribute("g-max-drum-solo", 8, {
    damage_class: "variable",
    power: 160,
    accuracy: null,
    pp: null,
  });
  expectAttribute("g-max-wildfire", 8, {
    damage_class: "variable",
    power: null,
    accuracy: null,
    pp: null,
  });
  expectAttribute("nihil-light", 9, {
    type_id: 15,
    power: 200,
    accuracy: 100,
    pp: 10,
    damage_class: "special",
  });
}

export function typeMatchupKey(row) {
  return [
    row.attacking_type_id,
    row.defending_type_id,
    row.generation_start_id,
    row.multiplier_numerator,
    row.multiplier_denominator,
  ].join("/");
}

export function assertTypeMatchupRows(context, tableRows) {
  const rows = tableRows.get("reference.type_matchups") ?? [];
  const typesById = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "id",
  );
  const typesBySlug = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "slug",
  );
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const expectedRows = expectedTypeMatchupRows.map(
    ([
      attacking_type_id,
      defending_type_id,
      generation_start_id,
      multiplier_numerator,
      multiplier_denominator,
    ]) => ({
      attacking_type_id,
      defending_type_id,
      generation_start_id,
      multiplier_numerator,
      multiplier_denominator,
    }),
  );
  const expectedKeys = new Set(expectedRows.map(typeMatchupKey));
  const actualKeys = new Set();
  addCompositeDuplicateErrors(
    context,
    "reference.type_matchups",
    rows,
    "attacking_type_id/defending_type_id/generation_start_id",
    (row) =>
      `${row.attacking_type_id}/${row.defending_type_id}/${row.generation_start_id}`,
  );
  for (const { row, filePath } of rows) {
    const attackingType = typesById.get(row.attacking_type_id);
    const defendingType = typesById.get(row.defending_type_id);
    const actualKey = typeMatchupKey(row);
    actualKeys.add(actualKey);
    if (!attackingType) {
      context.errors.push(
        `${relative(filePath)}: type matchup references unseeded attacking_type_id ${row.attacking_type_id}.`,
      );
    }
    if (!defendingType) {
      context.errors.push(
        `${relative(filePath)}: type matchup references unseeded defending_type_id ${row.defending_type_id}.`,
      );
    }
    if (!generationIds.has(row.generation_start_id)) {
      context.errors.push(
        `${relative(filePath)}: type matchup references unseeded generation_start_id ${row.generation_start_id}.`,
      );
    }
    if (
      attackingType &&
      row.generation_start_id < attackingType.introduced_generation_id
    ) {
      context.errors.push(
        `${relative(filePath)}: type matchup starts before attacking type ${attackingType.slug} exists.`,
      );
    }
    if (
      defendingType &&
      row.generation_start_id < defendingType.introduced_generation_id
    ) {
      context.errors.push(
        `${relative(filePath)}: type matchup starts before defending type ${defendingType.slug} exists.`,
      );
    }
    if (!expectedKeys.has(actualKey)) {
      context.errors.push(
        `${relative(filePath)}: unexpected type matchup row ${actualKey}.`,
      );
    }
  }
  for (const expectedRow of expectedRows) {
    const expectedKey = typeMatchupKey(expectedRow);
    if (!actualKeys.has(expectedKey)) {
      context.errors.push(
        `reference.type_matchups: missing expected type matchup row ${expectedKey}.`,
      );
    }
  }
  if (rows.length !== expectedRows.length) {
    context.errors.push(
      `reference.type_matchups: expected ${expectedRows.length} rows, got ${rows.length}.`,
    );
  }
  function resolvedMultiplier(
    attackingTypeSlug,
    defendingTypeSlug,
    generationId,
  ) {
    const attackingType = typesBySlug.get(attackingTypeSlug);
    const defendingType = typesBySlug.get(defendingTypeSlug);
    if (!attackingType || !defendingType) return "missing-type";
    const matchingRows = rows
      .map(({ row }) => row)
      .filter(
        (row) =>
          row.attacking_type_id === attackingType.id &&
          row.defending_type_id === defendingType.id &&
          row.generation_start_id <= generationId,
      )
      .sort((a, b) => b.generation_start_id - a.generation_start_id);
    if (matchingRows.length === 0) return "1/1";
    return `${matchingRows[0].multiplier_numerator}/${matchingRows[0].multiplier_denominator}`;
  }
  const sanityChecks = [
    ["normal", "rock", 1, "1/2"],
    ["normal", "bug", 1, "1/1"],
    ["poison", "bug", 1, "2/1"],
    ["bug", "poison", 1, "2/1"],
    ["ghost", "psychic", 1, "0/1"],
    ["ice", "fire", 1, "1/1"],
    ["poison", "bug", 2, "1/1"],
    ["bug", "poison", 2, "1/2"],
    ["ghost", "psychic", 2, "2/1"],
    ["ice", "fire", 2, "1/2"],
    ["psychic", "dark", 2, "0/1"],
    ["poison", "steel", 2, "0/1"],
    ["fairy", "dragon", 6, "2/1"],
    ["dragon", "fairy", 6, "0/1"],
    ["ghost", "steel", 6, "1/1"],
    ["dark", "steel", 6, "1/1"],
  ];
  for (const [
    attackingTypeSlug,
    defendingTypeSlug,
    generationId,
    expectedMultiplier,
  ] of sanityChecks) {
    const actualMultiplier = resolvedMultiplier(
      attackingTypeSlug,
      defendingTypeSlug,
      generationId,
    );
    if (actualMultiplier !== expectedMultiplier) {
      context.errors.push(
        `reference.type_matchups: expected ${attackingTypeSlug}->${defendingTypeSlug} in generation ${generationId} to resolve to ${expectedMultiplier}, got ${actualMultiplier}.`,
      );
    }
  }
}

/*
 * Z-Move and G-Max Move sources: every Z-Move but the cap Pikachu one has a
 * crystal, each type crystal powers one type, and every Gigantamax form has
 * exactly one G-Max Move.
 */
export function assertBattleMoveSourceRows(context, tableRows) {
  const movesById = mapRowsByColumn(
    tableRows.get("reference.moves") ?? [],
    "id",
  );
  const itemsById = mapRowsByColumn(
    tableRows.get("reference.items") ?? [],
    "id",
  );
  const formsById = mapRowsByColumn(
    tableRows.get("reference.pokemon_forms") ?? [],
    "id",
  );
  const zRows = tableRows.get("reference.z_move_sources") ?? [];
  const gMaxRows = tableRows.get("reference.g_max_move_sources") ?? [];
  const zMoveIdsWithSource = new Set();
  const typeIdsWithCrystal = new Set();
  for (const { row, filePath } of zRows) {
    const zMove = movesById.get(row.z_move_id);
    const item = itemsById.get(row.item_id);
    if (zMove?.move_kind_id !== 2) {
      context.errors.push(
        `${relative(filePath)}: z_move_id ${row.z_move_id} must be a Z-Move.`,
      );
    }
    if (!item?.slug.endsWith("-z")) {
      context.errors.push(
        `${relative(filePath)}: item_id ${row.item_id} must be a Z-Crystal.`,
      );
    }
    if (row.base_move_id !== null) {
      if (movesById.get(row.base_move_id)?.move_kind_id !== 1) {
        context.errors.push(
          `${relative(filePath)}: base_move_id ${row.base_move_id} must be a regular move.`,
        );
      }
      if (row.form_id !== null && !formsById.has(row.form_id)) {
        context.errors.push(
          `${relative(filePath)}: form_id ${row.form_id} is not seeded.`,
        );
      }
    } else if (typeIdsWithCrystal.has(row.base_type_id)) {
      context.errors.push(
        `${relative(filePath)}: type ${row.base_type_id} has more than one type crystal.`,
      );
    } else {
      typeIdsWithCrystal.add(row.base_type_id);
    }
    zMoveIdsWithSource.add(row.z_move_id);
  }
  if (typeIdsWithCrystal.size !== 18) {
    context.errors.push(
      `reference.z_move_sources: expected one type crystal for each of the 18 types, got ${typeIdsWithCrystal.size}.`,
    );
  }
  for (const move of movesById.values()) {
    if (
      move.move_kind_id === 2 &&
      move.slug !== "10-000-000-volt-thunderbolt" &&
      !zMoveIdsWithSource.has(move.id)
    ) {
      context.errors.push(
        `reference.z_move_sources: Z-Move ${move.slug} has no crystal.`,
      );
    }
  }
  const gMaxFormIds = new Set();
  for (const { row, filePath } of gMaxRows) {
    const form = formsById.get(row.form_id);
    if (!form?.slug.startsWith("gigantamax-")) {
      context.errors.push(
        `${relative(filePath)}: form_id ${row.form_id} must be a Gigantamax form.`,
      );
    }
    if (movesById.get(row.g_max_move_id)?.move_kind_id !== 4) {
      context.errors.push(
        `${relative(filePath)}: g_max_move_id ${row.g_max_move_id} must be a G-Max Move.`,
      );
    }
    gMaxFormIds.add(row.form_id);
  }
  for (const form of formsById.values()) {
    if (form.slug.startsWith("gigantamax-") && !gMaxFormIds.has(form.id)) {
      context.errors.push(
        `reference.g_max_move_sources: Gigantamax form ${form.slug} has no G-Max Move.`,
      );
    }
  }
}
