import { createHash } from "node:crypto";
import {
  addCompositeDuplicateErrors,
  assertScopedContiguousSortOrder,
  collectVersionGroupClosureIds,
  compareRowsByColumns,
  mapRowsByColumn,
  relative,
  sourceFingerprintString,
  sourceVerifiedRowsetFingerprint,
} from "../core.mjs";
import {
  expectedAdditionalZCrystalItemSlugs,
  expectedBerryAvailabilityRowCount,
  expectedBerryAvailabilitySlugsByVersionGroup,
  expectedBerryItemSlugs,
  expectedEvolutionItemSlugs,
  expectedFormChangeItemSlugs,
  expectedFossilAvailabilityRowCount,
  expectedFossilAvailabilitySlugsByVersionGroup,
  expectedFossilItemSlugs,
  expectedGeneralHeldAvailableItemSlugs,
  expectedMegaStoneItemSlugs,
  expectedNonZCrystalFormChangeItemSlugs,
  expectedPokeBallAvailabilityRowCount,
  expectedPokeBallAvailabilitySlugsByVersionGroup,
  expectedPokeBallAvailableItemSlugs,
  expectedPokeBallItemSlugs,
  expectedZCrystalAvailabilityRowCount,
  expectedZCrystalAvailabilitySlugsByVersionGroup,
  expectedZCrystalItemSlugs,
} from "../expectations.mjs";

export function itemAvailabilityRowLabel(row) {
  return `${row.item_id}/${row.version_group_id}/${row.game_id ?? "vg"}/${row.availability_method_id ?? "method-null"}`;
}

export function moveAvailabilityRowLabel(row) {
  return `${row.move_id}/${row.version_group_id}/${row.game_id ?? "vg"}`;
}

export function pokemonAvailabilityRowLabel(row) {
  return `${row.species_id}/${row.form_id}/${row.version_group_id}/${row.game_id ?? "vg"}/${row.availability_method_id}`;
}

export function pokemonLearnsetRowLabel(row) {
  return `${row.species_id}/${row.form_id}/${row.move_id}/${row.version_group_id}/${row.game_id ?? "vg"}/${row.learn_method_id}/${row.level_learned_at ?? "no-level"}/${row.source_item_id ?? "no-item"}/${row.move_machine_id ?? "no-machine"}`;
}

export function moveMachineRowLabel(row) {
  return `${row.machine_label}/${row.version_group_id}/${row.game_id ?? "vg"}`;
}

export function scopeOperation(row) {
  return row.scope_operation ?? "add";
}

export function expectedMoveMachineId(row) {
  const machineNumberMatch = String(row.machine_label).match(
    /^(?:TM|HM|TR)([0-9]{2,3})$/,
  );
  if (!machineNumberMatch) return null;
  return (
    row.version_group_id * 1000000 +
    (row.game_id ?? 0) * 10000 +
    row.learn_method_id * 1000 +
    Number(machineNumberMatch[1])
  );
}

