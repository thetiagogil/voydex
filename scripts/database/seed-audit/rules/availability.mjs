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
        count: 189,
        sha256:
          "35346f1397c0aac4b2a21825fc210c9966303141f1c80b6f64ee1064f4836f36",
      },
    ],
    [
      9,
      {
        count: 191,
        sha256:
          "e22e96f4299ab516a0fd9d15e9f476926144e2f58e76b4bd0bf0d182034a7f1f",
      },
    ],
    [
      10,
      {
        count: 183,
        sha256:
          "ebd8f51d037232acf741172264737901743e61cbac283132da98b67927a1e8c6",
      },
    ],
    [
      11,
      {
        count: 203,
        sha256:
          "06c3862499b9c072e1069bea37cb35e2e207145d294825492b1eeae0070dbed1",
      },
    ],
    [
      12,
      {
        count: 220,
        sha256:
          "956f235437196a7c641e84c78a85adcc241dfa85132febdafb67e69ae500a45c",
      },
    ],
    [
      13,
      {
        count: 245,
        sha256:
          "bbea750d2e0af5b51a0bd1b00a04d40c866c9983874b2c22c34e3380be16fee7",
      },
    ],
    [
      14,
      {
        count: 275,
        sha256:
          "539be28d1b2732aa54dcf5f96eed7417f4c289247c1502d099426efede7f5c77",
      },
    ],
    [
      15,
      {
        count: 282,
        sha256:
          "b6f4148e7049b148caa02078a4e700612bd9721e2a9182f4062c58fb5f84381d",
      },
    ],
    [
      16,
      {
        count: 331,
        sha256:
          "c065cbd7117ede4e96746ef31f5c86567294a8ff99224cd1c570c6fa97798c06",
      },
    ],
    [
      17,
      {
        count: 33,
        sha256:
          "8b1e3a773ac39e3025fd2bde6e8a4e9ba16fa24b0ffb6c86dfb846acc827b04a",
      },
    ],
    [
      18,
      {
        count: 236,
        sha256:
          "345588dead00ab19a4b8e2cd71dad75fb033449c81a515e4fbbca4674330bcee",
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
        count: 221,
        sha256:
          "2bb381859afa4aa99245730c3ae17bc18511d3d5e23757aea8ee05d679cf6c15",
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
        count: 229,
        sha256:
          "277e823202338f32154c04d7d988453ce4cfb68fe7cce9103c21d5bff595e227",
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
        count: 203,
        sha256:
          "e36394bf741db2a556047a7f3130fb8e3b234bafb37845de50d5ef7d4993c415",
      },
    ],
    [
      27,
      {
        count: 57,
        sha256:
          "3521cb705dcd5f518bfbf399e769eeb4dc8308bda942fde6d76160dcd82e6a07",
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
        count: 244,
        sha256:
          "2118b5cfc0f4131c4c3030f650f702952edf3d1756703b24d2a99553093feedb",
      },
    ],
    [
      "general held item availability",
      {
        slugs: new Set(expectedGeneralHeldAvailableItemSlugs),
        count: 1380,
        sha256:
          "6119df91383fb00a54380cac2931dba9c90dac9ba99836b1c13512f8ed4e37c0",
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
    ...expectedPokeBallItemSlugs,
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
  if (rows.length !== 3969) {
    context.errors.push(
      `reference.item_availability: expected 3969 curated item availability rows, got ${rows.length}.`,
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
    { itemSlug: "red-orb", versionGroupSlug: "za-md" },
    { itemSlug: "blue-orb", versionGroupSlug: "za-md" },
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
    { itemSlug: "red-orb", versionGroupSlug: "za" },
    { itemSlug: "blue-orb", versionGroupSlug: "za" },
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
        count: 4151,
        sha256:
          "876737fd0fcd533c643e7b47518164ee2a16aca32b192a462e53803802a94a20",
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
          "e64656934919e10965b8903c4b3a95d530e03d3113f524977acfaaaade8972f9",
      },
    ],
    [
      8,
      {
        count: 26304,
        sha256:
          "b58a94a1124241699f3bb998fcdaf3aa7ee15122793c7f7a75b099b071df8e5d",
      },
    ],
    [
      9,
      {
        count: 30851,
        sha256:
          "02b75299244e2c35b1248893d8ff28139d617f389688832da7dae42679a53a74",
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
        count: 33567,
        sha256:
          "95dd8362d83d8db36d9c48bccbfe59b1ea7f248c8362fbccc723912600e0656e",
      },
    ],
    [
      12,
      {
        count: 41250,
        sha256:
          "baf7ce172c8d86ba9a43d08cd2d43c24edfd2cded90f60abad92aaccf671835f",
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
        count: 50081,
        sha256:
          "10f8209168f96c518671a0f4cad344611299db6237311691bc82221cf8c12553",
      },
    ],
    [
      15,
      {
        count: 44347,
        sha256:
          "7418166a37881c7e1fe3468f22453c1812210ab4f1b8fb730546d3cd2eb1065e",
      },
    ],
    [
      16,
      {
        count: 54988,
        sha256:
          "adb20b8ba7601c50dce24a580943991603290b64e3d3a9bb48dad96c0799eee7",
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
          "826605b2147e7a8bc0997b3bc309b091325ef9fcd7dfeab5a3d44eefa9ab61ca",
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
        count: 27326,
        sha256:
          "66833b969a3ec98c2d0dac48fbc60ddeea82bf879f569aad01e457cb4fbe929c",
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
        count: 47231,
        sha256:
          "bfb2a9b16444954320df1adc5286231d769a3575f046ac6679c3abdcea550a08",
      },
    ],
    [
      24,
      {
        count: 2267,
        sha256:
          "6e94e2ea7c02f3369bd7be11c771dddf99dabf5e2580a93ec27848bc994fc48f",
      },
    ],
    [
      25,
      {
        count: 3326,
        sha256:
          "f6f2e29481922a1e67a7d9b1f3622e021769f99d8e7a4c5ef60fe59cd53ab9df",
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
        count: 8439,
        sha256:
          "c91dd6ac75ab9de8f9bacdc6dbdf6cf895878dd20083a127109ef2fe3174792e",
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
        count: 300,
        sha256:
          "73d7fca54e55e62ba60c8e963b4f18cab5dd33e18b73d06d055da78d74b39541",
      },
    ],
    [
      4,
      {
        count: 276,
        sha256:
          "0fa3608415f2c470c12048a8e159eb5c93ae52f6ce72bb39ba52cb9ac530ecd8",
      },
    ],
    [
      5,
      {
        count: 429,
        sha256:
          "11aff5c9441a27980503087d4c0c9c777c990fdfb265dfb6882a5e33d1a875d6",
      },
    ],
    [
      6,
      {
        count: 459,
        sha256:
          "6a156b37cf118c369c31df409ec3c302940a0c36ce8ec9281ee49cc7b1a0be43",
      },
    ],
    [
      7,
      {
        count: 415,
        sha256:
          "a0be61e8ebbe6555ba20237b78c7b5b0c226619e3cf9cb636bd862a3308e4a93",
      },
    ],
    [
      8,
      {
        count: 592,
        sha256:
          "627620b0c6fee63dc1bb4a2aebc4b6dab96a4f3b2095e947e48a96ebe95cbf93",
      },
    ],
    [
      9,
      {
        count: 552,
        sha256:
          "8a2aea6db2d799fdd9dceb59adb07dbeb22a62eca10bd86ae168e19620680218",
      },
    ],
    [
      10,
      {
        count: 593,
        sha256:
          "672f777fd8c1882f7ab9e9a362af357c7d5b1968137a5dd1d83a312229746da8",
      },
    ],
    [
      11,
      {
        count: 855,
        sha256:
          "d5d0ba5db72b5d14aee5f5a597ce5c56700cab02bc667d133fe94add0877e01d",
      },
    ],
    [
      12,
      {
        count: 781,
        sha256:
          "3138ed21190f9206e889b4a1127be06942e8a1160950768d8e43ca5cb888cc23",
      },
    ],
    [
      13,
      {
        count: 887,
        sha256:
          "2e9a32f891542b7d1153af2f8106d2f4c5c0c098b2be5527e04413343c5fbde2",
      },
    ],
    [
      14,
      {
        count: 889,
        sha256:
          "8123d0897528765f9921bf049b34a138af367521308118d5bd61fcddbdf7fe26",
      },
    ],
    [
      15,
      {
        count: 1016,
        sha256:
          "9c8128b4d8ab9c2bd57162adc5b633d934601f342ffe4a4ffaaff89aa0e502d7",
      },
    ],
    [
      16,
      {
        count: 1039,
        sha256:
          "ca2d9b9c97b29518ec21acb9f566d09fb9a1d67549c9236ea10aa6bd218908a9",
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
        count: 654,
        sha256:
          "1f5fd7c467c5064fc82ff4d1bd5aa8c3887cf364634de78c99c259b860153e9f",
      },
    ],
    [
      19,
      {
        count: 231,
        sha256:
          "720726df58e40e39bf0b8e247b5e893edf922a721c72d021fe63963c47ce5863",
      },
    ],
    [
      20,
      {
        count: 342,
        sha256:
          "5c0933438c6686ad2003cab5aa216adca7d450513269efea5dc138622c3c4ecb",
      },
    ],
    [
      21,
      {
        count: 608,
        sha256:
          "37245d5319d8116414bc7b531d01e8b62b4b7d86035580253f46131781599553",
      },
    ],
    [
      22,
      {
        count: 309,
        sha256:
          "8ac840740807ed86101b0229b636a091e6287c54ae9c86f6ae2163b952a9b190",
      },
    ],
    [
      23,
      {
        count: 743,
        sha256:
          "52036c3751dbb1abfd0912b8b5f9301650a8fb7a80447c1aa5c9fa1a2d3aec56",
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
        count: 319,
        sha256:
          "9efc181868cd987c89364a07573fdb33e927feddbdefdb76a3568212fd5d11a0",
      },
    ],
    [
      26,
      {
        count: 294,
        sha256:
          "beb1dc97b7f09a357c243a854457ca1886c669b9a73ece1f55053046691d1cfc",
      },
    ],
    [
      27,
      {
        count: 153,
        sha256:
          "277c8fa717e3ffa5953e7bde88c837b5f0ddbb3b4352343ad712072db83ee5d9",
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
