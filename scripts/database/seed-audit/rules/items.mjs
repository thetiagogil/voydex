import {
  assertSourceVerifiedRowsetFingerprint,
  compareRowsByColumns,
  mapRowsByColumn,
  relative,
} from "../core.mjs";
import {
  excludedPokeBallCatalogSlugs,
  expectedAdditionalZCrystalItemSlugs,
  expectedBerryItemSlugs,
  expectedEvolutionHeldItemSlugs,
  expectedEvolutionItemSlugs,
  expectedFormChangeItemSlugs,
  expectedFossilItemSlugs,
  expectedGeneralHeldItemCategoryRequirements,
  expectedItemSlugs,
  expectedMegaStoneItemSlugs,
  expectedPokeBallItemSlugs,
} from "../expectations.mjs";

export function assertItemRows(context, tableRows) {
  const itemRows = tableRows.get("reference.items") ?? [];
  const membershipRows =
    tableRows.get("reference.item_category_memberships") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const itemCategoriesById = mapRowsByColumn(
    tableRows.get("reference.item_categories") ?? [],
    "id",
  );
  const itemsById = mapRowsByColumn(itemRows, "id");
  const itemsBySlug = mapRowsByColumn(itemRows, "slug");
  const actualSlugs = itemRows
    .sort((a, b) => a.row.sort_order - b.row.sort_order)
    .map(({ row }) => row.slug);
  assertSourceVerifiedRowsetFingerprint(
    context,
    "reference.items",
    itemRows,
    [
      "id",
      "slug",
      "name",
      "primary_category_id",
      "external_id",
      "introduced_generation_id",
      "sort_order",
    ],
    compareRowsByColumns(["sort_order", "id"]),
    {
      count: 503,
      sha256:
        "02066a6d96d9b264f518c500afd2df90cb71834b037d6d75f959a2f41b03d680",
    },
  );
  assertSourceVerifiedRowsetFingerprint(
    context,
    "reference.item_category_memberships",
    membershipRows,
    ["item_id", "category_id"],
    compareRowsByColumns(["item_id", "category_id"]),
    {
      count: 1014,
      sha256:
        "5bc415441ccc519c63ace4770d9359253f7196db2b4d7752c6f43e74a0cc740b",
    },
  );
  if (actualSlugs.join("|") !== expectedItemSlugs.join("|")) {
    context.errors.push(
      `reference.items: expected reduced mechanics item slugs [${expectedItemSlugs.join(", ")}], got [${actualSlugs.join(", ")}].`,
    );
  }
  for (const slug of excludedPokeBallCatalogSlugs) {
    if (itemsBySlug.has(slug)) {
      context.errors.push(
        `reference.items: excluded Poke Ball catalog item ${slug} must not be seeded; it is not a player-registered caught-ball biography item.`,
      );
    }
  }
  if (expectedPokeBallItemSlugs.length !== 36) {
    context.errors.push(
      `reference.items: expected 36 supported Poke Ball catalog slugs after excluding Park Ball and Strange Ball, got ${expectedPokeBallItemSlugs.length}.`,
    );
  }
  for (const { row, filePath } of itemRows) {
    if (!generationIds.has(row.introduced_generation_id)) {
      context.errors.push(
        `${relative(filePath)}: item ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (row.primary_category_id === null) {
      context.errors.push(
        `${relative(filePath)}: item ${row.slug} must have a primary_category_id.`,
      );
    } else if (!itemCategoriesById.has(row.primary_category_id)) {
      context.errors.push(
        `${relative(filePath)}: item ${row.slug} references unseeded primary_category_id ${row.primary_category_id}.`,
      );
    }
  }
  for (const { row, filePath } of membershipRows) {
    if (!itemsById.has(row.item_id)) {
      context.errors.push(
        `${relative(filePath)}: item membership references unseeded item_id ${row.item_id}.`,
      );
    }
    if (!itemCategoriesById.has(row.category_id)) {
      context.errors.push(
        `${relative(filePath)}: item membership references unseeded category_id ${row.category_id}.`,
      );
    }
  }
  for (const slug of expectedFormChangeItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;
    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    const expectedCategoryIds = slug === "teal-mask" ? [5] : [2, 5];
    for (const expectedCategoryId of expectedCategoryIds) {
      if (!categoryIds.has(expectedCategoryId)) {
        context.errors.push(
          `reference.item_category_memberships: item ${slug} must belong to expected form item categories ${expectedCategoryIds.join("/")}.`,
        );
      }
    }
    if (slug.endsWith("-z") && !categoryIds.has(8)) {
      context.errors.push(
        `reference.item_category_memberships: Z-Crystal item ${slug} must belong to z_crystal category.`,
      );
    }
  }
  for (const slug of expectedEvolutionItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;
    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(3)) {
      context.errors.push(
        `reference.item_category_memberships: evolution item ${slug} must belong to evolution_item category.`,
      );
    }
    if (expectedEvolutionHeldItemSlugs.has(slug) && !categoryIds.has(2)) {
      context.errors.push(
        `reference.item_category_memberships: held evolution item ${slug} must belong to held_item category.`,
      );
    }
  }
  for (const slug of expectedPokeBallItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;
    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(1)) {
      context.errors.push(
        `reference.item_category_memberships: Poke Ball item ${slug} must belong to poke_ball category.`,
      );
    }
  }
  for (const slug of expectedFossilItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;
    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(4)) {
      context.errors.push(
        `reference.item_category_memberships: fossil item ${slug} must belong to fossil category.`,
      );
    }
  }
  for (const slug of expectedBerryItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;
    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(6)) {
      context.errors.push(
        `reference.item_category_memberships: berry item ${slug} must belong to berry category.`,
      );
    }
    if (!categoryIds.has(2)) {
      context.errors.push(
        `reference.item_category_memberships: berry item ${slug} must belong to held_item category.`,
      );
    }
  }
  for (const slug of expectedAdditionalZCrystalItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;
    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(8)) {
      context.errors.push(
        `reference.item_category_memberships: Z-Crystal item ${slug} must belong to z_crystal category.`,
      );
    }
    if (!categoryIds.has(2)) {
      context.errors.push(
        `reference.item_category_memberships: Z-Crystal item ${slug} must belong to held_item category.`,
      );
    }
  }
  for (const slug of expectedMegaStoneItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;
    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(7)) {
      context.errors.push(
        `reference.item_category_memberships: Mega Stone item ${slug} must belong to mega_stone category.`,
      );
    }
    if (!categoryIds.has(2)) {
      context.errors.push(
        `reference.item_category_memberships: Mega Stone item ${slug} must belong to held_item category.`,
      );
    }
  }
  for (const [
    slug,
    expectedCategoryIds,
  ] of expectedGeneralHeldItemCategoryRequirements) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;
    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    for (const expectedCategoryId of expectedCategoryIds) {
      if (!categoryIds.has(expectedCategoryId)) {
        context.errors.push(
          `reference.item_category_memberships: held item ${slug} must belong to expected categories ${expectedCategoryIds.join("/")} .`,
        );
      }
    }
  }
}