export function assertItemAvailabilityRows(context, tableRows) {
  const rows = tableRows.get("reference.item_availability") ?? [];
  const itemRows = tableRows.get("reference.items") ?? [];
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const methods = tableRows.get("reference.availability_methods") ?? [];
  const contentScopes = tableRows.get("reference.game_content_scopes") ?? [];
  const sourceVerifiedFingerprintsByVersionGroup = new Map([
    [
      1,
      {
        count: 13,
        sha256:
          "7b1e45a9e03e0da55d9d5b71cd5259473cfe51dc69443b4810550a9db49ede6a",
      },
    ],
    [
      2,
      {
        count: 13,
        sha256:
          "abb3b4474f183cf98e56228ca64dfbd1257fc4ab2c3bb53bbc791c07b356d4e9",
      },
    ],
    [
      3,
      {
        count: 55,
        sha256:
          "3c8fe172901b4d7bc31c5778260a30182adaab57feba0b6a61580ea73d112a1c",
      },
    ],
    [
      4,
      {
        count: 55,
        sha256:
          "2dcd79bed298a3123f70d70539bc054f4a9c44b5a854ea6ee7316916652f2346",
      },
    ],
    [
      5,
      {
        count: 92,
        sha256:
          "62a2f58dfab8d47e78fd0ef91ccca15a94a64b4c41de75176efa695e9afae792",
      },
    ],
    [
      6,
      {
        count: 61,
        sha256:
          "ff921f57edd0a59f57d7bab042ccc561c9a5bde975f37cc1fcc8ff0ff044e89e",
      },
    ],
    [
      7,
      {
        count: 94,
        sha256:
          "0b1bf4dbc55e6f1a48e9435cab05aebafadeaa1e37f88a134d1185e6b5e3c902",
      },
    ],
    [
      8,
      {
        count: 188,
        sha256:
          "ff0bbd22100e83ac605d07d64d183da96e6ca6725d9530a1dfbfa752bb5163cb",
      },
    ],
    [
      9,
      {
        count: 190,
        sha256:
          "4ed0edc8fe2e83b5497534f81b3ab5aa491c6e11878393932b994e1ffc5c81c1",
      },
    ],
    [
      10,
      {
        count: 182,
        sha256:
          "1db1982e3ab5e8794dc458d1ac50d0187221b6eb6e5be2fc10ff8e222103e8e9",
      },
    ],
    [
      11,
      {
        count: 193,
        sha256:
          "e70778ee8a4a28e2faa6bc4c57fe61eb5ad9fd7aa3cb52521c04e85e65f60b9d",
      },
    ],
    [
      12,
      {
        count: 210,
        sha256:
          "17d1995651a8b5c1ff171e54de6b2d630640de241c0d2b7fb0ffb4e4653671a8",
      },
    ],
    [
      13,
      {
        count: 232,
        sha256:
          "e1b0d6d061003365320e9881437b8f84b05ae1ceb6a4595bb3318054db49ce2b",
      },
    ],
    [
      14,
      {
        count: 264,
        sha256:
          "7eeb89c881229df2f46d366a55d43fe0e4ac4d89d7cc4ac3293ff53c38e53fd3",
      },
    ],
    [
      15,
      {
        count: 278,
        sha256:
          "e5572c27f0be27694f26f2bfd955f1696282582de89bc4857885fa0ede9b8b3d",
      },
    ],
    [
      16,
      {
        count: 327,
        sha256:
          "218f9f81909ff253e973ce4b2175944c3417a759496649ab2e91934b94e588b9",
      },
    ],
    [
      17,
      {
        count: 23,
        sha256:
          "5a485eb8d1cd0a4546ace1e4565830c62cc0d80fc46aeb8b685726a1f142ad62",
      },
    ],
    [
      18,
      {
        count: 235,
        sha256:
          "f18352a2e10829d586a5f8c6252cb5397fb9a7ec5f714ce6043abdac8965ff15",
      },
    ],
    [
      19,
      {
        count: 132,
        sha256:
          "da27a6044390e9637acca739bf896d7f7ca359bd56645ec9436bc06d87d4c9dc",
      },
    ],
    [
      20,
      {
        count: 116,
        sha256:
          "e8cae54ba9cab80810146bb55a0b4b6285861848f88eefc5796a99a141b7a48b",
      },
    ],
    [
      21,
      {
        count: 217,
        sha256:
          "89ec364c83cab89ff088a9fec8fdb5f4ee4f1ecdad8293189216ad4d2ff9dbf1",
      },
    ],
    [
      22,
      {
        count: 69,
        sha256:
          "38a0a642c6ddb83e99a8e17d7e6023d2e7503cc67f6469ad9b527396a27ed4d5",
      },
    ],
    [
      23,
      {
        count: 218,
        sha256:
          "6f960d31733fc8cbdf7962701f9f200818f8971f01c4ea2542858adad627ead3",
      },
    ],
    [
      24,
      {
        count: 66,
        sha256:
          "a8e377d4880f8b93ce6840679b3a1041783457bf868eb162d4235974266e7c0b",
      },
    ],
    [
      25,
      {
        count: 105,
        sha256:
          "516a0908b2fa74828408a9a4c4878b8d37df133c6529a02a7745f237927bd5ba",
      },
    ],
    [
      26,
      {
        count: 194,
        sha256:
          "fc13d4fecfd7393f1f6862d494e1ad9fa8466b5fdd474665176b9ae8b3584ea6",
      },
    ],
    [
      27,
      {
        count: 55,
        sha256:
          "123b6b6eb130d342748e01fc5e5129f6c593b28361bd5d0dc656c577848d8c18",
      },
    ],
  ]);
  const itemAvailabilitySourceFingerprint = (availabilityRows) =>
    createHash("sha256")
      .update(
        availabilityRows
          .toSorted(
            (a, b) =>
              a.item_id - b.item_id ||
              a.version_group_id - b.version_group_id ||
              (a.game_id ?? 0) - (b.game_id ?? 0) ||
              (a.availability_method_id ?? 0) -
                (b.availability_method_id ?? 0) ||
              scopeOperation(a).localeCompare(scopeOperation(b)) ||
              sourceFingerprintString(a.notes).localeCompare(
                sourceFingerprintString(b.notes),
              ),
          )
          .map((row) =>
            [
              row.item_id,
              row.version_group_id,
              row.game_id ?? "vg",
              row.availability_method_id ?? 0,
              scopeOperation(row),
              sourceFingerprintString(row.notes),
            ].join("/"),
          )
          .join("|"),
      )
      .digest("hex");
  const sourceVerifiedItemCategoryFingerprints = new Map([
    [
      "non-Z form-change item availability",
      {
        slugs: new Set(expectedNonZCrystalFormChangeItemSlugs),
        count: 302,
        sha256:
          "508b47e4959727a83d2fe56914e04ce890027ecbe924c110d8d7a3a83f5f2ae1",
      },
    ],
    [
      "evolution item availability",
      {
        slugs: new Set(expectedEvolutionItemSlugs),
        count: 465,
        sha256:
          "f1f33ed52616c3e19a67b5582c0c14d7e11f7604cd0924be498ee4b8a38e4c30",
      },
    ],
    [
      "Z-Crystal availability",
      {
        slugs: new Set(expectedZCrystalItemSlugs),
        count: 60,
        sha256:
          "2c7cea2167203670673e4d435a8c8956c5b5eeb006cadd117287d2e0c0ae9071",
      },
    ],
    [
      "Mega Stone availability",
      {
        slugs: new Set(expectedMegaStoneItemSlugs),
        count: 233,
        sha256:
          "1f57c79af054361e7909f92d65be90aec032c38dfeacd13912f43fea2d0e312a",
      },
    ],
    [
      "general held item availability",
      {
        slugs: new Set(expectedGeneralHeldAvailableItemSlugs),
        count: 1380,
        sha256:
          "8265847d156a61ac1c5880881c6cd1462830ce7887354ccd76a83ec247217dbe",
      },
    ],
  ]);
  const itemIds = new Set(itemRows.map(({ row }) => row.id));
  const versionGroupIds = new Set(versionGroups.map(({ row }) => row.id));
  const versionGroupsById = mapRowsByColumn(versionGroups, "id");
  const gamesById = mapRowsByColumn(games, "id");
  const methodIds = new Set(methods.map(({ row }) => row.id));
  const contentScopeKeys = new Set(
    contentScopes.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const availabilityItemIds = new Set(rows.map(({ row }) => row.item_id));
  const itemsBySlug = mapRowsByColumn(itemRows, "slug");
  const itemsById = mapRowsByColumn(itemRows, "id");
  const versionGroupsBySlug = mapRowsByColumn(versionGroups, "slug");
  const gamesBySlug = mapRowsByColumn(games, "slug");
  const methodsBySlug = mapRowsByColumn(methods, "slug");
  const normalizedAvailabilityRows = rows.map(({ row, filePath }) => ({
    ...row,
    availability_method_id: row.availability_method_id ?? null,
    game_id: row.game_id ?? null,
    notes: row.notes === "NULL" ? null : (row.notes ?? null),
    filePath,
  }));
  function hasItemAvailability({
    itemSlug,
    versionGroupSlug,
    gameSlug = null,
    methodSlug = null,
  }) {
    const item = itemsBySlug.get(itemSlug);
    const versionGroup = versionGroupsBySlug.get(versionGroupSlug);
    const game = gameSlug ? gamesBySlug.get(gameSlug) : null;
    const method = methodSlug ? methodsBySlug.get(methodSlug) : null;
    if (
      !item ||
      !versionGroup ||
      (gameSlug && !game) ||
      (methodSlug && !method)
    ) {
      return false;
    }
    return normalizedAvailabilityRows.some(
      (row) =>
        row.item_id === item.id &&
        row.version_group_id === versionGroup.id &&
        row.game_id === (game?.id ?? null) &&
        row.availability_method_id === (method?.id ?? null),
    );
  }
  function expectItemAvailability(expected) {
    if (!hasItemAvailability(expected)) {
      const scope = expected.gameSlug
        ? `${expected.versionGroupSlug}/${expected.gameSlug}`
        : expected.versionGroupSlug;
      const method = expected.methodSlug ?? "normal";
      context.errors.push(
        `reference.item_availability: expected ${expected.itemSlug} availability in ${scope} with method ${method}.`,
      );
    }
  }
  function expectNoItemAvailability(expected) {
    if (hasItemAvailability(expected)) {
      const scope = expected.gameSlug
        ? `${expected.versionGroupSlug}/${expected.gameSlug}`
        : expected.versionGroupSlug;
      const method = expected.methodSlug ?? "normal";
      context.errors.push(
        `reference.item_availability: unexpected ${expected.itemSlug} availability in ${scope} with method ${method}.`,
      );
    }
  }
  function hasAnyItemAvailability({ itemSlug, versionGroupSlug }) {
    const item = itemsBySlug.get(itemSlug);
    const versionGroup = versionGroupsBySlug.get(versionGroupSlug);
    if (!item || !versionGroup) return false;
    return normalizedAvailabilityRows.some(
      (row) =>
        row.item_id === item.id && row.version_group_id === versionGroup.id,
    );
  }
  function expectNoAnyItemAvailability(expected) {
    if (hasAnyItemAvailability(expected)) {
      context.errors.push(
        "reference.item_availability: unexpected " +
          expected.itemSlug +
          " availability rows in " +
          expected.versionGroupSlug +
          ".",
      );
    }
  }
  for (const slug of [
    ...expectedFormChangeItemSlugs,
    ...expectedEvolutionItemSlugs,
    "griseous-core",
    ...expectedPokeBallAvailableItemSlugs,
    ...expectedFossilItemSlugs,
    ...expectedBerryItemSlugs,
    ...expectedAdditionalZCrystalItemSlugs,
    ...expectedMegaStoneItemSlugs,
    ...expectedGeneralHeldAvailableItemSlugs,
  ]) {
    const item = mapRowsByColumn(itemRows, "slug").get(slug);
    if (item && !availabilityItemIds.has(item.id)) {
      context.errors.push(
        `reference.item_availability: expected item ${slug} to have at least one availability row.`,
      );
    }
  }
  if (rows.length !== 3877) {
    context.errors.push(
      `reference.item_availability: expected 3877 curated item availability rows, got ${rows.length}.`,
    );
  }
  addCompositeDuplicateErrors(
    context,
    "reference.item_availability",
    rows.filter(({ row }) => row.game_id === null),
    "item_id/version_group_id/availability_method_id where game_id IS NULL",
    (row) =>
      `${row.item_id}/${row.version_group_id}/${row.availability_method_id}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.item_availability",
    rows.filter(({ row }) => row.game_id !== null),
    "item_id/version_group_id/game_id/availability_method_id where game_id IS NOT NULL",
    (row) =>
      `${row.item_id}/${row.version_group_id}/${row.game_id}/${row.availability_method_id}`,
  );
  for (const expected of [
    { itemSlug: "deep-sea-tooth", versionGroupSlug: "rs" },
    { itemSlug: "deep-sea-scale", versionGroupSlug: "rs" },
    { itemSlug: "deep-sea-tooth", versionGroupSlug: "emerald" },
    { itemSlug: "deep-sea-scale", versionGroupSlug: "emerald" },
    {
      itemSlug: "deep-sea-tooth",
      versionGroupSlug: "frlg",
      methodSlug: "external_trade",
    },
    {
      itemSlug: "deep-sea-scale",
      versionGroupSlug: "frlg",
      methodSlug: "external_trade",
    },
    {
      itemSlug: "electirizer",
      versionGroupSlug: "bdsp",
      gameSlug: "brilliant-diamond",
    },
    {
      itemSlug: "magmarizer",
      versionGroupSlug: "bdsp",
      gameSlug: "shining-pearl",
    },
    { itemSlug: "electirizer", versionGroupSlug: "sv-id" },
    { itemSlug: "magmarizer", versionGroupSlug: "sv-id" },
    { itemSlug: "scroll-of-darkness", versionGroupSlug: "sv" },
    { itemSlug: "scroll-of-waters", versionGroupSlug: "sv" },
    { itemSlug: "black-augurite", versionGroupSlug: "pla" },
    { itemSlug: "black-augurite", versionGroupSlug: "za-md" },
    { itemSlug: "metal-alloy", versionGroupSlug: "sv-id" },
    { itemSlug: "galarica-cuff", versionGroupSlug: "swsh-ioa" },
    { itemSlug: "galarica-wreath", versionGroupSlug: "swsh-ct" },
    {
      itemSlug: "polkadot-bow",
      versionGroupSlug: "gs",
      methodSlug: "transfer_only",
    },
    {
      itemSlug: "polkadot-bow",
      versionGroupSlug: "crystal",
      methodSlug: "transfer_only",
    },
    { itemSlug: "red-orb", versionGroupSlug: "oras" },
    { itemSlug: "blue-orb", versionGroupSlug: "oras" },
    { itemSlug: "red-orb", versionGroupSlug: "sm" },
    { itemSlug: "blue-orb", versionGroupSlug: "sm" },
    { itemSlug: "red-orb", versionGroupSlug: "usum" },
    { itemSlug: "blue-orb", versionGroupSlug: "usum" },
    { itemSlug: "red-orb", versionGroupSlug: "za" },
    { itemSlug: "blue-orb", versionGroupSlug: "za" },
  ]) {
    expectItemAvailability(expected);
  }
  for (const expected of [
    { itemSlug: "deep-sea-tooth", versionGroupSlug: "frlg" },
    { itemSlug: "deep-sea-scale", versionGroupSlug: "frlg" },
    {
      itemSlug: "electirizer",
      versionGroupSlug: "bdsp",
      gameSlug: "shining-pearl",
    },
    {
      itemSlug: "magmarizer",
      versionGroupSlug: "bdsp",
      gameSlug: "brilliant-diamond",
    },
    { itemSlug: "scroll-of-darkness", versionGroupSlug: "swsh-ioa" },
    { itemSlug: "scroll-of-waters", versionGroupSlug: "swsh-ioa" },
    { itemSlug: "black-augurite", versionGroupSlug: "sv" },
    { itemSlug: "metal-alloy", versionGroupSlug: "sv" },
    { itemSlug: "metal-alloy", versionGroupSlug: "sv-tm" },
    { itemSlug: "polkadot-bow", versionGroupSlug: "gs" },
    { itemSlug: "polkadot-bow", versionGroupSlug: "crystal" },
  ]) {
    expectNoItemAvailability(expected);
  }
  for (const expected of [
    { itemSlug: "exp-share", versionGroupSlug: "xy" },
    { itemSlug: "exp-share", versionGroupSlug: "oras" },
    { itemSlug: "exp-share", versionGroupSlug: "sm" },
    { itemSlug: "exp-share", versionGroupSlug: "usum" },
    { itemSlug: "exp-share", versionGroupSlug: "lgpe" },
    { itemSlug: "exp-share", versionGroupSlug: "swsh" },
    { itemSlug: "exp-share", versionGroupSlug: "swsh-ioa" },
    { itemSlug: "exp-share", versionGroupSlug: "swsh-ct" },
    { itemSlug: "exp-share", versionGroupSlug: "bdsp" },
    { itemSlug: "exp-share", versionGroupSlug: "pla" },
    { itemSlug: "exp-share", versionGroupSlug: "sv" },
    { itemSlug: "exp-share", versionGroupSlug: "sv-tm" },
    { itemSlug: "exp-share", versionGroupSlug: "sv-id" },
    { itemSlug: "exp-share", versionGroupSlug: "za" },
    { itemSlug: "exp-share", versionGroupSlug: "za-md" },
    { itemSlug: "red-orb", versionGroupSlug: "rs" },
    { itemSlug: "blue-orb", versionGroupSlug: "rs" },
    { itemSlug: "red-orb", versionGroupSlug: "emerald" },
    { itemSlug: "blue-orb", versionGroupSlug: "emerald" },
  ]) {
    expectNoAnyItemAvailability(expected);
  }
  const fairyGem = itemsBySlug.get("fairy-gem");
  if (
    fairyGem &&
    normalizedAvailabilityRows.some((row) => row.item_id === fairyGem.id)
  ) {
    context.errors.push(
      "reference.item_availability: Fairy Gem must remain catalog-only because no normal source availability is modeled.",
    );
  }
  const pokeBallSlugsById = new Map(
    expectedPokeBallItemSlugs
      .map((slug) => itemsBySlug.get(slug))
      .filter(Boolean)
      .map((item) => [item.id, item.slug]),
  );
  const expectedPokeBallSlugSet = new Set(expectedPokeBallItemSlugs);
  const actualPokeBallAvailabilitySlugsByVersionGroup = new Map();
  let actualPokeBallAvailabilityRowCount = 0;
  for (const row of normalizedAvailabilityRows) {
    const itemSlug = pokeBallSlugsById.get(row.item_id);
    if (!itemSlug) continue;
    actualPokeBallAvailabilityRowCount += 1;
    if (!expectedPokeBallSlugSet.has(itemSlug)) {
      context.errors.push(
        `reference.item_availability: unexpected Poke Ball availability item ${itemSlug}.`,
      );
    }
    if (itemSlug === "cherish-ball") {
      context.errors.push(
        "reference.item_availability: Cherish Ball must remain catalog-only and must not have normal item availability rows.",
      );
    }
    if (
      row.game_id !== null ||
      row.availability_method_id !== null ||
      scopeOperation(row) !== "add"
    ) {
      context.errors.push(
        `${relative(row.filePath)}: Poke Ball availability row ${itemAvailabilityRowLabel(row)} must remain a simple version-group add row without game/method overrides until detailed ball acquisition is modeled.`,
      );
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    const versionGroupSlug =
      versionGroup?.slug ?? `unknown-${row.version_group_id}`;
    if (!actualPokeBallAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      actualPokeBallAvailabilitySlugsByVersionGroup.set(versionGroupSlug, []);
    }
    actualPokeBallAvailabilitySlugsByVersionGroup
      .get(versionGroupSlug)
      .push(itemSlug);
  }
  if (
    actualPokeBallAvailabilityRowCount !== expectedPokeBallAvailabilityRowCount
  ) {
    context.errors.push(
      `reference.item_availability: expected ${expectedPokeBallAvailabilityRowCount} source-checked Poke Ball availability rows, got ${actualPokeBallAvailabilityRowCount}.`,
    );
  }
  for (const [
    versionGroupSlug,
    actualSlugs,
  ] of actualPokeBallAvailabilitySlugsByVersionGroup.entries()) {
    if (
      !expectedPokeBallAvailabilitySlugsByVersionGroup.has(versionGroupSlug)
    ) {
      context.errors.push(
        `reference.item_availability: unexpected Poke Ball availability rows for version group ${versionGroupSlug}.`,
      );
      continue;
    }
    const expectedSlugs =
      expectedPokeBallAvailabilitySlugsByVersionGroup.get(versionGroupSlug);
    const actualSet = new Set(actualSlugs);
    const expectedSet = new Set(expectedSlugs);
    for (const slug of actualSet) {
      if (!expectedSet.has(slug)) {
        context.errors.push(
          `reference.item_availability: unexpected Poke Ball ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    for (const slug of expectedSet) {
      if (!actualSet.has(slug)) {
        context.errors.push(
          `reference.item_availability: missing Poke Ball ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    if (actualSlugs.length !== actualSet.size) {
      context.errors.push(
        `reference.item_availability: duplicate Poke Ball availability row in ${versionGroupSlug}.`,
      );
    }
  }
  for (const versionGroupSlug of expectedPokeBallAvailabilitySlugsByVersionGroup.keys()) {
    if (!actualPokeBallAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      context.errors.push(
        `reference.item_availability: missing source-checked Poke Ball availability rows for version group ${versionGroupSlug}.`,
      );
    }
  }
  const fossilSlugsById = new Map(
    expectedFossilItemSlugs
      .map((slug) => itemsBySlug.get(slug))
      .filter(Boolean)
      .map((item) => [item.id, item.slug]),
  );
  const expectedFossilSlugSet = new Set(expectedFossilItemSlugs);
  const actualFossilAvailabilitySlugsByVersionGroup = new Map();
  let actualFossilAvailabilityRowCount = 0;
  for (const row of normalizedAvailabilityRows) {
    const itemSlug = fossilSlugsById.get(row.item_id);
    if (!itemSlug) continue;
    actualFossilAvailabilityRowCount += 1;
    if (!expectedFossilSlugSet.has(itemSlug)) {
      context.errors.push(
        `reference.item_availability: unexpected fossil availability item ${itemSlug}.`,
      );
    }
    if (row.availability_method_id !== null || scopeOperation(row) !== "add") {
      context.errors.push(
        `${relative(row.filePath)}: fossil availability row ${itemAvailabilityRowLabel(row)} must remain a source-checked add row without method overrides until detailed fossil acquisition is modeled.`,
      );
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    const game = row.game_id === null ? null : gamesById.get(row.game_id);
    const versionGroupSlug =
      versionGroup?.slug ?? `unknown-${row.version_group_id}`;
    const fossilToken = `${itemSlug}${game ? `@${game.slug}` : ""}`;
    if (!actualFossilAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      actualFossilAvailabilitySlugsByVersionGroup.set(versionGroupSlug, []);
    }
    actualFossilAvailabilitySlugsByVersionGroup
      .get(versionGroupSlug)
      .push(fossilToken);
  }
  if (actualFossilAvailabilityRowCount !== expectedFossilAvailabilityRowCount) {
    context.errors.push(
      `reference.item_availability: expected ${expectedFossilAvailabilityRowCount} source-checked fossil availability rows, got ${actualFossilAvailabilityRowCount}.`,
    );
  }
  for (const [
    versionGroupSlug,
    actualSlugs,
  ] of actualFossilAvailabilitySlugsByVersionGroup.entries()) {
    if (!expectedFossilAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      context.errors.push(
        `reference.item_availability: unexpected fossil availability rows for version group ${versionGroupSlug}.`,
      );
      continue;
    }
    const expectedSlugs =
      expectedFossilAvailabilitySlugsByVersionGroup.get(versionGroupSlug);
    const actualSet = new Set(actualSlugs);
    const expectedSet = new Set(expectedSlugs);
    for (const slug of actualSet) {
      if (!expectedSet.has(slug)) {
        context.errors.push(
          `reference.item_availability: unexpected fossil ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    for (const slug of expectedSet) {
      if (!actualSet.has(slug)) {
        context.errors.push(
          `reference.item_availability: missing fossil ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    if (actualSlugs.length !== actualSet.size) {
      context.errors.push(
        `reference.item_availability: duplicate fossil availability row in ${versionGroupSlug}.`,
      );
    }
  }
  for (const versionGroupSlug of expectedFossilAvailabilitySlugsByVersionGroup.keys()) {
    if (!actualFossilAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      context.errors.push(
        `reference.item_availability: missing source-checked fossil availability rows for version group ${versionGroupSlug}.`,
      );
    }
  }
  const berrySlugsById = new Map(
    expectedBerryItemSlugs
      .map((slug) => itemsBySlug.get(slug))
      .filter(Boolean)
      .map((item) => [item.id, item.slug]),
  );
  const expectedBerrySlugSet = new Set(expectedBerryItemSlugs);
  const actualBerryAvailabilitySlugsByVersionGroup = new Map();
  let actualBerryAvailabilityRowCount = 0;
  for (const row of normalizedAvailabilityRows) {
    const itemSlug = berrySlugsById.get(row.item_id);
    if (!itemSlug) continue;
    actualBerryAvailabilityRowCount += 1;
    if (!expectedBerrySlugSet.has(itemSlug)) {
      context.errors.push(
        `reference.item_availability: unexpected berry availability item ${itemSlug}.`,
      );
    }
    if (
      row.game_id !== null ||
      row.availability_method_id !== null ||
      scopeOperation(row) !== "add"
    ) {
      context.errors.push(
        `${relative(row.filePath)}: berry availability row ${itemAvailabilityRowLabel(row)} must remain a source-checked version-group add row without game/method overrides until detailed berry acquisition is modeled.`,
      );
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    const versionGroupSlug =
      versionGroup?.slug ?? `unknown-${row.version_group_id}`;
    if (!actualBerryAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      actualBerryAvailabilitySlugsByVersionGroup.set(versionGroupSlug, []);
    }
    actualBerryAvailabilitySlugsByVersionGroup
      .get(versionGroupSlug)
      .push(itemSlug);
  }
  if (actualBerryAvailabilityRowCount !== expectedBerryAvailabilityRowCount) {
    context.errors.push(
      `reference.item_availability: expected ${expectedBerryAvailabilityRowCount} source-checked berry availability rows, got ${actualBerryAvailabilityRowCount}.`,
    );
  }
  for (const [
    versionGroupSlug,
    actualSlugs,
  ] of actualBerryAvailabilitySlugsByVersionGroup.entries()) {
    if (!expectedBerryAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      context.errors.push(
        `reference.item_availability: unexpected berry availability rows for version group ${versionGroupSlug}.`,
      );
      continue;
    }
    const expectedSlugs =
      expectedBerryAvailabilitySlugsByVersionGroup.get(versionGroupSlug);
    const actualSet = new Set(actualSlugs);
    const expectedSet = new Set(expectedSlugs);
    for (const slug of actualSet) {
      if (!expectedSet.has(slug)) {
        context.errors.push(
          `reference.item_availability: unexpected berry ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    for (const slug of expectedSet) {
      if (!actualSet.has(slug)) {
        context.errors.push(
          `reference.item_availability: missing berry ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    if (actualSlugs.length !== actualSet.size) {
      context.errors.push(
        `reference.item_availability: duplicate berry availability row in ${versionGroupSlug}.`,
      );
    }
  }
  for (const versionGroupSlug of expectedBerryAvailabilitySlugsByVersionGroup.keys()) {
    if (!actualBerryAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      context.errors.push(
        `reference.item_availability: missing source-checked berry availability rows for version group ${versionGroupSlug}.`,
      );
    }
  }
  const zCrystalSlugsById = new Map(
    expectedZCrystalItemSlugs
      .map((slug) => itemsBySlug.get(slug))
      .filter(Boolean)
      .map((item) => [item.id, item.slug]),
  );
  const expectedZCrystalSlugSet = new Set(expectedZCrystalItemSlugs);
  const actualZCrystalAvailabilitySlugsByVersionGroup = new Map();
  let actualZCrystalAvailabilityRowCount = 0;
  for (const row of normalizedAvailabilityRows) {
    const itemSlug = zCrystalSlugsById.get(row.item_id);
    if (!itemSlug) continue;
    actualZCrystalAvailabilityRowCount += 1;
    if (!expectedZCrystalSlugSet.has(itemSlug)) {
      context.errors.push(
        "reference.item_availability: unexpected Z-Crystal availability item " +
          itemSlug +
          ".",
      );
    }
    if (
      row.game_id !== null ||
      row.availability_method_id !== null ||
      scopeOperation(row) !== "add"
    ) {
      context.errors.push(
        relative(row.filePath) +
          ": Z-Crystal availability row " +
          itemAvailabilityRowLabel(row) +
          " must remain a source-checked version-group add row without game/method overrides.",
      );
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    const versionGroupSlug =
      versionGroup?.slug ?? "unknown-" + row.version_group_id;
    if (!actualZCrystalAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      actualZCrystalAvailabilitySlugsByVersionGroup.set(versionGroupSlug, []);
    }
    actualZCrystalAvailabilitySlugsByVersionGroup
      .get(versionGroupSlug)
      .push(itemSlug);
  }
  if (
    actualZCrystalAvailabilityRowCount !== expectedZCrystalAvailabilityRowCount
  ) {
    context.errors.push(
      "reference.item_availability: expected " +
        expectedZCrystalAvailabilityRowCount +
        " source-checked Z-Crystal availability rows, got " +
        actualZCrystalAvailabilityRowCount +
        ".",
    );
  }
  for (const [
    versionGroupSlug,
    actualSlugs,
  ] of actualZCrystalAvailabilitySlugsByVersionGroup.entries()) {
    if (
      !expectedZCrystalAvailabilitySlugsByVersionGroup.has(versionGroupSlug)
    ) {
      context.errors.push(
        "reference.item_availability: unexpected Z-Crystal availability rows for version group " +
          versionGroupSlug +
          ".",
      );
      continue;
    }
    const expectedSlugs =
      expectedZCrystalAvailabilitySlugsByVersionGroup.get(versionGroupSlug);
    const actualSet = new Set(actualSlugs);
    const expectedSet = new Set(expectedSlugs);
    for (const slug of actualSet) {
      if (!expectedSet.has(slug)) {
        context.errors.push(
          "reference.item_availability: unexpected Z-Crystal " +
            slug +
            " in " +
            versionGroupSlug +
            ".",
        );
      }
    }
    for (const slug of expectedSet) {
      if (!actualSet.has(slug)) {
        context.errors.push(
          "reference.item_availability: missing Z-Crystal " +
            slug +
            " in " +
            versionGroupSlug +
            ".",
        );
      }
    }
    if (actualSlugs.length !== actualSet.size) {
      context.errors.push(
        "reference.item_availability: duplicate Z-Crystal availability row in " +
          versionGroupSlug +
          ".",
      );
    }
  }
  for (const versionGroupSlug of expectedZCrystalAvailabilitySlugsByVersionGroup.keys()) {
    if (!actualZCrystalAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      context.errors.push(
        "reference.item_availability: missing source-checked Z-Crystal availability rows for version group " +
          versionGroupSlug +
          ".",
      );
    }
  }
  for (const [
    categoryLabel,
    expectedFingerprint,
  ] of sourceVerifiedItemCategoryFingerprints.entries()) {
    const scopedRows = normalizedAvailabilityRows.filter((row) => {
      const item = itemsById.get(row.item_id);
      return item && expectedFingerprint.slugs.has(item.slug);
    });
    const actualCount = scopedRows.length;
    const actualFingerprint = itemAvailabilitySourceFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      context.errors.push(
        "reference.item_availability: " +
          categoryLabel +
          " source-verified fingerprint expected " +
          expectedFingerprint.count +
          "/" +
          expectedFingerprint.sha256 +
          ", got " +
          actualCount +
          "/" +
          actualFingerprint +
          ".",
      );
    }
  }
  for (const { row, filePath } of rows) {
    const label = itemAvailabilityRowLabel(row);
    if (!itemIds.has(row.item_id)) {
      context.errors.push(
        `${relative(filePath)}: item availability row ${label} references unseeded item_id ${row.item_id}.`,
      );
    }
    if (!versionGroupIds.has(row.version_group_id)) {
      context.errors.push(
        `${relative(filePath)}: item availability row ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (
      row.availability_method_id !== null &&
      !methodIds.has(row.availability_method_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: item availability row ${label} references unseeded availability_method_id ${row.availability_method_id}.`,
      );
    }
    if (row.game_id !== null) {
      const game = gamesById.get(row.game_id);
      if (!game) {
        context.errors.push(
          `${relative(filePath)}: item availability row ${label} references unseeded game_id ${row.game_id}.`,
        );
      }
      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        context.errors.push(
          `${relative(filePath)}: item availability row ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }
  }
  const availabilityRowsByVersionGroup = new Map();
  for (const { row } of rows) {
    if (!availabilityRowsByVersionGroup.has(row.version_group_id)) {
      availabilityRowsByVersionGroup.set(row.version_group_id, []);
    }
    availabilityRowsByVersionGroup.get(row.version_group_id).push(row);
  }
  for (const versionGroupId of availabilityRowsByVersionGroup.keys()) {
    if (!sourceVerifiedFingerprintsByVersionGroup.has(versionGroupId)) {
      context.errors.push(
        `reference.item_availability: unexpected rows for version_group_id ${versionGroupId}. Item availability scope should be added only with an explicit source decision and pinned fingerprint.`,
      );
    }
  }
  for (const [
    versionGroupId,
    expectedFingerprint,
  ] of sourceVerifiedFingerprintsByVersionGroup.entries()) {
    const scopedRows = availabilityRowsByVersionGroup.get(versionGroupId) ?? [];
    const actualCount = scopedRows.length;
    const actualFingerprint = itemAvailabilitySourceFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      context.errors.push(
        `reference.item_availability: version_group_id ${versionGroupId} source-verified item availability fingerprint expected ${expectedFingerprint.count}/${expectedFingerprint.sha256}, got ${actualCount}/${actualFingerprint}.`,
      );
    }
  }
}

export function assertNoSourceNotesColumns(context, tableRows) {
  for (const [tableName, rows] of tableRows) {
    for (const { row, filePath } of rows) {
      if (Object.hasOwn(row, "source_notes")) {
        context.errors.push(
          `${relative(filePath)}: ${tableName} row ${row.id ?? "(unknown id)"} must not seed source_notes; keep source provenance in SQL comments and docs.`,
        );
      }
    }
  }
}

export function assertMoveAvailabilityRows(context, tableRows) {
  const rows = tableRows.get("reference.move_availability") ?? [];
  const moveRows = tableRows.get("reference.moves") ?? [];
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const contentScopes = tableRows.get("reference.game_content_scopes") ?? [];
  const movesById = mapRowsByColumn(moveRows, "id");
  const versionGroupsById = mapRowsByColumn(versionGroups, "id");
  const gamesById = mapRowsByColumn(games, "id");
  const contentScopeKeys = new Set(
    contentScopes.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const expectedCountsByVersionGroup = new Map([
    [1, 165],
    [2, 165],
    [3, 251],
    [4, 251],
    [5, 354],
    [6, 354],
    [7, 354],
    [8, 467],
    [9, 467],
    [10, 467],
    [11, 559],
    [12, 559],
    [13, 617],
    [14, 621],
    [15, 701],
    [16, 710],
    [17, 227],
    [18, 698],
    [21, 512],
    [22, 177],
    [23, 697],
    [26, 340],
  ]);
  const moveIdRange = (minMoveId, maxMoveId) =>
    Array.from(
      { length: maxMoveId - minMoveId + 1 },
      (_, index) => minMoveId + index,
    );
  const moveIdsFromRanges = (ranges) =>
    ranges.flatMap((range) =>
      Array.isArray(range) ? moveIdRange(range[0], range[1]) : [range],
    );
  const genericZMoveRepresentativeIds = moveIdRange(622, 656).filter(
    (moveId) => moveId % 2 === 0,
  );
  const sourceVerifiedCompleteMoveRangesByVersionGroup = new Map([
    [1, { minMoveId: 1, maxMoveId: 165, label: "Red / Blue" }],
    [2, { minMoveId: 1, maxMoveId: 165, label: "Yellow" }],
    [3, { minMoveId: 1, maxMoveId: 251, label: "Gold / Silver" }],
    [4, { minMoveId: 1, maxMoveId: 251, label: "Crystal" }],
    [5, { minMoveId: 1, maxMoveId: 354, label: "Ruby / Sapphire" }],
    [6, { minMoveId: 1, maxMoveId: 354, label: "FireRed / LeafGreen" }],
    [7, { minMoveId: 1, maxMoveId: 354, label: "Emerald" }],
    [8, { minMoveId: 1, maxMoveId: 467, label: "Diamond / Pearl" }],
    [9, { minMoveId: 1, maxMoveId: 467, label: "Platinum" }],
    [10, { minMoveId: 1, maxMoveId: 467, label: "HeartGold / SoulSilver" }],
    [11, { minMoveId: 1, maxMoveId: 559, label: "Black / White" }],
    [12, { minMoveId: 1, maxMoveId: 559, label: "Black 2 / White 2" }],
    [13, { minMoveId: 1, maxMoveId: 617, label: "X / Y" }],
    [
      14,
      { minMoveId: 1, maxMoveId: 621, label: "Omega Ruby / Alpha Sapphire" },
    ],
  ]);
  const sourceVerifiedCompleteMoveSetsByVersionGroup = new Map([
    [
      15,
      {
        label: "Sun / Moon",
        moveIds: [
          ...moveIdRange(1, 621),
          ...genericZMoveRepresentativeIds,
          ...moveIdRange(658, 719),
        ],
      },
    ],
    [
      16,
      {
        label: "Ultra Sun / Ultra Moon",
        moveIds: [
          ...moveIdRange(1, 621),
          ...genericZMoveRepresentativeIds,
          ...moveIdRange(658, 728),
        ],
      },
    ],
    [
      17,
      {
        label: "Let's Go, Pikachu! / Let's Go, Eevee!",
        moveIds: moveIdsFromRanges([
          [1, 165],
          182,
          188,
          200,
          224,
          227,
          231,
          [242, 243],
          247,
          252,
          257,
          261,
          263,
          [269, 270],
          276,
          [280, 281],
          339,
          347,
          355,
          364,
          369,
          389,
          394,
          [398, 399],
          [403, 406],
          417,
          420,
          430,
          438,
          446,
          453,
          483,
          492,
          499,
          [503, 504],
          525,
          529,
          583,
          585,
          [605, 606],
          [729, 742],
        ]),
      },
    ],
    [
      18,
      {
        label: "Sword / Shield",
        moveIds: moveIdsFromRanges([
          1,
          [5, 12],
          [14, 25],
          [28, 40],
          [42, 48],
          [50, 81],
          [83, 95],
          [97, 98],
          [100, 111],
          [113, 116],
          118,
          120,
          [122, 124],
          [126, 127],
          [129, 130],
          [133, 139],
          [141, 144],
          147,
          [150, 157],
          [160, 165],
          [167, 168],
          170,
          [172, 184],
          [186, 192],
          [194, 215],
          217,
          [219, 221],
          [223, 227],
          [229, 236],
          [238, 264],
          [266, 273],
          [275, 286],
          288,
          [291, 292],
          [295, 299],
          [303, 315],
          317,
          319,
          [321, 323],
          [325, 326],
          [328, 345],
          [347, 353],
          [355, 356],
          [359, 362],
          [364, 372],
          [374, 375],
          [379, 380],
          [383, 385],
          [387, 390],
          [392, 425],
          [427, 428],
          430,
          [432, 442],
          444,
          [446, 447],
          [450, 455],
          [457, 463],
          [467, 476],
          [478, 480],
          [482, 484],
          [486, 497],
          [499, 506],
          [508, 515],
          [517, 530],
          [532, 536],
          [538, 546],
          [548, 562],
          [564, 568],
          [570, 592],
          [594, 599],
          [601, 616],
          [618, 620],
          [659, 664],
          [666, 670],
          [673, 685],
          [687, 689],
          [691, 694],
          [704, 718],
          [720, 722],
          [742, 826],
          [10001, 10033],
        ]),
      },
    ],
    [
      21,
      {
        label: "Brilliant Diamond / Shining Pearl",
        moveIds: moveIdsFromRanges([
          1,
          [5, 12],
          [14, 25],
          [28, 40],
          [42, 48],
          [50, 81],
          [83, 95],
          [97, 98],
          [100, 111],
          [113, 116],
          118,
          120,
          [122, 124],
          [126, 127],
          [129, 130],
          [133, 139],
          [141, 144],
          [147, 148],
          [150, 157],
          [160, 168],
          170,
          [172, 184],
          [186, 192],
          [194, 215],
          217,
          [219, 221],
          [223, 227],
          [229, 264],
          [266, 273],
          [275, 286],
          288,
          [291, 292],
          [294, 299],
          [303, 315],
          317,
          319,
          [321, 323],
          [325, 326],
          [328, 345],
          [347, 356],
          [359, 362],
          [364, 372],
          [374, 375],
          [379, 380],
          [383, 385],
          [387, 425],
          [427, 428],
          [430, 442],
          444,
          [446, 455],
          [457, 465],
          [467, 476],
          [478, 480],
          [482, 484],
          [486, 497],
          [499, 506],
          [509, 515],
          517,
          [521, 526],
          [528, 530],
          534,
          536,
          538,
          540,
          542,
          [555, 556],
          562,
          [564, 566],
          568,
          [572, 575],
          577,
          [579, 581],
          [583, 586],
          [589, 590],
          [595, 599],
          602,
          [604, 605],
          [608, 609],
          [611, 612],
          [618, 620],
          [667, 668],
          670,
          [672, 673],
          675,
          679,
          682,
          684,
          692,
          694,
          707,
          710,
          715,
          776,
          791,
        ]),
      },
    ],
    [
      22,
      {
        label: "Pokémon Legends: Arceus",
        moveIds: moveIdsFromRanges([
          [7, 9],
          14,
          16,
          33,
          38,
          40,
          42,
          44,
          [52, 53],
          56,
          [58, 59],
          63,
          71,
          [77, 80],
          [84, 87],
          [93, 95],
          98,
          100,
          102,
          105,
          116,
          120,
          126,
          129,
          135,
          139,
          141,
          145,
          147,
          [150, 151],
          [156, 157],
          161,
          163,
          165,
          172,
          181,
          183,
          [188, 191],
          196,
          200,
          [205, 206],
          209,
          224,
          231,
          237,
          239,
          242,
          [246, 247],
          249,
          301,
          310,
          [314, 315],
          318,
          326,
          332,
          334,
          337,
          339,
          [344, 345],
          [347, 348],
          352,
          355,
          370,
          394,
          396,
          [398, 401],
          [403, 406],
          [408, 409],
          [412, 414],
          [416, 418],
          [420, 428],
          430,
          434,
          437,
          440,
          442,
          444,
          446,
          449,
          [451, 453],
          [457, 460],
          [462, 467],
          474,
          491,
          506,
          [522, 523],
          528,
          542,
          [555, 556],
          577,
          [583, 585],
          595,
          605,
          608,
          667,
          670,
          710,
          796,
          [827, 850],
        ]),
      },
    ],
    [
      23,
      {
        label: "Scarlet / Violet",
        moveIds: moveIdsFromRanges([
          1,
          [5, 12],
          [14, 25],
          [28, 40],
          [42, 48],
          [50, 65],
          [67, 81],
          [83, 95],
          [97, 98],
          [100, 111],
          [113, 116],
          118,
          120,
          [122, 124],
          [126, 127],
          129,
          133,
          [135, 139],
          141,
          [143, 144],
          147,
          [150, 154],
          [156, 157],
          [160, 168],
          [172, 184],
          [186, 189],
          [191, 192],
          [194, 215],
          217,
          [219, 221],
          [223, 227],
          [229, 232],
          [234, 236],
          [238, 257],
          [259, 264],
          266,
          [268, 273],
          [275, 276],
          278,
          [280, 286],
          [291, 292],
          [294, 299],
          [303, 311],
          [313, 315],
          317,
          319,
          [321, 323],
          [325, 326],
          [328, 345],
          [347, 356],
          [359, 362],
          [364, 372],
          374,
          [379, 380],
          [383, 385],
          [387, 425],
          [427, 428],
          430,
          [432, 442],
          444,
          [446, 447],
          [449, 455],
          [457, 465],
          [467, 474],
          476,
          [478, 479],
          [482, 484],
          [486, 497],
          [499, 506],
          [508, 515],
          [517, 529],
          [532, 535],
          [538, 542],
          [547, 560],
          562,
          [564, 566],
          568,
          [570, 577],
          [580, 581],
          [583, 587],
          [589, 598],
          [602, 611],
          [618, 621],
          [659, 670],
          672,
          [675, 676],
          [678, 684],
          686,
          [688, 694],
          [705, 707],
          [709, 711],
          [713, 716],
          722,
          [744, 752],
          756,
          [775, 778],
          [780, 791],
          793,
          [796, 919],
        ]),
      },
    ],
    [
      26,
      {
        label: "Pokémon Legends: Z-A",
        moveIds: moveIdsFromRanges([
          4,
          [6, 9],
          [13, 14],
          [16, 19],
          22,
          29,
          [33, 34],
          36,
          [38, 40],
          [42, 48],
          [52, 61],
          [63, 64],
          71,
          [73, 81],
          [83, 95],
          [97, 98],
          100,
          [102, 106],
          [108, 109],
          [113, 116],
          118,
          120,
          122,
          [126, 127],
          [129, 130],
          133,
          [137, 138],
          141,
          143,
          147,
          [150, 151],
          153,
          155,
          157,
          [160, 164],
          172,
          174,
          176,
          [182, 183],
          188,
          [191, 192],
          [195, 197],
          200,
          [202, 207],
          209,
          211,
          219,
          [223, 225],
          [231, 232],
          [234, 236],
          239,
          242,
          [245, 250],
          252,
          257,
          259,
          261,
          263,
          [268, 269],
          273,
          280,
          282,
          [295, 297],
          299,
          [304, 305],
          [307, 308],
          313,
          315,
          [317, 319],
          325,
          [328, 334],
          [337, 341],
          [344, 345],
          [347, 348],
          350,
          352,
          [369, 370],
          377,
          390,
          392,
          394,
          396,
          [398, 400],
          [402, 414],
          [416, 418],
          [420, 425],
          [427, 428],
          430,
          [434, 438],
          [441, 444],
          446,
          [451, 453],
          [457, 458],
          [463, 464],
          466,
          473,
          480,
          482,
          484,
          488,
          [490, 491],
          503,
          509,
          521,
          [523, 524],
          [526, 530],
          [532, 533],
          535,
          538,
          540,
          542,
          [546, 548],
          [555, 556],
          560,
          564,
          [566, 567],
          [570, 571],
          [573, 577],
          [583, 586],
          588,
          [591, 596],
          598,
          601,
          605,
          609,
          [611, 621],
          [659, 660],
          665,
          [669, 670],
          679,
          687,
          693,
          [705, 706],
          708,
          710,
          712,
          721,
          742,
          748,
          753,
          [783, 784],
          786,
          794,
          796,
          [799, 800],
          [812, 815],
          830,
          839,
          854,
          856,
          858,
          862,
          864,
          866,
          874,
          880,
          [885, 886],
          [889, 891],
          893,
          920,
        ]),
      },
    ],
  ]);
  if (rows.length !== 9713) {
    context.errors.push(
      `reference.move_availability: expected 9713 curated move availability rows, got ${rows.length}.`,
    );
  }
  addCompositeDuplicateErrors(
    context,
    "reference.move_availability",
    rows.filter(({ row }) => row.game_id === null),
    "move_id/version_group_id where game_id IS NULL",
    (row) => `${row.move_id}/${row.version_group_id}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.move_availability",
    rows.filter(({ row }) => row.game_id !== null),
    "move_id/version_group_id/game_id where game_id IS NOT NULL",
    (row) => `${row.move_id}/${row.version_group_id}/${row.game_id}`,
  );
  const countsByVersionGroup = new Map();
  for (const { row } of rows) {
    countsByVersionGroup.set(
      row.version_group_id,
      (countsByVersionGroup.get(row.version_group_id) ?? 0) + 1,
    );
  }
  for (const [
    versionGroupId,
    expectedCount,
  ] of expectedCountsByVersionGroup.entries()) {
    const actualCount = countsByVersionGroup.get(versionGroupId) ?? 0;
    if (actualCount !== expectedCount) {
      context.errors.push(
        `reference.move_availability: version_group_id ${versionGroupId} expected ${expectedCount} rows, got ${actualCount}.`,
      );
    }
  }
  const seededVersionGroupIds = new Set(versionGroups.map(({ row }) => row.id));
  for (const versionGroupId of countsByVersionGroup.keys()) {
    if (
      !expectedCountsByVersionGroup.has(versionGroupId) &&
      seededVersionGroupIds.has(versionGroupId)
    ) {
      context.errors.push(
        `reference.move_availability: unexpected rows for version_group_id ${versionGroupId}. Optional DLC move scope should be added only with an explicit source decision.`,
      );
    }
  }
  for (const [
    versionGroupId,
    expectedRange,
  ] of sourceVerifiedCompleteMoveRangesByVersionGroup.entries()) {
    const actualMoveIds = rows
      .filter(
        ({ row }) =>
          row.version_group_id === versionGroupId && row.game_id === null,
      )
      .map(({ row }) => row.move_id)
      .sort((a, b) => a - b);
    const expectedMoveIds = moveIdRange(
      expectedRange.minMoveId,
      expectedRange.maxMoveId,
    );
    if (actualMoveIds.join("|") !== expectedMoveIds.join("|")) {
      context.errors.push(
        `reference.move_availability: ${expectedRange.label} source-verified complete move range expected ${expectedRange.minMoveId}-${expectedRange.maxMoveId}, got [${actualMoveIds.join(", ")}].`,
      );
    }
  }
  for (const [
    versionGroupId,
    expectedSet,
  ] of sourceVerifiedCompleteMoveSetsByVersionGroup.entries()) {
    const actualMoveIds = rows
      .filter(
        ({ row }) =>
          row.version_group_id === versionGroupId && row.game_id === null,
      )
      .map(({ row }) => row.move_id)
      .sort((a, b) => a - b);
    if (actualMoveIds.join("|") !== expectedSet.moveIds.join("|")) {
      context.errors.push(
        `reference.move_availability: ${expectedSet.label} source-verified complete move set expected [${expectedSet.moveIds.join(", ")}], got [${actualMoveIds.join(", ")}].`,
      );
    }
  }
  const zMoveVersionGroupIds = new Set([15, 16]);
  const maxMoveVersionGroupIds = new Set([18]);
  const gMaxMoveVersionGroupIds = new Set([18]);
  for (const { row, filePath } of rows) {
    const label = moveAvailabilityRowLabel(row);
    const move = movesById.get(row.move_id);
    if (!move) {
      context.errors.push(
        `${relative(filePath)}: move availability row ${label} references unseeded move_id ${row.move_id}.`,
      );
      continue;
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      context.errors.push(
        `${relative(filePath)}: move availability row ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
      continue;
    }
    if (versionGroup.generation_id < move.introduced_generation_id) {
      context.errors.push(
        `${relative(filePath)}: move availability row ${label} makes move ${move.slug} available before its introduced generation.`,
      );
    }
    if (scopeOperation(row) !== "add") {
      context.errors.push(
        `${relative(filePath)}: move availability row ${label} must remain a positive add row until a source-backed remove/override move scope is explicitly modeled.`,
      );
    }
    if (row.game_id !== null) {
      context.errors.push(
        `${relative(filePath)}: move availability row ${label} uses game_id ${row.game_id}, but the current audited move availability scope is version-group-wide only. Add a source decision before seeding game-specific move availability.`,
      );
    }
    if (
      move.move_kind_id === 2 &&
      !zMoveVersionGroupIds.has(row.version_group_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: Z-Move ${move.slug} is only expected in Sun/Moon or Ultra Sun/Ultra Moon availability.`,
      );
    }
    if (
      move.move_kind_id === 3 &&
      !maxMoveVersionGroupIds.has(row.version_group_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: Max Move ${move.slug} is only expected in Sword/Shield availability.`,
      );
    }
    if (
      move.move_kind_id === 4 &&
      !gMaxMoveVersionGroupIds.has(row.version_group_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: G-Max Move ${move.slug} is only expected in Sword/Shield availability.`,
      );
    }
    if (row.game_id !== null) {
      const game = gamesById.get(row.game_id);
      if (!game) {
        context.errors.push(
          `${relative(filePath)}: move availability row ${label} references unseeded game_id ${row.game_id}.`,
        );
      }
      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        context.errors.push(
          `${relative(filePath)}: move availability row ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }
  }
}

export function assertMoveMachineRows(context, tableRows) {
  const rows = tableRows.get("reference.move_machines") ?? [];
  const moveRows = tableRows.get("reference.moves") ?? [];
  const versionGroupRows = tableRows.get("reference.version_groups") ?? [];
  const dependencyRows =
    tableRows.get("reference.content_scope_dependencies") ?? [];
  const gameRows = tableRows.get("reference.games") ?? [];
  const methodRows = tableRows.get("reference.learn_methods") ?? [];
  const contentScopeRows = tableRows.get("reference.game_content_scopes") ?? [];
  const moveAvailabilityRows =
    tableRows.get("reference.move_availability") ?? [];
  const movesById = mapRowsByColumn(moveRows, "id");
  const versionGroupsById = mapRowsByColumn(versionGroupRows, "id");
  const gamesById = mapRowsByColumn(gameRows, "id");
  const methodsById = mapRowsByColumn(methodRows, "id");
  const methodsBySlug = mapRowsByColumn(methodRows, "slug");
  const machineMethodIds = new Set(
    [
      methodsBySlug.get("tm")?.id,
      methodsBySlug.get("hm")?.id,
      methodsBySlug.get("tr")?.id,
    ].filter((id) => id !== undefined),
  );
  const methodLabelPatterns = new Map([
    [methodsBySlug.get("tm")?.id, /^TM[0-9]{2,3}$/],
    [methodsBySlug.get("hm")?.id, /^HM[0-9]{2}$/],
    [methodsBySlug.get("tr")?.id, /^TR[0-9]{2}$/],
  ]);
  const contentScopeKeys = new Set(
    contentScopeRows.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const moveAvailabilityKeys = new Set(
    moveAvailabilityRows.map(
      ({ row }) =>
        `${row.move_id}/${row.version_group_id}/${row.game_id ?? "vg"}`,
    ),
  );
  const hasMoveAvailability = (moveId, versionGroupId, gameId) => {
    for (const currentVersionGroupId of collectVersionGroupClosureIds(
      versionGroupsById,
      dependencyRows,
      versionGroupId,
    )) {
      if (
        moveAvailabilityKeys.has(
          `${moveId}/${currentVersionGroupId}/${gameId ?? "vg"}`,
        )
      )
        return true;
      if (moveAvailabilityKeys.has(`${moveId}/${currentVersionGroupId}/vg`))
        return true;
    }
    return false;
  };
  const expectedCountsByVersionGroup = new Map([
    [1, 55],
    [2, 55],
    [3, 57],
    [4, 57],
    [5, 58],
    [6, 57],
    [7, 58],
    [8, 100],
    [9, 100],
    [10, 100],
    [11, 101],
    [12, 101],
    [13, 105],
    [14, 107],
    [15, 100],
    [16, 100],
    [17, 60],
    [18, 200],
    [19, 0],
    [20, 0],
    [21, 100],
    [23, 171],
    [24, 30],
    [25, 28],
    [26, 107],
    [27, 53],
  ]);
  const sourceVerifiedFingerprintsByVersionGroup = new Map([
    [
      1,
      {
        count: 55,
        sha256:
          "bb5e3dda5f4f089d3c54ee8fb52358e02a3503dbf5d92e527160fb08175104fe",
      },
    ],
    [
      2,
      {
        count: 55,
        sha256:
          "bb5e3dda5f4f089d3c54ee8fb52358e02a3503dbf5d92e527160fb08175104fe",
      },
    ],
    [
      3,
      {
        count: 57,
        sha256:
          "a9798bccd6fabcd8b7af2a83c6bc7229a2079870f8640d3c15fe6507dab6575c",
      },
    ],
    [
      4,
      {
        count: 57,
        sha256:
          "a9798bccd6fabcd8b7af2a83c6bc7229a2079870f8640d3c15fe6507dab6575c",
      },
    ],
    [
      5,
      {
        count: 58,
        sha256:
          "28ea6af103fc375a092477d068d025b18795f3a3861883a109d1eb08901c3350",
      },
    ],
    [
      6,
      {
        count: 57,
        sha256:
          "575d7a03b2862eee19892151074029b1929bd9e0373a723c153c43f1cc4a9e9c",
      },
    ],
    [
      7,
      {
        count: 58,
        sha256:
          "28ea6af103fc375a092477d068d025b18795f3a3861883a109d1eb08901c3350",
      },
    ],
    [
      8,
      {
        count: 100,
        sha256:
          "d198003bfbdd42d695f217c46e2b3e1235c40ce54a3b9c44d3625ce54da8ac4c",
      },
    ],
    [
      9,
      {
        count: 100,
        sha256:
          "d198003bfbdd42d695f217c46e2b3e1235c40ce54a3b9c44d3625ce54da8ac4c",
      },
    ],
    [
      10,
      {
        count: 100,
        sha256:
          "08cb4febad957bc4726eff1c4904caf8b334f651e7c418a67ba8f930f766ecf5",
      },
    ],
    [
      11,
      {
        count: 101,
        sha256:
          "74db78f9db36334e792699c300ca2f5e6192bc31fa443af377ecd62503631550",
      },
    ],
    [
      12,
      {
        count: 101,
        sha256:
          "74db78f9db36334e792699c300ca2f5e6192bc31fa443af377ecd62503631550",
      },
    ],
    [
      13,
      {
        count: 105,
        sha256:
          "e1696e8ceb6bba648ac31747404884ab02945d2a34400e77d8df0f771efbc5b4",
      },
    ],
    [
      14,
      {
        count: 107,
        sha256:
          "b8f625374dbdecaf6ab4fa9dc56da2055044e1c55ae50efee0d855055ef9ae66",
      },
    ],
    [
      15,
      {
        count: 100,
        sha256:
          "3ab67a1e22d54e361db82423511c7339f9565a513033d09f4128fe18c17e1d32",
      },
    ],
    [
      16,
      {
        count: 100,
        sha256:
          "3ab67a1e22d54e361db82423511c7339f9565a513033d09f4128fe18c17e1d32",
      },
    ],
    [
      17,
      {
        count: 60,
        sha256:
          "78f794c660d7dc62156fcf8c81b42abe12c5f1fce27a116562b8106f860f5edb",
      },
    ],
    [
      18,
      {
        count: 200,
        sha256:
          "e135d0a2affd74f2e7b84e681c25cb6eeb6dfcea069a2267206d1b492d291d6d",
      },
    ],
    [
      21,
      {
        count: 100,
        sha256:
          "222c58504ecacfdfdb8d87b4b358df987f6732f9ce8013b3475d54fc8ebc30ea",
      },
    ],
    [
      23,
      {
        count: 171,
        sha256:
          "f9c0302a0cc5b916b052f66bfbb6760bafe018e7507fb35c1d5c1ef1168232d8",
      },
    ],
    [
      24,
      {
        count: 30,
        sha256:
          "20461c8ef78beb0bf682c127e2ea80b4aab96de7684b1931101e9a03b22c6a42",
      },
    ],
    [
      25,
      {
        count: 28,
        sha256:
          "f760829ef84e656420a57f7cf898465337c37faada608d8af9085fa4bef17ce6",
      },
    ],
    [
      26,
      {
        count: 107,
        sha256:
          "3a8e5398b76d345f824456e54a29d8c09350c25e439254a9aba7f33e295e783c",
      },
    ],
    [
      27,
      {
        count: 53,
        sha256:
          "9145824ad254e840e67bb679729f8004696fc13038030c83fdaebe36184cec49",
      },
    ],
  ]);
  const moveMachineMappingFingerprint = (machineRows) =>
    createHash("sha256")
      .update(
        machineRows
          .toSorted(
            (a, b) =>
              (a.game_id ?? 0) - (b.game_id ?? 0) ||
              a.learn_method_id - b.learn_method_id ||
              String(a.machine_label).localeCompare(String(b.machine_label)),
          )
          .map(
            (row) =>
              `${row.game_id ?? "vg"}:${row.learn_method_id}:${row.machine_label}:${row.move_id}`,
          )
          .join("|"),
      )
      .digest("hex");
  const countsByVersionGroup = new Map();
  for (const { row } of rows) {
    countsByVersionGroup.set(
      row.version_group_id,
      (countsByVersionGroup.get(row.version_group_id) ?? 0) + 1,
    );
  }
  for (const [
    versionGroupId,
    expectedCount,
  ] of expectedCountsByVersionGroup.entries()) {
    const actualCount = countsByVersionGroup.get(versionGroupId) ?? 0;
    if (actualCount !== expectedCount) {
      context.errors.push(
        `reference.move_machines: version_group_id ${versionGroupId} expected ${expectedCount} rows, got ${actualCount}.`,
      );
    }
  }
  const seededVersionGroupIds = new Set(
    versionGroupRows.map(({ row }) => row.id),
  );
  for (const versionGroupId of countsByVersionGroup.keys()) {
    if (
      !expectedCountsByVersionGroup.has(versionGroupId) &&
      seededVersionGroupIds.has(versionGroupId)
    ) {
      context.errors.push(
        `reference.move_machines: unexpected rows for version_group_id ${versionGroupId}. Machine catalog scope should be added only with an explicit source decision.`,
      );
    }
  }
  for (const [
    versionGroupId,
    expectedFingerprint,
  ] of sourceVerifiedFingerprintsByVersionGroup.entries()) {
    const scopedRows = rows
      .filter(({ row }) => row.version_group_id === versionGroupId)
      .map(({ row }) => row);
    const actualCount = scopedRows.length;
    const actualFingerprint = moveMachineMappingFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      context.errors.push(
        `reference.move_machines: version_group_id ${versionGroupId} source-verified machine mapping fingerprint expected ${expectedFingerprint.count}/${expectedFingerprint.sha256}, got ${actualCount}/${actualFingerprint}.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "reference.move_machines",
    rows.filter(({ row }) => row.game_id === null),
    "version_group_id/learn_method_id/machine_label where game_id IS NULL",
    (row) =>
      `${row.version_group_id}/${row.learn_method_id}/${row.machine_label}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.move_machines",
    rows.filter(({ row }) => row.game_id !== null),
    "version_group_id/game_id/learn_method_id/machine_label where game_id IS NOT NULL",
    (row) =>
      `${row.version_group_id}/${row.game_id}/${row.learn_method_id}/${row.machine_label}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "reference.move_machines",
    rows,
    "version_group_id/game_id",
    (row) => `${row.version_group_id}/${row.game_id ?? "vg"}`,
  );
  for (const { row, filePath } of rows) {
    const label = moveMachineRowLabel(row);
    const expectedId = expectedMoveMachineId(row);
    if (expectedId !== null && row.id !== expectedId) {
      context.errors.push(
        `${relative(filePath)}: move machine ${label} expected deterministic id ${expectedId}, got ${row.id}.`,
      );
    }
    const move = movesById.get(row.move_id);
    if (!move) {
      context.errors.push(
        `${relative(filePath)}: move machine ${label} references unseeded move_id ${row.move_id}.`,
      );
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      context.errors.push(
        `${relative(filePath)}: move machine ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    } else if (
      move &&
      versionGroup.generation_id < move.introduced_generation_id
    ) {
      context.errors.push(
        `${relative(filePath)}: move machine ${label} assigns move ${move.slug} before its introduced generation.`,
      );
    }
    if (!machineMethodIds.has(row.learn_method_id)) {
      context.errors.push(
        `${relative(filePath)}: move machine ${label} must use TM/HM/TR learn_method_id, got ${row.learn_method_id}.`,
      );
    }
    const labelPattern = methodLabelPatterns.get(row.learn_method_id);
    if (!labelPattern || !labelPattern.test(row.machine_label)) {
      const method =
        methodsById.get(row.learn_method_id)?.slug ?? row.learn_method_id;
      context.errors.push(
        `${relative(filePath)}: move machine ${label} has machine_label ${row.machine_label} that does not match method ${method}.`,
      );
    }
    if (row.game_id !== null) {
      if (!gamesById.has(row.game_id)) {
        context.errors.push(
          `${relative(filePath)}: move machine ${label} references unseeded game_id ${row.game_id}.`,
        );
      }
      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        context.errors.push(
          `${relative(filePath)}: move machine ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }
    if (
      move &&
      versionGroup &&
      !hasMoveAvailability(row.move_id, row.version_group_id, row.game_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: move machine ${label} references move ${move.slug}, which is not available in version_group_id ${row.version_group_id}.`,
      );
    }
  }
  const machineRowsByVersionGroup = new Map();
  for (const { row } of rows) {
    if (!machineRowsByVersionGroup.has(row.version_group_id)) {
      machineRowsByVersionGroup.set(row.version_group_id, []);
    }
    machineRowsByVersionGroup.get(row.version_group_id).push(row);
  }
  for (const { row, filePath } of rows) {
    if (scopeOperation(row) !== "add") continue;
    const priorScopeIds = [
      ...collectVersionGroupClosureIds(
        versionGroupsById,
        dependencyRows,
        row.version_group_id,
      ),
    ].filter((versionGroupId) => versionGroupId !== row.version_group_id);
    const key = `${row.game_id ?? "vg"}/${row.learn_method_id}/${row.machine_label}`;
    for (const priorScopeId of priorScopeIds) {
      const duplicate = (
        machineRowsByVersionGroup.get(priorScopeId) ?? []
      ).find(
        (priorRow) =>
          `${priorRow.game_id ?? "vg"}/${priorRow.learn_method_id}/${priorRow.machine_label}` ===
          key,
      );
      if (duplicate) {
        context.errors.push(
          `${relative(filePath)}: move machine ${moveMachineRowLabel(row)} duplicates parent/dependency scope machine ${moveMachineRowLabel(duplicate)}; child content scopes should seed only delta rows unless using override/remove.`,
        );
        break;
      }
    }
  }
}

export function assertPokemonLearnsetRows(context, tableRows) {
  const rows = tableRows.get("reference.pokemon_learnsets") ?? [];
  if (rows.length === 0) return;
  const speciesRows = tableRows.get("reference.pokemon_species") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const moveRows = tableRows.get("reference.moves") ?? [];
  const versionGroupRows = tableRows.get("reference.version_groups") ?? [];
  const dependencyRows =
    tableRows.get("reference.content_scope_dependencies") ?? [];
  const gameRows = tableRows.get("reference.games") ?? [];
  const methodRows = tableRows.get("reference.learn_methods") ?? [];
  const itemRows = tableRows.get("reference.items") ?? [];
  const contentScopeRows = tableRows.get("reference.game_content_scopes") ?? [];
  const moveAvailabilityRows =
    tableRows.get("reference.move_availability") ?? [];
  const moveMachineRows = tableRows.get("reference.move_machines") ?? [];
  const speciesIds = new Set(speciesRows.map(({ row }) => row.id));
  const formKeys = new Set(
    formRows.map(({ row }) => `${row.species_id}/${row.id}`),
  );
  const movesById = mapRowsByColumn(moveRows, "id");
  const versionGroupsById = mapRowsByColumn(versionGroupRows, "id");
  const gamesById = mapRowsByColumn(gameRows, "id");
  const methodsById = mapRowsByColumn(methodRows, "id");
  const methodsBySlug = mapRowsByColumn(methodRows, "slug");
  const itemIds = new Set(itemRows.map(({ row }) => row.id));
  const contentScopeKeys = new Set(
    contentScopeRows.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const moveAvailabilityKeys = new Set(
    moveAvailabilityRows.map(
      ({ row }) =>
        `${row.move_id}/${row.version_group_id}/${row.game_id ?? "vg"}`,
    ),
  );
  const moveMachinesById = mapRowsByColumn(moveMachineRows, "id");
  const levelUpMethodId = methodsBySlug.get("level_up")?.id;
  const machineMethodPrefixes = new Map([
    [methodsBySlug.get("tm")?.id, /^TM[0-9]{2,3}$/],
    [methodsBySlug.get("hm")?.id, /^HM[0-9]{2}$/],
    [methodsBySlug.get("tr")?.id, /^TR[0-9]{2}$/],
  ]);
  const documentedExceptionMethodIds = new Set(
    [methodsBySlug.get("event")?.id, methodsBySlug.get("transfer")?.id].filter(
      (id) => id !== undefined,
    ),
  );
  const sourceVerifiedFingerprintsByVersionGroup = new Map([
    [
      1,
      {
        count: 4127,
        sha256:
          "4e1a6a98c773dd728813de1b92a2c1e95eba7dd2a2a4fb16537fb7dffed3013e",
      },
    ],
    [
      2,
      {
        count: 4152,
        sha256:
          "ff13aa74737170c4d1ac99cfc9504328c4cefc114c8cdc292b2d3269434db4c2",
      },
    ],
    [
      3,
      {
        count: 9054,
        sha256:
          "0a444f9157f5be3b5b65cddce037b01a7fd5cc0a46941b21eec23603c737af73",
      },
    ],
    [
      4,
      {
        count: 9288,
        sha256:
          "a5e6ba654f996dcddd11171791368de56778c9b8d9f10bf3ba14093b2cd0c7f7",
      },
    ],
    [
      5,
      {
        count: 13852,
        sha256:
          "64e51b42c81b0b8c55b1bf132595451e2fb692e7f9f5f453e900d48153be551d",
      },
    ],
    [
      6,
      {
        count: 16325,
        sha256:
          "1db8b1ea341a4c6a9e706bfe89bc209cff88ad0eae3ea346b57047fdc67e5ad8",
      },
    ],
    [
      7,
      {
        count: 19195,
        sha256:
          "4b862a2fd1392caf521727eb56f0a39aefc23af70f34b0422197f6674b2a7db4",
      },
    ],
    [
      8,
      {
        count: 26310,
        sha256:
          "9037d29c7d350829ebd319b1db53336be943e813344053ba888c8c7254553e8f",
      },
    ],
    [
      9,
      {
        count: 30857,
        sha256:
          "660973cdcfb4b1083a29617b5d124caf1b8b13c19e4181fb1950bd93416b17c1",
      },
    ],
    [
      10,
      {
        count: 32053,
        sha256:
          "0bad8e498e2bbbb6f015a35e814baace2b4c109b671bcffd2884ad98132dcac3",
      },
    ],
    [
      11,
      {
        count: 33580,
        sha256:
          "a1ba9963e3b72a6f98f16e3cd5f9407c6d2dd352c4d0d455437dbad0dbe8a529",
      },
    ],
    [
      12,
      {
        count: 41267,
        sha256:
          "c2f4121779240356022cd39dec9d3bc893ffad7866ba553281d88468ffab3dc5",
      },
    ],
    [
      13,
      {
        count: 40541,
        sha256:
          "6838d6422c6827d84554d327f8ad0936916c3ba02426555a082bdf3a76447608",
      },
    ],
    [
      14,
      {
        count: 49620,
        sha256:
          "ba9538a4ad999bafda90c545f6b9e6381fa2a0c33b688f940c0fc7bf55f35555",
      },
    ],
    [
      15,
      {
        count: 44348,
        sha256:
          "2e2eaac4ef6f1854cfd676de90c310d17e28ade10218ee9e5909c7bbfb892a74",
      },
    ],
    [
      16,
      {
        count: 54989,
        sha256:
          "7c0d9563974321046ccd44696f51bedcaa146ffd65aee331a9d955cde117fe42",
      },
    ],
    [
      17,
      {
        count: 5193,
        sha256:
          "cba184924f33d18a7a05b0aaf25f5bf35d9ef7606ceb475d522b7114d01e0bff",
      },
    ],
    [
      18,
      {
        count: 44520,
        sha256:
          "2712fb71edcff83361f1a4bd98253b333ee3e82ac1a15d02f869de4a2299c09b",
      },
    ],
    [
      19,
      {
        count: 972,
        sha256:
          "e518a5addb0007d72c3f920e3573c163f7acea4a925c390427a759ac7bbe5027",
      },
    ],
    [
      21,
      {
        count: 27086,
        sha256:
          "29a5c44f438ed87e274e6fda566d26e7493926b84044684746ac155997941d4f",
      },
    ],
    [
      22,
      {
        count: 6257,
        sha256:
          "fbb4b41d1116a7b945207fb40597db4a3c6fc021e142a7391cc95b4ded1f5c02",
      },
    ],
    [
      23,
      {
        count: 47045,
        sha256:
          "c4385b0135b8b1df07adb22c2e15d29a0da2f0d597658a7313e0f8b8968706ca",
      },
    ],
    [
      24,
      {
        count: 2166,
        sha256:
          "43585e3078f44f4ec9ce210998fa8e5a9cde1ca90b4ac2d99b6462ca362d136a",
      },
    ],
    [
      25,
      {
        count: 3233,
        sha256:
          "1a2ae2114a939b3bc85a82f16d48eacbf4524719af9941d3b627b57feaa438ef",
      },
    ],
    [
      26,
      {
        count: 8916,
        sha256:
          "1cbecc99ba27ad0aaa0e6753e59f528541a2ad88d35840a575b7a706643e7931",
      },
    ],
    [
      27,
      {
        count: 8402,
        sha256:
          "854b0ed469b99b578489bb1f261fea865c67a942c0e3562b4a0c2527bd36c1dd",
      },
    ],
  ]);
  const learnsetSourceFingerprint = (learnsetRows) =>
    createHash("sha256")
      .update(
        learnsetRows
          .toSorted(
            (a, b) =>
              a.species_id - b.species_id ||
              a.form_id - b.form_id ||
              a.move_id - b.move_id ||
              a.version_group_id - b.version_group_id ||
              (a.game_id ?? 0) - (b.game_id ?? 0) ||
              a.learn_method_id - b.learn_method_id ||
              (a.level_learned_at ?? 0) - (b.level_learned_at ?? 0) ||
              (a.source_item_id ?? 0) - (b.source_item_id ?? 0) ||
              (a.move_machine_id ?? 0) - (b.move_machine_id ?? 0) ||
              sourceFingerprintString(a.condition_summary).localeCompare(
                sourceFingerprintString(b.condition_summary),
              ),
          )
          .map((row) =>
            [
              row.species_id,
              row.form_id,
              row.move_id,
              row.version_group_id,
              row.game_id ?? "vg",
              row.learn_method_id,
              row.level_learned_at ?? 0,
              row.source_item_id ?? 0,
              row.move_machine_id ?? 0,
              sourceFingerprintString(row.condition_summary),
            ].join("/"),
          )
          .join("|"),
      )
      .digest("hex");
  addCompositeDuplicateErrors(
    context,
    "reference.pokemon_learnsets",
    rows.filter(({ row }) => row.game_id === null),
    "species_id/form_id/move_id/version_group_id/learn_method_id/level/source_item/move_machine where game_id IS NULL",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.move_id}/${row.version_group_id}/${row.learn_method_id}/${row.level_learned_at ?? 0}/${row.source_item_id ?? 0}/${row.move_machine_id ?? 0}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.pokemon_learnsets",
    rows.filter(({ row }) => row.game_id !== null),
    "species_id/form_id/move_id/version_group_id/game_id/learn_method_id/level/source_item/move_machine where game_id IS NOT NULL",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.move_id}/${row.version_group_id}/${row.game_id}/${row.learn_method_id}/${row.level_learned_at ?? 0}/${row.source_item_id ?? 0}/${row.move_machine_id ?? 0}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "reference.pokemon_learnsets",
    rows,
    "species_id/form_id/version_group_id/game_id",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.version_group_id}/${row.game_id ?? "vg"}`,
  );
  const hasMoveAvailability = (moveId, versionGroupId, gameId) => {
    for (const currentVersionGroupId of collectVersionGroupClosureIds(
      versionGroupsById,
      dependencyRows,
      versionGroupId,
    )) {
      if (
        moveAvailabilityKeys.has(
          `${moveId}/${currentVersionGroupId}/${gameId ?? "vg"}`,
        )
      )
        return true;
      if (moveAvailabilityKeys.has(`${moveId}/${currentVersionGroupId}/vg`))
        return true;
    }
    return false;
  };
  for (const { row, filePath } of rows) {
    const label = pokemonLearnsetRowLabel(row);
    if (!speciesIds.has(row.species_id)) {
      context.errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded species_id ${row.species_id}.`,
      );
    }
    if (!formKeys.has(`${row.species_id}/${row.form_id}`)) {
      context.errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} has invalid species/form pair ${row.species_id}/${row.form_id}.`,
      );
    }
    const move = movesById.get(row.move_id);
    if (!move) {
      context.errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded move_id ${row.move_id}.`,
      );
    }
    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      context.errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    } else if (
      move &&
      versionGroup.generation_id < move.introduced_generation_id
    ) {
      context.errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} teaches move ${move.slug} before its introduced generation.`,
      );
    }
    const method = methodsById.get(row.learn_method_id);
    if (!method) {
      context.errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded learn_method_id ${row.learn_method_id}.`,
      );
      continue;
    }
    if (
      row.learn_method_id === levelUpMethodId &&
      row.level_learned_at === null
    ) {
      context.errors.push(
        `${relative(filePath)}: level-up learnset row ${label} must set level_learned_at.`,
      );
    }
    if (
      row.learn_method_id !== levelUpMethodId &&
      row.level_learned_at !== null
    ) {
      context.errors.push(
        `${relative(filePath)}: non-level learnset row ${label} (${method.slug}) must not set level_learned_at.`,
      );
    }
    const machinePattern = machineMethodPrefixes.get(row.learn_method_id);
    if (machinePattern) {
      if (row.move_machine_id === null) {
        context.errors.push(
          `${relative(filePath)}: ${method.slug} learnset row ${label} must set move_machine_id.`,
        );
      } else {
        const machine = moveMachinesById.get(row.move_machine_id);
        if (!machine) {
          context.errors.push(
            `${relative(filePath)}: ${method.slug} learnset row ${label} references unseeded move_machine_id ${row.move_machine_id}.`,
          );
        } else {
          if (!machinePattern.test(machine.machine_label)) {
            context.errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} references machine ${machine.machine_label}, which does not match the learn method.`,
            );
          }
          if (machine.move_id !== row.move_id) {
            context.errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} move_id ${row.move_id} does not match machine move_id ${machine.move_id}.`,
            );
          }
          const machineVersionGroupIds = collectVersionGroupClosureIds(
            versionGroupsById,
            dependencyRows,
            row.version_group_id,
          );
          if (!machineVersionGroupIds.has(machine.version_group_id)) {
            context.errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} version_group_id ${row.version_group_id} cannot use machine version_group_id ${machine.version_group_id}; machine must be in the resolved content-scope closure.`,
            );
          }
          if (machine.game_id !== row.game_id) {
            context.errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} game_id ${row.game_id ?? "vg"} does not match machine game_id ${machine.game_id ?? "vg"}.`,
            );
          }
          if (machine.learn_method_id !== row.learn_method_id) {
            context.errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} learn_method_id ${row.learn_method_id} does not match machine learn_method_id ${machine.learn_method_id}.`,
            );
          }
        }
      }
      if (row.source_item_id !== null) {
        context.errors.push(
          `${relative(filePath)}: ${method.slug} learnset row ${label} must not set source_item_id; use move_machine_id for machines.`,
        );
      }
    } else if (row.move_machine_id !== null) {
      context.errors.push(
        `${relative(filePath)}: non-machine learnset row ${label} (${method.slug}) must not set move_machine_id.`,
      );
    }
    if (row.source_item_id !== null && !itemIds.has(row.source_item_id)) {
      context.errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded source_item_id ${row.source_item_id}.`,
      );
    }
    if (row.game_id !== null) {
      if (!gamesById.has(row.game_id)) {
        context.errors.push(
          `${relative(filePath)}: Pokémon learnset row ${label} references unseeded game_id ${row.game_id}.`,
        );
      }
      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        context.errors.push(
          `${relative(filePath)}: Pokémon learnset row ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }
    if (
      move &&
      versionGroup &&
      !hasMoveAvailability(row.move_id, row.version_group_id, row.game_id)
    ) {
      if (
        !documentedExceptionMethodIds.has(row.learn_method_id) ||
        row.condition_summary === null
      ) {
        context.errors.push(
          `${relative(filePath)}: Pokémon learnset row ${label} teaches unavailable move ${move.slug} in version_group_id ${row.version_group_id}; event/transfer exceptions need condition_summary.`,
        );
      }
    }
  }
  const learnsetRowsByVersionGroup = new Map();
  const learnsetDeltaKey = (row) => {
    const machineLabel =
      row.move_machine_id === null
        ? "no-machine"
        : (moveMachinesById.get(row.move_machine_id)?.machine_label ??
          row.move_machine_id);
    return [
      row.species_id,
      row.form_id,
      row.move_id,
      row.game_id ?? "vg",
      row.learn_method_id,
      row.level_learned_at ?? 0,
      row.source_item_id ?? 0,
      machineLabel,
      row.condition_summary ?? "",
    ].join("/");
  };
  for (const { row } of rows) {
    if (!learnsetRowsByVersionGroup.has(row.version_group_id)) {
      learnsetRowsByVersionGroup.set(row.version_group_id, []);
    }
    learnsetRowsByVersionGroup.get(row.version_group_id).push(row);
  }
  const seededVersionGroupIds = new Set(
    versionGroupRows.map(({ row }) => row.id),
  );
  for (const versionGroupId of learnsetRowsByVersionGroup.keys()) {
    if (
      !sourceVerifiedFingerprintsByVersionGroup.has(versionGroupId) &&
      seededVersionGroupIds.has(versionGroupId)
    ) {
      context.errors.push(
        "reference.pokemon_learnsets: unexpected rows for version_group_id " +
          versionGroupId +
          ". Learnset scope should be added only with an explicit source decision and pinned fingerprint.",
      );
    }
  }
  for (const [
    versionGroupId,
    expectedFingerprint,
  ] of sourceVerifiedFingerprintsByVersionGroup.entries()) {
    const scopedRows = learnsetRowsByVersionGroup.get(versionGroupId) ?? [];
    const actualCount = scopedRows.length;
    const actualFingerprint = learnsetSourceFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      context.errors.push(
        `reference.pokemon_learnsets: version_group_id ${versionGroupId} source-verified learnset fingerprint expected ${expectedFingerprint.count}/${expectedFingerprint.sha256}, got ${actualCount}/${actualFingerprint}.`,
      );
    }
  }
  for (const { row, filePath } of rows) {
    if (scopeOperation(row) !== "add") continue;
    const priorScopeIds = [
      ...collectVersionGroupClosureIds(
        versionGroupsById,
        dependencyRows,
        row.version_group_id,
      ),
    ].filter((versionGroupId) => versionGroupId !== row.version_group_id);
    const key = learnsetDeltaKey(row);
    for (const priorScopeId of priorScopeIds) {
      const duplicate = (
        learnsetRowsByVersionGroup.get(priorScopeId) ?? []
      ).find((priorRow) => learnsetDeltaKey(priorRow) === key);
      if (duplicate) {
        context.errors.push(
          `${relative(filePath)}: Pokémon learnset row ${pokemonLearnsetRowLabel(row)} duplicates parent/dependency scope row ${pokemonLearnsetRowLabel(duplicate)}; child content scopes should seed only delta rows unless using override/remove.`,
        );
        break;
      }
    }
  }
}

export function assertPokemonAvailabilityRows(context, tableRows) {
  const rows = tableRows.get("reference.pokemon_availability") ?? [];
  const speciesRows = tableRows.get("reference.pokemon_species") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const methods = tableRows.get("reference.availability_methods") ?? [];
  const contentScopes = tableRows.get("reference.game_content_scopes") ?? [];
  const speciesIds = new Set(speciesRows.map(({ row }) => row.id));
  const formKeys = new Set(
    formRows.map(({ row }) => `${row.species_id}/${row.id}`),
  );
  const versionGroupIds = new Set(versionGroups.map(({ row }) => row.id));
  const gamesById = mapRowsByColumn(games, "id");
  const methodIds = new Set(methods.map(({ row }) => row.id));
  const contentScopeKeys = new Set(
    contentScopes.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const sourceVerifiedFingerprintsByVersionGroup = new Map([
    [
      1,
      {
        count: 173,
        sha256:
          "5402377f7e19e3f403d135f29fca2a2d88508772b90eed7bbc207b850b83b48d",
      },
    ],
    [
      2,
      {
        count: 151,
        sha256:
          "a455d981f2b4385651ea9207471cf7a27868d9f605b7ca5ecc1397b10701f114",
      },
    ],
    [
      3,
      {
        count: 275,
        sha256:
          "7bf80fb2b99e2ba1e7771c9e6dde1dba69ff9fb81c0db1e8814d5690659ca312",
      },
    ],
    [
      4,
      {
        count: 251,
        sha256:
          "53c05cee2709ebc2fb21881f3f5fa3965e428ff37323c0814f5355686f360317",
      },
    ],
    [
      5,
      {
        count: 402,
        sha256:
          "02a4ff5e1b849c5e4c64c27161b7202ac27fb83ff8f5abed3bc24e1883234908",
      },
    ],
    [
      6,
      {
        count: 432,
        sha256:
          "dd43003fccbcf5f055b6ffa9c6a48ec86444440649584bad29a4c5621e49fc7d",
      },
    ],
    [
      7,
      {
        count: 388,
        sha256:
          "fb7718f3ce6b75e6367f136021c6fcc4e43cc95f460f089fa3af8d1865ee999e",
      },
    ],
    [
      8,
      {
        count: 563,
        sha256:
          "e023ee3b169a6b9458586410f44e3feb1c1c2ba00d949ad64a9d58a84fe48bb8",
      },
    ],
    [
      9,
      {
        count: 523,
        sha256:
          "9e64cd236b62f6e8b367465cece20736a06c50e72f297f1f56d648dbef1602b4",
      },
    ],
    [
      10,
      {
        count: 563,
        sha256:
          "65c509606af28b598194f35f4dcd549335bf8568a290d6032e084fd8404f0ff6",
      },
    ],
    [
      11,
      {
        count: 818,
        sha256:
          "f4bf656cdd04df76ee48cfa183682875ec4d4c5cb8b59fe7c71698bd88157472",
      },
    ],
    [
      12,
      {
        count: 743,
        sha256:
          "5e5edfbf0d87fd065d2aab80ff00586c183b0668620373e0c242cb7382c20e46",
      },
    ],
    [
      13,
      {
        count: 809,
        sha256:
          "8c4f4d250ed3996421bc7281c389edf7e139690ec0789b85cb2fb77c59858cf2",
      },
    ],
    [
      14,
      {
        count: 808,
        sha256:
          "d609f290faf09ead70b9fe1c9c2eeff03bb03f0e015e27b35de2a8d0f8281aa2",
      },
    ],
    [
      15,
      {
        count: 928,
        sha256:
          "fe77fc03e6f1d6488ba53e67b70668ba31f75f893ed60f3a9f2b21d9b1310735",
      },
    ],
    [
      16,
      {
        count: 950,
        sha256:
          "c975ab8d5515987e4a47fd5f22928fd8c47603d1ec365ec351f0d01fc229a4f1",
      },
    ],
    [
      17,
      {
        count: 212,
        sha256:
          "dedcf401c11668cb92f4b865faa217679e4392a2213b1ed8b50878bd0eae9ca3",
      },
    ],
    [
      18,
      {
        count: 616,
        sha256:
          "91aea79584350c63ff9ce4a79c9a02c1ce39d1b1f3601981ba0ea273f0bf0d03",
      },
    ],
    [
      19,
      {
        count: 230,
        sha256:
          "53b6459c40768a49001a07027d33f68793e44233da50430a9078c2a804ab4ef6",
      },
    ],
    [
      20,
      {
        count: 340,
        sha256:
          "d600c140e8244e66320c9ba178da266c14e3ea3205f7388159f3a5daf0397da2",
      },
    ],
    [
      21,
      {
        count: 579,
        sha256:
          "7c90860f9e15d3ec1d1276f0cbf27ba5801a60c1921f042184d7ae0ad3cd13e3",
      },
    ],
    [
      22,
      {
        count: 280,
        sha256:
          "4ef303f64187a0e4ead7cacdef6547474ce2dca7f9aa8035d322f81bb8fcb11f",
      },
    ],
    [
      23,
      {
        count: 692,
        sha256:
          "1708da1788b3e5db432c0b68cfeac9e67e64993afa09cc2e495ca4939db9ff48",
      },
    ],
    [
      24,
      {
        count: 230,
        sha256:
          "6cc27111044f2bce68030231b21f3c71173c0ef96cffde661d988ff5515ddb1d",
      },
    ],
    [
      25,
      {
        count: 299,
        sha256:
          "53c11de4fe37be5d77ada4a0989acccb61751f388fead6b814f99fd810dd0c21",
      },
    ],
    [
      26,
      {
        count: 246,
        sha256:
          "a76652ae527e87020ea152b99c42640a76716a33baea7e1f2786fbae5efb800f",
      },
    ],
    [
      27,
      {
        count: 152,
        sha256:
          "3b6b18d1f1dfbf8a58c92d838f350258f877579b023d2cccabb473f17a30b64e",
      },
    ],
  ]);
  const pokemonAvailabilitySourceFingerprint = (availabilityRows) =>
    sourceVerifiedRowsetFingerprint(
      availabilityRows,
      [
        "species_id",
        "form_id",
        "version_group_id",
        "game_id",
        "availability_method_id",
        "scope_operation",
        "notes",
      ],
      compareRowsByColumns([
        "species_id",
        "form_id",
        "game_id",
        "availability_method_id",
        "scope_operation",
        "notes",
      ]),
    );
  const rowsByVersionGroup = new Map();
  for (const { row } of rows) {
    if (!rowsByVersionGroup.has(row.version_group_id))
      rowsByVersionGroup.set(row.version_group_id, []);
    rowsByVersionGroup.get(row.version_group_id).push({
      row: {
        ...row,
        scope_operation: scopeOperation(row),
        notes: row.notes ?? null,
      },
    });
  }
  for (const [versionGroupId, scopedRows] of rowsByVersionGroup.entries()) {
    const actualCount = scopedRows.length;
    const actualFingerprint = pokemonAvailabilitySourceFingerprint(scopedRows);
    const expectedFingerprint =
      sourceVerifiedFingerprintsByVersionGroup.get(versionGroupId);
    if (!expectedFingerprint) {
      context.errors.push(
        `reference.pokemon_availability: unexpected rows for version_group_id ${versionGroupId}; add an explicit source-verified Pokémon availability fingerprint. Got ${actualCount}/${actualFingerprint}.`,
      );
      continue;
    }
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      context.errors.push(
        `reference.pokemon_availability: version_group_id ${versionGroupId} source-verified Pokémon availability fingerprint expected ${expectedFingerprint.count}/${expectedFingerprint.sha256}, got ${actualCount}/${actualFingerprint}.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "reference.pokemon_availability",
    rows.filter(({ row }) => row.game_id === null),
    "species_id/form_id/version_group_id/availability_method_id where game_id IS NULL",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.version_group_id}/${row.availability_method_id}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.pokemon_availability",
    rows.filter(({ row }) => row.game_id !== null),
    "species_id/form_id/version_group_id/game_id/availability_method_id where game_id IS NOT NULL",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.version_group_id}/${row.game_id}/${row.availability_method_id}`,
  );
  for (const { row, filePath } of rows) {
    const label = pokemonAvailabilityRowLabel(row);
    if (!speciesIds.has(row.species_id)) {
      context.errors.push(
        `${relative(filePath)}: Pokémon availability row ${label} references unseeded species_id ${row.species_id}.`,
      );
    }
    if (!formKeys.has(`${row.species_id}/${row.form_id}`)) {
      context.errors.push(
        `${relative(filePath)}: Pokémon availability row ${label} has invalid species/form pair ${row.species_id}/${row.form_id}.`,
      );
    }
    if (!versionGroupIds.has(row.version_group_id)) {
      context.errors.push(
        `${relative(filePath)}: Pokémon availability row ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (!methodIds.has(row.availability_method_id)) {
      context.errors.push(
        `${relative(filePath)}: Pokémon availability row ${label} references unseeded availability_method_id ${row.availability_method_id}.`,
      );
    }
    if (row.game_id !== null) {
      const game = gamesById.get(row.game_id);
      if (!game) {
        context.errors.push(
          `${relative(filePath)}: Pokémon availability row ${label} references unseeded game_id ${row.game_id}.`,
        );
      }
      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        context.errors.push(
          `${relative(filePath)}: Pokémon availability row ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }
  }
}
