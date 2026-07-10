import { createHash } from "node:crypto";
import {
  addCompositeDuplicateErrors,
  assertScopedContiguousSortOrder,
  mapRowsByColumn,
  relative,
} from "../core.mjs";

export function assertPokedexRows(context, tableRows) {
  const rows = tableRows.get("reference.pokedex") ?? [];
  const versionGroupsById = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  const allowedKinds = new Set([
    "national",
    "regional",
    "local",
    "dlc",
    "special",
  ]);
  const expectedNationalPokedexDefinitionsById = new Map([
    [502, { versionGroupId: 5, maxSpeciesId: 386 }],
    [602, { versionGroupId: 6, maxSpeciesId: 386 }],
    [702, { versionGroupId: 7, maxSpeciesId: 386 }],
    [802, { versionGroupId: 8, maxSpeciesId: 493 }],
    [902, { versionGroupId: 9, maxSpeciesId: 493 }],
    [1002, { versionGroupId: 10, maxSpeciesId: 493 }],
    [1102, { versionGroupId: 11, maxSpeciesId: 649 }],
    [1202, { versionGroupId: 12, maxSpeciesId: 649 }],
    [1304, { versionGroupId: 13, maxSpeciesId: 721 }],
    [1402, { versionGroupId: 14, maxSpeciesId: 721 }],
    [2102, { versionGroupId: 21, maxSpeciesId: 493 }],
  ]);
  const expectedDefinitions = [
    {
      id: 101,
      versionGroupId: 1,
      slug: "kanto",
      name: "Kanto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 201,
      versionGroupId: 2,
      slug: "kanto",
      name: "Kanto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 301,
      versionGroupId: 3,
      slug: "new",
      name: "New Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 401,
      versionGroupId: 4,
      slug: "new",
      name: "New Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 501,
      versionGroupId: 5,
      slug: "hoenn",
      name: "Hoenn Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 502,
      versionGroupId: 5,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 601,
      versionGroupId: 6,
      slug: "kanto",
      name: "Kanto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 602,
      versionGroupId: 6,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 701,
      versionGroupId: 7,
      slug: "hoenn",
      name: "Hoenn Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 702,
      versionGroupId: 7,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 801,
      versionGroupId: 8,
      slug: "sinnoh",
      name: "Sinnoh Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 802,
      versionGroupId: 8,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 901,
      versionGroupId: 9,
      slug: "enhanced-sinnoh",
      name: "Enhanced Sinnoh Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 902,
      versionGroupId: 9,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1001,
      versionGroupId: 10,
      slug: "johto",
      name: "Johto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1002,
      versionGroupId: 10,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1101,
      versionGroupId: 11,
      slug: "unova",
      name: "Unova Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1102,
      versionGroupId: 11,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1201,
      versionGroupId: 12,
      slug: "unova",
      name: "Unova Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1202,
      versionGroupId: 12,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1301,
      versionGroupId: 13,
      slug: "central-kalos",
      name: "Central Kalos Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1302,
      versionGroupId: 13,
      slug: "coastal-kalos",
      name: "Coastal Kalos Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1303,
      versionGroupId: 13,
      slug: "mountain-kalos",
      name: "Mountain Kalos Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: true,
      sortOrder: 3,
    },
    {
      id: 1304,
      versionGroupId: 13,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 4,
    },
    {
      id: 1401,
      versionGroupId: 14,
      slug: "hoenn",
      name: "Hoenn Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1402,
      versionGroupId: 14,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1501,
      versionGroupId: 15,
      slug: "alola",
      name: "Alola Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1502,
      versionGroupId: 15,
      slug: "melemele",
      name: "Melemele Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 2,
    },
    {
      id: 1503,
      versionGroupId: 15,
      slug: "akala",
      name: "Akala Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 3,
    },
    {
      id: 1504,
      versionGroupId: 15,
      slug: "ulaula",
      name: "Ulaula Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 4,
    },
    {
      id: 1505,
      versionGroupId: 15,
      slug: "poni",
      name: "Poni Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 5,
    },
    {
      id: 1601,
      versionGroupId: 16,
      slug: "alola",
      name: "Alola Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1602,
      versionGroupId: 16,
      slug: "melemele",
      name: "Melemele Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 2,
    },
    {
      id: 1603,
      versionGroupId: 16,
      slug: "akala",
      name: "Akala Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 3,
    },
    {
      id: 1604,
      versionGroupId: 16,
      slug: "ulaula",
      name: "Ulaula Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 4,
    },
    {
      id: 1605,
      versionGroupId: 16,
      slug: "poni",
      name: "Poni Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 5,
    },
    {
      id: 1701,
      versionGroupId: 17,
      slug: "kanto",
      name: "Kanto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1801,
      versionGroupId: 18,
      slug: "galar",
      name: "Galar Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1901,
      versionGroupId: 19,
      slug: "isle-of-armor",
      name: "Isle of Armor Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2001,
      versionGroupId: 20,
      slug: "crown-tundra",
      name: "Crown Tundra Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2101,
      versionGroupId: 21,
      slug: "sinnoh",
      name: "Sinnoh Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2102,
      versionGroupId: 21,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 2201,
      versionGroupId: 22,
      slug: "hisui",
      name: "Hisui Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2301,
      versionGroupId: 23,
      slug: "paldea",
      name: "Paldea Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2401,
      versionGroupId: 24,
      slug: "kitakami",
      name: "Kitakami Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2501,
      versionGroupId: 25,
      slug: "blueberry",
      name: "Blueberry Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2601,
      versionGroupId: 26,
      slug: "lumiose",
      name: "Lumiose Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2701,
      versionGroupId: 27,
      slug: "hyperspace",
      name: "Hyperspace Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
  ];
  const expectedKeys = expectedDefinitions.map(
    ({ id, versionGroupId, slug }) =>
      String(id) + ":" + versionGroupId + ":" + slug,
  );
  const expectedDefinitionsById = new Map(
    expectedDefinitions.map((definition) => [definition.id, definition]),
  );
  const sortPokedexKeys = (keys) =>
    [...keys].sort((a, b) => {
      const [aId, aVersionGroup, aSlug] = a.split(":");
      const [bId, bVersionGroup, bSlug] = b.split(":");
      return (
        Number(aId) - Number(bId) ||
        Number(aVersionGroup) - Number(bVersionGroup) ||
        aSlug.localeCompare(bSlug)
      );
    });
  const actualKeys = sortPokedexKeys(
    rows.map(({ row }) => `${row.id}:${row.version_group_id}:${row.slug}`),
  );
  const sortedExpectedKeys = sortPokedexKeys(expectedKeys);
  if (actualKeys.join("|") !== sortedExpectedKeys.join("|")) {
    context.errors.push(
      `reference.pokedex: expected keys [${sortedExpectedKeys.join(", ")}], got [${actualKeys.join(", ")}].`,
    );
  }
  const actualNationalPokedexIds = new Set(
    rows
      .filter(
        ({ row }) => row.pokedex_kind === "national" || row.slug === "national",
      )
      .map(({ row }) => row.id),
  );
  const expectedNationalPokedexIds = new Set(
    expectedNationalPokedexDefinitionsById.keys(),
  );
  for (const pokedexId of actualNationalPokedexIds) {
    if (!expectedNationalPokedexIds.has(pokedexId)) {
      context.errors.push(
        `reference.pokedex: unexpected National Pokedex scope ${pokedexId}; National scopes should exist only for source-confirmed in-game National Mode/National Pokedex features.`,
      );
    }
  }
  for (const pokedexId of expectedNationalPokedexIds) {
    if (!actualNationalPokedexIds.has(pokedexId)) {
      context.errors.push(
        `reference.pokedex: missing source-confirmed National Pokedex scope ${pokedexId}.`,
      );
    }
  }
  for (const { row, filePath } of rows) {
    if (!versionGroupsById.has(row.version_group_id)) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex row ${row.id} references missing version_group_id ${row.version_group_id}.`,
      );
    }
    if (!allowedKinds.has(row.pokedex_kind)) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex row ${row.id} has invalid pokedex_kind ${row.pokedex_kind}.`,
      );
    }
    const expectedDefinition = expectedDefinitionsById.get(row.id);
    if (expectedDefinition) {
      if (row.version_group_id !== expectedDefinition.versionGroupId) {
        context.errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected version_group_id " +
            expectedDefinition.versionGroupId +
            ", got " +
            row.version_group_id +
            ".",
        );
      }
      if (row.slug !== expectedDefinition.slug) {
        context.errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected slug " +
            expectedDefinition.slug +
            ", got " +
            row.slug +
            ".",
        );
      }
      if (row.name !== expectedDefinition.name) {
        context.errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected name " +
            expectedDefinition.name +
            ", got " +
            row.name +
            ".",
        );
      }
      if (row.pokedex_kind !== expectedDefinition.pokedexKind) {
        context.errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected pokedex_kind " +
            expectedDefinition.pokedexKind +
            ", got " +
            row.pokedex_kind +
            ".",
        );
      }
      if (
        row.is_completion_relevant !== expectedDefinition.isCompletionRelevant
      ) {
        context.errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected is_completion_relevant " +
            expectedDefinition.isCompletionRelevant +
            ", got " +
            row.is_completion_relevant +
            ".",
        );
      }
      if (row.sort_order !== expectedDefinition.sortOrder) {
        context.errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected sort_order " +
            expectedDefinition.sortOrder +
            ", got " +
            row.sort_order +
            ".",
        );
      }
    }
    if (row.slug === "national" || row.pokedex_kind === "national") {
      const expectedNational = expectedNationalPokedexDefinitionsById.get(
        row.id,
      );
      if (!expectedNational) {
        context.errors.push(
          `${relative(filePath)}: reference.pokedex row ${row.id} is not a source-confirmed National Pokedex scope.`,
        );
      } else {
        if (row.version_group_id !== expectedNational.versionGroupId) {
          context.errors.push(
            `${relative(filePath)}: reference.pokedex National scope ${row.id} expected version_group_id ${expectedNational.versionGroupId}, got ${row.version_group_id}.`,
          );
        }
        if (row.slug !== "national") {
          context.errors.push(
            `${relative(filePath)}: reference.pokedex National scope ${row.id} must use slug national, got ${row.slug}.`,
          );
        }
        if (row.pokedex_kind !== "national") {
          context.errors.push(
            `${relative(filePath)}: reference.pokedex National scope ${row.id} must use pokedex_kind national, got ${row.pokedex_kind}.`,
          );
        }
        if (row.is_completion_relevant !== true) {
          context.errors.push(
            `${relative(filePath)}: reference.pokedex National scope ${row.id} should be completion relevant when optional Pokedex scopes are enabled.`,
          );
        }
      }
    }
    if (row.pokedex_kind === "dlc" && row.is_completion_relevant !== true) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex DLC scope ${row.slug} should be completion relevant by default.`,
      );
    }
    const isKalosLocal = [
      "central-kalos",
      "coastal-kalos",
      "mountain-kalos",
    ].includes(row.slug);
    if (
      row.pokedex_kind === "local" &&
      !isKalosLocal &&
      row.is_completion_relevant !== false
    ) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex local subset ${row.slug} should not be completion relevant while an overall regional dex exists.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "reference.pokedex",
    rows,
    "version_group_id + slug",
    (row) => `${row.version_group_id}:${row.slug}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.pokedex",
    rows,
    "version_group_id + sort_order",
    (row) => `${row.version_group_id}:${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    "reference.pokedex",
    rows,
    "version_group_id",
    (row) => row.version_group_id,
  );
}

export const expectedNewPokedexSpeciesIds = [
  152, 153, 154, 155, 156, 157, 158, 159, 160, 16, 17, 18, 21, 22, 163, 164, 19,
  20, 161, 162, 172, 25, 26, 10, 11, 12, 13, 14, 15, 165, 166, 167, 168, 74, 75,
  76, 41, 42, 169, 173, 35, 36, 174, 39, 40, 175, 176, 27, 28, 23, 24, 206, 179,
  180, 181, 194, 195, 92, 93, 94, 201, 95, 208, 69, 70, 71, 187, 188, 189, 46,
  47, 60, 61, 62, 186, 129, 130, 118, 119, 79, 80, 199, 43, 44, 45, 182, 96, 97,
  63, 64, 65, 132, 204, 205, 29, 30, 31, 32, 33, 34, 193, 191, 192, 102, 103,
  185, 202, 48, 49, 123, 212, 127, 214, 109, 110, 88, 89, 81, 82, 100, 101, 190,
  209, 210, 37, 38, 58, 59, 234, 183, 184, 50, 51, 56, 57, 52, 53, 54, 55, 66,
  67, 68, 236, 106, 107, 237, 203, 128, 241, 240, 126, 238, 124, 239, 125, 122,
  235, 83, 177, 178, 211, 72, 73, 98, 99, 213, 120, 121, 90, 91, 222, 223, 224,
  170, 171, 86, 87, 108, 114, 133, 134, 135, 136, 196, 197, 116, 117, 230, 207,
  225, 220, 221, 216, 217, 231, 232, 226, 227, 84, 85, 77, 78, 104, 105, 115,
  111, 112, 198, 228, 229, 218, 219, 215, 200, 137, 233, 113, 242, 131, 138,
  139, 140, 141, 142, 143, 1, 2, 3, 4, 5, 6, 7, 8, 9, 144, 145, 146, 243, 244,
  245, 147, 148, 149, 246, 247, 248, 249, 250, 150, 151, 251,
];

export const expectedJohtoPokedexSpeciesIds = [
  152, 153, 154, 155, 156, 157, 158, 159, 160, 16, 17, 18, 21, 22, 163, 164, 19,
  20, 161, 162, 172, 25, 26, 10, 11, 12, 13, 14, 15, 165, 166, 167, 168, 74, 75,
  76, 41, 42, 169, 173, 35, 36, 174, 39, 40, 175, 176, 27, 28, 23, 24, 206, 179,
  180, 181, 194, 195, 92, 93, 94, 201, 95, 208, 69, 70, 71, 187, 188, 189, 46,
  47, 60, 61, 62, 186, 129, 130, 118, 119, 79, 80, 199, 43, 44, 45, 182, 96, 97,
  63, 64, 65, 132, 204, 205, 29, 30, 31, 32, 33, 34, 193, 469, 191, 192, 102,
  103, 185, 202, 48, 49, 123, 212, 127, 214, 109, 110, 88, 89, 81, 82, 100, 101,
  190, 424, 209, 210, 37, 38, 58, 59, 234, 183, 184, 50, 51, 56, 57, 52, 53, 54,
  55, 66, 67, 68, 236, 106, 107, 237, 203, 128, 241, 240, 126, 238, 124, 239,
  125, 122, 235, 83, 177, 178, 211, 72, 73, 98, 99, 213, 120, 121, 90, 91, 222,
  223, 224, 170, 171, 86, 87, 108, 463, 114, 465, 133, 134, 135, 136, 196, 197,
  116, 117, 230, 207, 225, 220, 221, 473, 216, 217, 231, 232, 226, 227, 84, 85,
  77, 78, 104, 105, 115, 111, 112, 198, 228, 229, 218, 219, 215, 200, 137, 233,
  113, 242, 131, 138, 139, 140, 141, 142, 143, 1, 2, 3, 4, 5, 6, 7, 8, 9, 144,
  145, 146, 243, 244, 245, 147, 148, 149, 246, 247, 248, 249, 250, 150, 151,
  251,
];

export const expectedHoennPokedexSpeciesIds = [
  252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266,
  267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281,
  282, 283, 284, 285, 286, 287, 288, 289, 63, 64, 65, 290, 291, 292, 293, 294,
  295, 296, 297, 118, 119, 129, 130, 298, 183, 184, 74, 75, 76, 299, 300, 301,
  41, 42, 169, 72, 73, 302, 303, 304, 305, 306, 66, 67, 68, 307, 308, 309, 310,
  311, 312, 81, 82, 100, 101, 313, 314, 43, 44, 45, 182, 84, 85, 315, 316, 317,
  318, 319, 320, 321, 322, 323, 218, 219, 324, 88, 89, 109, 110, 325, 326, 27,
  28, 327, 227, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340,
  341, 342, 343, 344, 345, 346, 347, 348, 174, 39, 40, 349, 350, 351, 120, 121,
  352, 353, 354, 355, 356, 357, 358, 359, 37, 38, 172, 25, 26, 54, 55, 360, 202,
  177, 178, 203, 231, 232, 127, 214, 111, 112, 361, 362, 363, 364, 365, 366,
  367, 368, 369, 222, 170, 171, 370, 116, 117, 230, 371, 372, 373, 374, 375,
  376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386,
];

export const expectedUpdatedHoennPokedexSpeciesIds = [
  252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266,
  267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281,
  282, 475, 283, 284, 285, 286, 287, 288, 289, 63, 64, 65, 290, 291, 292, 293,
  294, 295, 296, 297, 118, 119, 129, 130, 298, 183, 184, 74, 75, 76, 299, 476,
  300, 301, 41, 42, 169, 72, 73, 302, 303, 304, 305, 306, 66, 67, 68, 307, 308,
  309, 310, 311, 312, 81, 82, 462, 100, 101, 313, 314, 43, 44, 45, 182, 84, 85,
  406, 315, 407, 316, 317, 318, 319, 320, 321, 322, 323, 218, 219, 324, 88, 89,
  109, 110, 325, 326, 27, 28, 327, 227, 328, 329, 330, 331, 332, 333, 334, 335,
  336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 174, 39, 40,
  349, 350, 351, 120, 121, 352, 353, 354, 355, 356, 477, 357, 433, 358, 359, 37,
  38, 172, 25, 26, 54, 55, 360, 202, 177, 178, 203, 231, 232, 127, 214, 111,
  112, 464, 361, 362, 478, 363, 364, 365, 366, 367, 368, 369, 222, 170, 171,
  370, 116, 117, 230, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381,
  382, 383, 384, 385, 386,
];

export const expectedSinnohPokedexSpeciesIds = [
  387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401,
  402, 403, 404, 405, 63, 64, 65, 129, 130, 406, 315, 407, 41, 42, 169, 74, 75,
  76, 95, 208, 408, 409, 410, 411, 66, 67, 68, 54, 55, 412, 413, 414, 265, 266,
  267, 268, 269, 415, 416, 417, 418, 419, 420, 421, 422, 423, 214, 190, 424,
  425, 426, 427, 428, 92, 93, 94, 200, 429, 198, 430, 431, 432, 118, 119, 339,
  340, 433, 358, 434, 435, 307, 308, 436, 437, 77, 78, 438, 185, 439, 122, 440,
  113, 242, 173, 35, 36, 441, 172, 25, 26, 163, 164, 442, 443, 444, 445, 446,
  143, 201, 447, 448, 194, 195, 278, 279, 203, 449, 450, 298, 183, 184, 451,
  452, 453, 454, 455, 223, 224, 456, 457, 72, 73, 349, 350, 458, 226, 459, 460,
  215, 461, 480, 481, 482, 483, 484, 490,
];

export const expectedExpandedSinnohPokedexSpeciesIds = [
  387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401,
  402, 403, 404, 405, 63, 64, 65, 129, 130, 406, 315, 407, 41, 42, 169, 74, 75,
  76, 95, 208, 408, 409, 410, 411, 66, 67, 68, 54, 55, 412, 413, 414, 265, 266,
  267, 268, 269, 415, 416, 417, 418, 419, 420, 421, 422, 423, 214, 190, 424,
  425, 426, 427, 428, 92, 93, 94, 200, 429, 198, 430, 431, 432, 118, 119, 339,
  340, 433, 358, 434, 435, 307, 308, 436, 437, 77, 78, 438, 185, 439, 122, 440,
  113, 242, 173, 35, 36, 441, 172, 25, 26, 163, 164, 442, 443, 444, 445, 446,
  143, 201, 447, 448, 194, 195, 278, 279, 203, 449, 450, 298, 183, 184, 451,
  452, 453, 454, 455, 223, 224, 456, 457, 72, 73, 349, 350, 458, 226, 459, 460,
  215, 461, 480, 481, 482, 483, 484, 490, 479, 207, 472, 299, 476, 280, 281,
  282, 475, 108, 463, 133, 134, 135, 136, 196, 197, 470, 471, 333, 334, 175,
  176, 468, 228, 229, 81, 82, 462, 114, 465, 193, 469, 357, 111, 112, 464, 355,
  356, 477, 137, 233, 474, 123, 212, 239, 125, 466, 240, 126, 467, 220, 221,
  473, 361, 362, 478, 359, 487,
];

export const expectedUnovaPokedexSpeciesIds = [
  494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508,
  509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523,
  524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538,
  539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553,
  554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568,
  569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583,
  584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598,
  599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613,
  614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628,
  629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643,
  644, 645, 646, 647, 648, 649,
];

export const expectedNewUnovaPokedexSpeciesIds = [
  494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 509, 510, 519,
  520, 521, 540, 541, 542, 191, 192, 506, 507, 508, 179, 180, 181, 54, 55, 298,
  183, 184, 447, 448, 206, 531, 511, 512, 513, 514, 515, 516, 543, 544, 545,
  109, 110, 81, 82, 462, 58, 59, 240, 126, 467, 239, 125, 466, 19, 20, 41, 42,
  169, 88, 89, 527, 528, 524, 525, 526, 95, 208, 532, 533, 534, 529, 530, 300,
  301, 427, 428, 546, 547, 548, 549, 517, 518, 173, 35, 36, 133, 134, 135, 136,
  196, 197, 470, 471, 551, 552, 553, 554, 555, 550, 568, 569, 572, 573, 627,
  628, 629, 630, 27, 28, 557, 558, 559, 560, 556, 561, 328, 329, 330, 562, 563,
  564, 565, 566, 567, 599, 600, 601, 406, 315, 407, 574, 575, 576, 577, 578,
  579, 415, 416, 587, 214, 127, 522, 523, 418, 419, 570, 571, 580, 581, 588,
  589, 616, 617, 585, 586, 590, 591, 351, 299, 476, 304, 305, 306, 343, 344,
  636, 637, 595, 596, 597, 598, 602, 603, 604, 592, 593, 594, 610, 611, 612,
  335, 336, 605, 606, 607, 608, 609, 631, 632, 613, 614, 615, 641, 642, 645,
  451, 452, 227, 322, 323, 325, 326, 425, 426, 353, 354, 278, 279, 337, 338,
  359, 114, 465, 619, 620, 207, 472, 624, 625, 638, 639, 640, 535, 536, 537,
  618, 213, 458, 226, 223, 224, 222, 120, 121, 320, 321, 131, 363, 364, 365,
  333, 334, 37, 38, 436, 437, 215, 461, 225, 582, 583, 584, 220, 221, 473, 132,
  374, 375, 376, 86, 87, 538, 539, 626, 621, 622, 623, 633, 634, 635, 287, 288,
  289, 341, 342, 174, 39, 40, 108, 463, 193, 469, 357, 455, 453, 454, 246, 247,
  248, 643, 644, 646, 647, 648, 649,
];

export const expectedCentralKalosPokedexSpeciesIds = [
  650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 263, 264, 661, 662,
  663, 16, 17, 18, 664, 665, 666, 10, 11, 12, 13, 14, 15, 511, 512, 513, 514,
  515, 516, 172, 25, 26, 399, 400, 206, 298, 183, 184, 412, 413, 414, 283, 284,
  129, 130, 341, 342, 118, 119, 318, 319, 667, 668, 54, 55, 83, 447, 448, 280,
  281, 282, 475, 669, 670, 671, 406, 315, 407, 165, 166, 415, 416, 300, 301, 1,
  2, 3, 4, 5, 6, 7, 8, 9, 672, 673, 674, 675, 676, 84, 85, 311, 312, 316, 317,
  559, 560, 63, 64, 65, 43, 44, 45, 182, 161, 162, 290, 291, 292, 677, 678, 352,
  679, 680, 681, 543, 544, 545, 531, 235, 453, 454, 580, 581, 682, 683, 684,
  685, 313, 314, 187, 188, 189, 446, 143, 293, 294, 295, 307, 308, 41, 42, 169,
  610, 611, 612, 719, 720, 721,
];

export const expectedCoastalKalosPokedexSpeciesIds = [
  425, 426, 619, 620, 335, 336, 325, 326, 359, 686, 687, 337, 338, 371, 372,
  373, 278, 279, 276, 277, 688, 689, 557, 558, 72, 73, 320, 321, 370, 690, 691,
  692, 693, 120, 121, 90, 91, 211, 116, 117, 230, 369, 551, 552, 553, 694, 695,
  449, 450, 111, 112, 464, 95, 208, 527, 528, 66, 67, 68, 104, 105, 115, 303,
  696, 697, 698, 699, 142, 597, 598, 209, 210, 309, 310, 228, 229, 133, 134,
  135, 136, 196, 197, 470, 471, 700, 587, 193, 469, 701, 561, 622, 623, 299,
  476, 296, 297, 538, 539, 396, 397, 398, 434, 435, 29, 30, 31, 32, 33, 34, 702,
  433, 358, 439, 122, 577, 578, 579, 360, 202, 524, 525, 526, 302, 703, 128,
  241, 179, 180, 181, 127, 214, 417, 79, 80, 199, 102, 103, 441, 458, 226, 366,
  367, 368, 223, 224, 222, 170, 171, 594, 131, 144, 145, 146,
];

export const expectedMountainKalosPokedexSpeciesIds = [
  50, 51, 328, 329, 330, 443, 444, 445, 74, 75, 76, 218, 219, 213, 451, 452,
  194, 195, 704, 705, 706, 588, 589, 616, 617, 69, 70, 71, 455, 92, 93, 94, 60,
  61, 62, 186, 23, 24, 618, 339, 340, 509, 510, 261, 262, 504, 505, 624, 625,
  707, 198, 430, 590, 591, 270, 271, 272, 418, 419, 550, 708, 709, 710, 711,
  607, 608, 609, 479, 81, 82, 462, 100, 101, 568, 569, 220, 221, 473, 712, 713,
  613, 614, 238, 124, 582, 583, 584, 459, 460, 225, 215, 461, 532, 533, 534,
  324, 27, 28, 304, 305, 306, 246, 247, 248, 631, 632, 167, 168, 21, 22, 615,
  227, 714, 715, 207, 472, 163, 164, 174, 39, 40, 353, 354, 570, 571, 574, 575,
  576, 438, 185, 327, 216, 217, 108, 463, 123, 212, 132, 333, 334, 621, 633,
  634, 635, 147, 148, 149, 716, 717, 718, 150,
];

export const expectedSmAlolaPokedexSpeciesIds = [
  722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 19, 20,
  10, 11, 12, 165, 166, 167, 168, 172, 25, 26, 736, 737, 738, 438, 185, 440,
  113, 242, 446, 143, 79, 80, 199, 278, 279, 63, 64, 65, 52, 53, 81, 82, 462,
  88, 89, 58, 59, 96, 97, 296, 297, 235, 739, 740, 92, 93, 94, 425, 426, 200,
  429, 41, 42, 169, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 225, 741, 742,
  743, 548, 549, 546, 547, 54, 55, 129, 130, 339, 340, 66, 67, 68, 524, 525,
  526, 703, 302, 744, 745, 327, 72, 73, 456, 457, 746, 370, 222, 747, 748, 90,
  91, 371, 372, 373, 506, 507, 508, 133, 134, 135, 136, 196, 197, 470, 471, 700,
  749, 750, 174, 39, 40, 128, 241, 283, 284, 751, 752, 753, 754, 755, 756, 46,
  47, 60, 61, 62, 186, 118, 119, 349, 350, 594, 661, 662, 663, 757, 758, 104,
  105, 115, 240, 126, 467, 759, 760, 761, 762, 763, 764, 127, 765, 766, 704,
  705, 706, 351, 767, 768, 120, 121, 769, 770, 408, 409, 410, 411, 566, 567,
  564, 565, 708, 709, 299, 476, 771, 170, 171, 772, 773, 718, 568, 569, 227,
  132, 173, 35, 36, 774, 374, 375, 376, 137, 233, 474, 674, 675, 775, 324, 776,
  777, 239, 125, 466, 74, 75, 76, 551, 552, 553, 328, 329, 330, 443, 444, 445,
  707, 778, 779, 780, 359, 361, 362, 478, 215, 461, 27, 28, 37, 38, 582, 583,
  584, 209, 210, 422, 423, 369, 781, 318, 319, 320, 321, 131, 102, 103, 782,
  783, 784, 587, 123, 212, 198, 430, 447, 448, 147, 148, 149, 142, 785, 786,
  787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801,
  802,
];

export const expectedSmMelemelePokedexSpeciesIds = [
  722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 19, 20,
  10, 11, 12, 165, 166, 167, 168, 172, 25, 26, 736, 737, 738, 438, 185, 440,
  113, 242, 446, 143, 79, 80, 199, 278, 279, 63, 64, 65, 52, 53, 81, 82, 462,
  88, 89, 58, 59, 96, 97, 296, 297, 235, 739, 740, 92, 93, 94, 425, 426, 200,
  429, 41, 42, 169, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 225, 741, 742,
  743, 548, 549, 546, 547, 54, 55, 129, 130, 339, 340, 66, 67, 68, 524, 525,
  526, 703, 302, 744, 745, 327, 72, 73, 456, 457, 746, 370, 222, 747, 748, 90,
  91, 371, 372, 373, 785,
];

export const expectedSmAkalaPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 10, 11, 12, 736, 737, 738, 438, 185, 440,
  113, 242, 278, 279, 739, 740, 92, 93, 94, 41, 42, 169, 50, 51, 741, 54, 55,
  129, 130, 339, 340, 72, 73, 456, 457, 746, 370, 222, 747, 748, 506, 507, 508,
  133, 134, 135, 136, 196, 197, 470, 471, 700, 749, 750, 174, 39, 40, 128, 241,
  283, 284, 751, 752, 753, 754, 755, 756, 46, 47, 60, 61, 62, 186, 118, 119,
  349, 350, 594, 661, 662, 663, 757, 758, 104, 105, 115, 240, 126, 467, 759,
  760, 761, 762, 763, 764, 127, 765, 766, 704, 705, 706, 351, 767, 768, 120,
  121, 769, 770, 408, 409, 410, 411, 566, 567, 564, 565, 708, 709, 299, 476,
  771, 170, 171, 786,
];

export const expectedSmUlaulaPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 165, 166, 167, 168, 736, 737, 738, 440, 113,
  242, 79, 80, 199, 278, 279, 52, 53, 81, 82, 462, 88, 89, 739, 740, 92, 93, 94,
  41, 42, 169, 50, 51, 21, 22, 741, 742, 743, 548, 549, 546, 547, 54, 55, 129,
  130, 72, 73, 456, 457, 746, 749, 750, 283, 284, 751, 752, 755, 756, 46, 47,
  60, 61, 62, 186, 118, 119, 704, 705, 706, 351, 568, 569, 227, 132, 173, 35,
  36, 774, 374, 375, 376, 137, 233, 474, 674, 675, 775, 324, 776, 777, 239, 125,
  466, 74, 75, 76, 551, 552, 553, 328, 329, 330, 443, 444, 445, 707, 778, 779,
  780, 359, 361, 362, 478, 215, 461, 27, 28, 37, 38, 582, 583, 584, 787,
];

export const expectedSmPoniPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 440, 113, 242, 278, 279, 96, 97, 296, 297,
  739, 740, 41, 42, 169, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 741, 742,
  743, 548, 549, 546, 547, 54, 55, 129, 130, 339, 340, 66, 67, 68, 524, 525,
  526, 703, 302, 744, 745, 72, 73, 456, 457, 749, 750, 128, 241, 759, 760, 127,
  704, 705, 706, 351, 767, 768, 227, 209, 210, 422, 423, 369, 781, 318, 319,
  320, 321, 131, 102, 103, 782, 783, 784, 587, 123, 212, 198, 430, 447, 448,
  147, 148, 149, 142, 788,
];

export const expectedUsumAlolaPokedexSpeciesIds = [
  722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 19, 20,
  10, 11, 12, 165, 166, 167, 168, 427, 428, 686, 687, 570, 571, 676, 172, 25,
  26, 736, 737, 738, 438, 185, 440, 113, 242, 446, 143, 79, 80, 199, 278, 279,
  63, 64, 65, 52, 53, 81, 82, 462, 88, 89, 439, 122, 23, 24, 206, 58, 59, 96,
  97, 296, 297, 235, 739, 740, 92, 93, 94, 425, 426, 198, 430, 41, 42, 169, 714,
  715, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 225, 701, 741, 742, 743, 669,
  670, 671, 548, 549, 546, 547, 54, 55, 238, 124, 129, 130, 339, 340, 86, 87,
  66, 67, 68, 524, 525, 526, 703, 302, 303, 744, 745, 327, 72, 73, 456, 457,
  746, 370, 222, 747, 748, 90, 91, 366, 367, 368, 223, 224, 458, 226, 371, 372,
  373, 506, 507, 508, 133, 134, 135, 136, 196, 197, 470, 471, 700, 179, 180,
  181, 749, 750, 174, 39, 40, 128, 241, 283, 284, 751, 752, 753, 754, 755, 756,
  46, 47, 60, 61, 62, 186, 118, 119, 550, 349, 350, 594, 661, 662, 663, 757,
  758, 104, 105, 115, 240, 126, 467, 636, 637, 759, 760, 761, 762, 763, 764,
  127, 163, 164, 352, 765, 766, 704, 705, 706, 351, 767, 768, 120, 121, 769,
  770, 138, 139, 140, 141, 345, 346, 347, 348, 408, 409, 410, 411, 566, 567,
  564, 565, 696, 697, 698, 699, 246, 247, 248, 708, 709, 177, 178, 299, 476,
  771, 170, 171, 772, 773, 803, 804, 718, 568, 569, 572, 573, 204, 205, 227,
  132, 173, 35, 36, 605, 606, 774, 374, 375, 376, 137, 233, 474, 674, 675, 775,
  324, 776, 228, 229, 702, 777, 309, 310, 239, 125, 466, 74, 75, 76, 551, 552,
  553, 328, 329, 330, 443, 444, 445, 343, 344, 622, 623, 707, 778, 353, 354,
  592, 593, 779, 780, 359, 361, 362, 478, 215, 461, 27, 28, 37, 38, 582, 583,
  584, 559, 560, 624, 625, 209, 210, 422, 423, 369, 781, 318, 319, 690, 691,
  692, 693, 320, 321, 131, 357, 102, 103, 341, 342, 619, 620, 782, 783, 784,
  587, 123, 212, 214, 190, 424, 667, 668, 200, 429, 621, 108, 463, 447, 448,
  147, 148, 149, 142, 785, 786, 787, 788, 789, 790, 791, 792, 793, 805, 806,
  794, 795, 796, 797, 798, 799, 800, 801, 802, 807,
];

export const expectedUsumMelemelePokedexSpeciesIds = [
  722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 19, 20,
  10, 11, 12, 165, 166, 167, 168, 427, 428, 686, 687, 570, 571, 676, 172, 25,
  26, 736, 737, 738, 438, 185, 440, 113, 242, 446, 143, 79, 80, 199, 278, 279,
  63, 64, 65, 52, 53, 81, 82, 462, 88, 89, 439, 122, 23, 24, 206, 58, 59, 96,
  97, 296, 297, 235, 739, 740, 92, 93, 94, 425, 426, 198, 430, 41, 42, 169, 714,
  715, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 225, 701, 741, 742, 743, 669,
  670, 671, 548, 549, 546, 547, 54, 55, 238, 124, 129, 130, 339, 340, 86, 87,
  66, 67, 68, 524, 525, 526, 703, 302, 303, 744, 745, 327, 72, 73, 456, 457,
  746, 370, 222, 747, 748, 90, 91, 366, 367, 368, 223, 224, 458, 226, 371, 372,
  373, 785,
];

export const expectedUsumAkalaPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 10, 11, 12, 736, 737, 738, 438, 185, 440,
  113, 242, 278, 279, 739, 740, 92, 93, 94, 41, 42, 169, 50, 51, 741, 54, 55,
  129, 130, 339, 340, 72, 73, 456, 457, 746, 370, 222, 747, 748, 223, 224, 458,
  226, 506, 507, 508, 133, 134, 135, 136, 196, 197, 470, 471, 700, 179, 180,
  181, 749, 750, 174, 39, 40, 128, 241, 283, 284, 751, 752, 753, 754, 755, 756,
  46, 47, 60, 61, 62, 186, 118, 119, 550, 349, 350, 594, 661, 662, 663, 757,
  758, 104, 105, 115, 240, 126, 467, 636, 637, 759, 760, 761, 762, 763, 764,
  127, 163, 164, 352, 765, 766, 704, 705, 706, 351, 767, 768, 120, 121, 769,
  770, 138, 139, 140, 141, 345, 346, 347, 348, 408, 409, 410, 411, 566, 567,
  564, 565, 696, 697, 698, 699, 246, 247, 248, 708, 709, 177, 178, 299, 476,
  771, 170, 171, 786,
];

export const expectedUsumUlaulaPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 165, 166, 167, 168, 736, 737, 738, 440, 113,
  242, 79, 80, 199, 278, 279, 52, 53, 81, 82, 462, 88, 89, 739, 740, 92, 93, 94,
  41, 42, 169, 50, 51, 21, 22, 741, 742, 743, 669, 670, 671, 548, 549, 546, 547,
  54, 55, 129, 130, 72, 73, 456, 457, 746, 366, 367, 368, 749, 750, 283, 284,
  751, 752, 755, 756, 46, 47, 60, 61, 62, 186, 118, 119, 550, 704, 705, 706,
  351, 568, 569, 572, 573, 204, 205, 227, 132, 173, 35, 36, 605, 606, 774, 374,
  375, 376, 137, 233, 474, 674, 675, 775, 324, 776, 228, 229, 702, 777, 309,
  310, 239, 125, 466, 74, 75, 76, 551, 552, 553, 328, 329, 330, 443, 444, 445,
  343, 344, 622, 623, 707, 778, 353, 354, 592, 593, 779, 780, 359, 361, 362,
  478, 215, 461, 27, 28, 37, 38, 582, 583, 584, 559, 560, 624, 625, 787,
];

export const expectedUsumPoniPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 427, 428, 686, 687, 570, 571, 676, 440, 113,
  242, 278, 279, 96, 97, 296, 297, 739, 740, 41, 42, 169, 714, 715, 50, 51, 21,
  22, 627, 628, 629, 630, 56, 57, 741, 742, 743, 669, 670, 671, 548, 549, 546,
  547, 54, 55, 129, 130, 339, 340, 66, 67, 68, 524, 525, 526, 703, 302, 744,
  745, 72, 73, 456, 457, 749, 750, 128, 241, 550, 759, 760, 127, 704, 705, 706,
  351, 767, 768, 227, 209, 210, 422, 423, 369, 781, 318, 319, 690, 691, 692,
  693, 320, 321, 131, 357, 102, 103, 341, 342, 619, 620, 782, 783, 784, 587,
  123, 212, 214, 190, 424, 667, 668, 200, 429, 621, 108, 463, 447, 448, 147,
  148, 149, 142, 788,
];

export const expectedGalarPokedexSpeciesIds = [
  810, 811, 812, 813, 814, 815, 816, 817, 818, 824, 825, 826, 10, 11, 12, 736,
  737, 738, 163, 164, 821, 822, 823, 819, 820, 519, 520, 521, 827, 828, 263,
  264, 862, 831, 832, 270, 271, 272, 273, 274, 275, 833, 834, 509, 510, 835,
  836, 659, 660, 572, 573, 761, 762, 763, 43, 44, 45, 182, 406, 315, 407, 278,
  279, 595, 596, 309, 310, 37, 38, 58, 59, 582, 583, 584, 220, 221, 473, 225,
  361, 362, 478, 343, 344, 749, 750, 557, 558, 622, 623, 517, 518, 177, 178,
  759, 760, 459, 460, 98, 99, 194, 195, 341, 342, 290, 291, 292, 236, 106, 107,
  237, 674, 675, 599, 600, 601, 415, 416, 436, 437, 280, 281, 282, 475, 425,
  426, 829, 830, 420, 421, 434, 435, 535, 536, 537, 355, 356, 477, 66, 67, 68,
  92, 93, 94, 129, 130, 118, 119, 223, 224, 90, 91, 349, 350, 550, 746, 771,
  568, 569, 850, 851, 837, 838, 839, 50, 51, 529, 530, 524, 525, 526, 532, 533,
  534, 527, 528, 714, 715, 95, 208, 846, 847, 52, 863, 53, 868, 869, 742, 743,
  597, 598, 710, 711, 172, 25, 26, 133, 134, 135, 136, 196, 197, 470, 471, 700,
  840, 841, 842, 677, 678, 684, 685, 682, 683, 751, 752, 360, 202, 83, 865, 170,
  171, 453, 454, 559, 560, 618, 213, 339, 340, 422, 423, 767, 768, 688, 689,
  222, 864, 859, 860, 861, 856, 857, 858, 757, 758, 624, 625, 538, 539, 109,
  110, 438, 185, 173, 35, 36, 175, 176, 468, 446, 143, 546, 547, 111, 112, 464,
  574, 575, 576, 577, 578, 579, 588, 589, 616, 617, 605, 606, 613, 614, 627,
  628, 629, 630, 451, 452, 607, 608, 609, 686, 687, 215, 461, 302, 303, 556,
  561, 447, 448, 324, 778, 878, 879, 211, 592, 593, 747, 748, 845, 848, 849,
  843, 844, 449, 450, 632, 631, 694, 695, 701, 328, 329, 330, 610, 611, 612,
  562, 867, 563, 679, 680, 681, 77, 78, 854, 855, 876, 708, 709, 755, 756, 765,
  766, 877, 870, 780, 776, 777, 872, 873, 852, 853, 871, 458, 226, 320, 321,
  712, 713, 781, 131, 337, 338, 439, 122, 866, 554, 555, 874, 875, 884, 479,
  132, 880, 881, 882, 883, 4, 5, 6, 772, 773, 246, 247, 248, 633, 634, 635, 704,
  705, 706, 782, 783, 784, 885, 886, 887, 888, 889, 890,
];

export const expectedIsleOfArmorPokedexSpeciesIds = [
  79, 80, 199, 427, 428, 440, 113, 242, 819, 820, 174, 39, 40, 824, 825, 826,
  753, 754, 840, 841, 842, 661, 662, 663, 403, 404, 405, 707, 624, 625, 63, 64,
  65, 280, 281, 282, 475, 98, 99, 72, 73, 129, 130, 223, 224, 458, 226, 278,
  279, 451, 452, 206, 626, 108, 463, 833, 834, 194, 195, 704, 705, 706, 621,
  616, 617, 588, 589, 1, 2, 3, 7, 8, 9, 543, 544, 545, 590, 591, 764, 114, 465,
  453, 454, 172, 25, 26, 570, 571, 765, 766, 341, 342, 845, 118, 119, 846, 847,
  120, 121, 891, 892, 587, 702, 877, 81, 82, 462, 686, 687, 746, 318, 319, 506,
  507, 508, 128, 241, 123, 212, 127, 214, 557, 558, 767, 768, 871, 747, 748,
  852, 853, 90, 91, 769, 770, 425, 426, 339, 340, 298, 183, 184, 60, 61, 62,
  186, 54, 55, 293, 294, 295, 527, 528, 227, 524, 525, 526, 744, 745, 757, 758,
  559, 560, 619, 620, 782, 783, 784, 27, 28, 104, 105, 115, 324, 843, 844, 551,
  552, 553, 627, 628, 629, 630, 111, 112, 464, 636, 637, 170, 171, 320, 321,
  592, 593, 690, 691, 692, 693, 116, 117, 230, 548, 549, 415, 416, 102, 103,
  132, 137, 233, 474, 893,
];

export const expectedCrownTundraPokedexSpeciesIds = [
  872, 873, 831, 832, 819, 820, 220, 221, 473, 439, 122, 866, 238, 124, 239,
  125, 466, 240, 126, 467, 531, 582, 583, 584, 361, 362, 478, 215, 461, 615,
  459, 460, 708, 709, 333, 334, 859, 860, 861, 856, 857, 858, 173, 35, 36, 778,
  442, 607, 608, 609, 574, 575, 576, 577, 578, 579, 532, 533, 534, 339, 340,
  129, 130, 550, 29, 30, 31, 32, 33, 34, 263, 264, 862, 133, 134, 135, 136, 197,
  196, 471, 470, 700, 696, 697, 698, 699, 436, 437, 874, 875, 751, 752, 595,
  596, 588, 589, 616, 617, 850, 851, 632, 631, 554, 555, 77, 78, 359, 878, 879,
  885, 886, 887, 371, 372, 373, 443, 444, 445, 621, 225, 613, 614, 138, 139,
  140, 141, 142, 703, 374, 375, 376, 854, 855, 447, 448, 633, 634, 635, 246,
  247, 248, 712, 713, 41, 42, 169, 564, 565, 566, 567, 343, 344, 622, 623, 835,
  836, 877, 871, 363, 364, 365, 781, 821, 822, 823, 829, 830, 546, 547, 213,
  876, 446, 143, 302, 303, 837, 838, 839, 597, 598, 714, 715, 345, 346, 347,
  348, 369, 349, 350, 131, 304, 305, 306, 147, 148, 149, 377, 378, 379, 894,
  895, 144, 145, 146, 638, 639, 640, 896, 897, 898,
];

export const expectedHisuiPokedexSpeciesIds = [
  722, 723, 724, 155, 156, 157, 501, 502, 503, 399, 400, 396, 397, 398, 403,
  404, 405, 265, 266, 267, 268, 269, 77, 78, 133, 134, 135, 136, 196, 197, 470,
  471, 700, 41, 42, 169, 425, 426, 401, 402, 418, 419, 412, 413, 414, 74, 75,
  76, 234, 899, 446, 143, 46, 47, 172, 25, 26, 63, 64, 65, 390, 391, 392, 427,
  428, 420, 421, 54, 55, 415, 416, 123, 900, 212, 214, 439, 122, 190, 424, 129,
  130, 422, 423, 211, 904, 440, 113, 242, 406, 315, 407, 455, 548, 549, 114,
  465, 339, 340, 453, 454, 280, 281, 282, 475, 193, 469, 449, 450, 417, 434,
  435, 216, 217, 901, 704, 705, 706, 95, 208, 111, 112, 464, 438, 185, 108, 463,
  175, 176, 468, 387, 388, 389, 137, 233, 474, 92, 93, 94, 442, 198, 430, 201,
  363, 364, 365, 223, 224, 451, 452, 58, 59, 431, 432, 66, 67, 68, 441, 355,
  356, 477, 393, 394, 395, 458, 226, 550, 902, 37, 38, 72, 73, 456, 457, 240,
  126, 467, 81, 82, 462, 436, 437, 239, 125, 466, 207, 472, 443, 444, 445, 299,
  476, 100, 101, 479, 433, 358, 200, 429, 173, 35, 36, 215, 903, 461, 361, 362,
  478, 408, 409, 410, 411, 220, 221, 473, 712, 713, 459, 460, 570, 571, 627,
  628, 447, 448, 480, 481, 482, 485, 486, 488, 641, 642, 645, 905, 483, 484,
  487, 493, 489, 490, 492, 491,
];

export const expectedPaldeaPokedexSpeciesIds = [
  906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920,
  187, 188, 189, 661, 662, 663, 921, 922, 923, 228, 229, 734, 735, 819, 820,
  191, 192, 401, 402, 664, 665, 666, 415, 416, 821, 822, 823, 440, 113, 242,
  298, 183, 184, 283, 284, 418, 419, 194, 980, 54, 55, 833, 834, 174, 39, 40,
  280, 281, 282, 475, 96, 97, 92, 93, 94, 924, 925, 172, 25, 26, 926, 927, 287,
  288, 289, 761, 762, 763, 928, 929, 930, 438, 185, 744, 745, 837, 838, 839,
  403, 404, 405, 396, 397, 398, 741, 179, 180, 181, 548, 549, 285, 286, 840,
  841, 842, 325, 326, 931, 200, 429, 296, 297, 739, 740, 757, 758, 231, 232,
  878, 879, 443, 444, 445, 932, 933, 934, 278, 279, 129, 130, 846, 847, 550,
  316, 317, 52, 53, 425, 426, 669, 670, 671, 50, 51, 324, 322, 323, 436, 437,
  610, 611, 612, 56, 57, 979, 307, 308, 447, 448, 935, 936, 937, 339, 340, 938,
  939, 704, 705, 706, 453, 454, 940, 941, 133, 134, 135, 136, 196, 197, 470,
  471, 700, 206, 982, 585, 586, 203, 981, 88, 89, 942, 943, 848, 849, 702, 417,
  944, 945, 234, 590, 591, 100, 101, 81, 82, 462, 132, 58, 59, 216, 217, 335,
  336, 333, 334, 672, 673, 128, 667, 668, 434, 435, 570, 571, 215, 461, 198,
  430, 574, 575, 576, 854, 855, 778, 707, 876, 946, 947, 948, 949, 357, 753,
  754, 950, 951, 952, 331, 332, 953, 954, 48, 49, 204, 205, 123, 212, 214, 955,
  956, 449, 450, 551, 552, 553, 843, 844, 749, 750, 636, 637, 371, 372, 373,
  957, 958, 959, 856, 857, 858, 859, 860, 861, 960, 961, 962, 963, 964, 965,
  966, 967, 968, 302, 353, 354, 870, 701, 442, 714, 715, 885, 886, 887, 969,
  970, 479, 971, 972, 765, 766, 775, 246, 247, 248, 874, 875, 871, 769, 770, 79,
  80, 199, 422, 423, 90, 91, 211, 370, 456, 457, 779, 594, 690, 691, 692, 693,
  602, 603, 604, 747, 748, 973, 147, 148, 149, 872, 873, 459, 460, 225, 613,
  614, 361, 362, 478, 615, 974, 975, 712, 713, 627, 628, 624, 625, 983, 633,
  634, 635, 976, 977, 978, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993,
  994, 995, 996, 997, 998, 999, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007,
  1008,
];

export const expectedKitakamiPokedexSpeciesIds = [
  167, 168, 193, 469, 194, 195, 261, 262, 313, 314, 341, 342, 540, 541, 542,
  742, 743, 23, 24, 172, 25, 26, 69, 70, 71, 161, 162, 396, 397, 398, 753, 754,
  840, 841, 842, 1011, 37, 38, 60, 61, 62, 186, 129, 130, 163, 164, 190, 424,
  214, 220, 221, 473, 234, 273, 274, 275, 280, 281, 282, 475, 401, 402, 417,
  447, 448, 548, 549, 708, 709, 744, 745, 819, 820, 948, 949, 1012, 1013, 58,
  59, 74, 75, 76, 438, 185, 532, 533, 534, 714, 715, 846, 847, 856, 857, 858,
  877, 968, 924, 925, 56, 57, 979, 446, 143, 270, 271, 272, 299, 476, 403, 404,
  405, 736, 737, 738, 741, 27, 28, 92, 93, 94, 207, 472, 228, 229, 325, 326,
  629, 630, 749, 750, 782, 783, 784, 962, 109, 110, 619, 620, 355, 356, 477,
  433, 358, 218, 219, 607, 608, 609, 283, 284, 173, 35, 36, 436, 437, 969, 970,
  349, 350, 206, 982, 339, 340, 443, 444, 445, 703, 757, 758, 215, 461, 361,
  362, 478, 602, 603, 604, 704, 705, 706, 580, 581, 833, 834, 845, 624, 625,
  983, 778, 859, 860, 861, 876, 550, 902, 901, 1014, 1015, 1016, 1017,
];

export const expectedBlueberryPokedexSpeciesIds = [
  84, 85, 102, 103, 111, 112, 464, 48, 49, 239, 125, 466, 240, 126, 467, 440,
  113, 242, 123, 212, 900, 128, 522, 523, 203, 981, 551, 552, 553, 953, 954,
  627, 628, 629, 630, 667, 668, 585, 586, 235, 479, 868, 869, 328, 329, 330,
  731, 732, 733, 72, 73, 116, 117, 230, 779, 546, 547, 764, 287, 288, 289, 43,
  44, 45, 182, 50, 51, 88, 89, 335, 336, 739, 740, 741, 79, 80, 199, 170, 171,
  686, 687, 370, 456, 457, 594, 324, 661, 662, 663, 751, 752, 236, 106, 107,
  237, 74, 75, 76, 529, 530, 574, 575, 576, 677, 678, 774, 408, 409, 410, 411,
  572, 573, 227, 333, 334, 81, 82, 462, 311, 312, 559, 560, 622, 623, 322, 323,
  854, 855, 137, 233, 474, 595, 596, 602, 603, 604, 374, 375, 376, 610, 611,
  612, 86, 87, 131, 211, 904, 577, 578, 579, 209, 210, 613, 614, 27, 28, 37, 38,
  459, 460, 884, 1018, 1019, 1, 2, 3, 4, 5, 6, 7, 8, 9, 152, 153, 154, 155, 156,
  157, 158, 159, 160, 252, 253, 254, 255, 256, 257, 258, 259, 260, 387, 388,
  389, 390, 391, 392, 393, 394, 395, 495, 496, 497, 498, 499, 500, 501, 502,
  503, 650, 651, 652, 653, 654, 655, 656, 657, 658, 722, 723, 724, 725, 726,
  727, 728, 729, 730, 810, 811, 812, 813, 814, 815, 816, 817, 818, 1020, 1021,
  1023, 1022, 1024, 1009, 1010, 1025,
];

export const expectedLumiosePokedexSpeciesIds = [
  152, 153, 154, 498, 499, 500, 158, 159, 160, 661, 662, 663, 659, 660, 664,
  665, 666, 13, 14, 15, 16, 17, 18, 179, 180, 181, 504, 505, 406, 315, 407, 129,
  130, 688, 689, 120, 121, 669, 670, 671, 672, 673, 677, 678, 667, 668, 674,
  675, 568, 569, 702, 172, 25, 26, 173, 35, 36, 167, 168, 23, 24, 63, 64, 65,
  92, 93, 94, 543, 544, 545, 679, 680, 681, 69, 70, 71, 511, 512, 513, 514, 515,
  516, 307, 308, 309, 310, 280, 281, 282, 475, 228, 229, 333, 334, 531, 682,
  683, 684, 685, 133, 134, 135, 136, 196, 197, 470, 471, 700, 427, 428, 353,
  354, 582, 583, 584, 322, 323, 449, 450, 529, 530, 551, 552, 553, 66, 67, 68,
  443, 444, 445, 703, 302, 303, 359, 447, 448, 79, 80, 199, 318, 319, 602, 603,
  604, 147, 148, 149, 1, 2, 3, 4, 5, 6, 7, 8, 9, 618, 676, 686, 687, 690, 691,
  692, 693, 704, 705, 706, 225, 361, 362, 478, 459, 460, 712, 713, 123, 212,
  127, 214, 587, 701, 708, 709, 559, 560, 714, 715, 707, 607, 608, 609, 142,
  696, 697, 698, 699, 95, 208, 304, 305, 306, 694, 695, 710, 711, 246, 247, 248,
  656, 657, 658, 870, 650, 651, 652, 227, 653, 654, 655, 371, 372, 373, 115,
  780, 374, 375, 376, 716, 717, 718, 719, 150,
];

export const expectedHyperspacePokedexSpeciesIds = [
  56, 57, 979, 52, 53, 863, 83, 865, 104, 105, 137, 233, 474, 951, 952, 957,
  958, 959, 967, 969, 970, 479, 971, 972, 769, 770, 352, 973, 615, 977, 978,
  996, 997, 998, 999, 1000, 211, 904, 252, 253, 254, 255, 256, 257, 258, 259,
  260, 349, 350, 433, 358, 876, 509, 510, 517, 518, 538, 539, 562, 563, 867,
  767, 768, 827, 828, 852, 853, 778, 900, 877, 622, 623, 821, 822, 823, 174, 39,
  40, 926, 927, 396, 397, 398, 325, 326, 931, 739, 740, 932, 933, 934, 316, 317,
  41, 42, 169, 935, 936, 937, 942, 943, 848, 849, 944, 945, 335, 336, 439, 122,
  866, 590, 591, 485, 721, 638, 639, 640, 647, 648, 649, 720, 802, 808, 809,
  491, 380, 381, 382, 383, 384, 801, 807,
];

export const sourceOptionalPokedexEntryKeys = new Set([
  // Source-visible entries excluded by source/game completion rules.
  // Keep this explicit: optional completion is a per-dex rule, not a mythical shortcut.
  "101:151",
  "201:151",
  "301:151",
  "301:251",
  "401:151",
  "401:251",
  "501:385",
  "501:386",
  "701:385",
  "701:386",
  "601:151",
  "801:490",
  "1001:151",
  "1001:251",
  "1101:494",
  "1101:647",
  "1101:648",
  "1101:649",
  "1201:494",
  "1201:647",
  "1201:648",
  "1201:649",
  "1301:719",
  "1301:720",
  "1301:721",
  "1302:144",
  "1302:145",
  "1302:146",
  "1303:150",
  "1401:385",
  "1401:386",
  "1501:801",
  "1501:802",
  "1601:801",
  "1601:802",
  "1601:807",
  "1701:151",
  "1701:808",
  "1701:809",
  "1901:893",
  "2101:490",
  "2201:489",
  "2201:490",
  "2201:491",
  "2201:492",
  "2501:1009",
  "2501:1010",
  "2501:1025",
  "2601:150",
  "2601:719",
  "2701:807",
]);

export const nationalPokedexIds = new Set([
  502, 602, 702, 802, 902, 1002, 1102, 1202, 1304, 1402, 2102,
]);

export const expectedNationalPokedexMaxSpeciesById = new Map([
  [502, 386],
  [602, 386],
  [702, 386],
  [802, 493],
  [902, 493],
  [1002, 493],
  [1102, 649],
  [1202, 649],
  [1304, 721],
  [1402, 721],
  [2102, 493],
]);

export const mythicalSpeciesIds = new Set([
  151, 251, 385, 386, 489, 490, 491, 492, 493, 494, 647, 648, 649, 719, 720,
  721, 801, 802, 807, 808, 809, 893, 1025,
]);

export function getExpectedPokedexEntryRequired(pokedexId, speciesId) {
  if (nationalPokedexIds.has(pokedexId) && mythicalSpeciesIds.has(speciesId)) {
    return false;
  }
  return !sourceOptionalPokedexEntryKeys.has(`${pokedexId}:${speciesId}`);
}

export function addExpectedPokedexEntryRows(
  expectedRows,
  pokedexId,
  speciesIds,
  startNumber = 1,
) {
  speciesIds.forEach((speciesId, index) => {
    expectedRows.push({
      pokedex_id: pokedexId,
      pokedex_number: index + startNumber,
      species_id: speciesId,
      is_source_required_for_completion: getExpectedPokedexEntryRequired(
        pokedexId,
        speciesId,
      ),
    });
  });
}

export function addExpectedNationalPokedexEntryRows(
  expectedRows,
  pokedexId,
  maxSpeciesId,
) {
  addExpectedPokedexEntryRows(
    expectedRows,
    pokedexId,
    Array.from({ length: maxSpeciesId }, (_, index) => index + 1),
    1,
  );
}

export function buildExpectedPokedexEntries() {
  const expectedRows = [];
  for (const pokedexId of [101, 201, 601]) {
    for (let pokedexNumber = 1; pokedexNumber <= 151; pokedexNumber += 1) {
      expectedRows.push({
        pokedex_id: pokedexId,
        pokedex_number: pokedexNumber,
        species_id: pokedexNumber,
        is_source_required_for_completion: getExpectedPokedexEntryRequired(
          pokedexId,
          pokedexNumber,
        ),
      });
    }
  }
  for (let pokedexNumber = 1; pokedexNumber <= 153; pokedexNumber += 1) {
    let speciesId = pokedexNumber;
    if (pokedexNumber === 152) speciesId = 808;
    if (pokedexNumber === 153) speciesId = 809;
    expectedRows.push({
      pokedex_id: 1701,
      pokedex_number: pokedexNumber,
      species_id: speciesId,
      is_source_required_for_completion: getExpectedPokedexEntryRequired(
        1701,
        speciesId,
      ),
    });
  }
  addExpectedPokedexEntryRows(
    expectedRows,
    301,
    expectedNewPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    401,
    expectedNewPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1001,
    expectedJohtoPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    501,
    expectedHoennPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    701,
    expectedHoennPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1401,
    expectedUpdatedHoennPokedexSpeciesIds,
    1,
  );
  addExpectedNationalPokedexEntryRows(expectedRows, 502, 386);
  addExpectedNationalPokedexEntryRows(expectedRows, 602, 386);
  addExpectedNationalPokedexEntryRows(expectedRows, 702, 386);
  addExpectedPokedexEntryRows(
    expectedRows,
    801,
    expectedSinnohPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    901,
    expectedExpandedSinnohPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2101,
    expectedSinnohPokedexSpeciesIds,
    1,
  );
  addExpectedNationalPokedexEntryRows(expectedRows, 802, 493);
  addExpectedNationalPokedexEntryRows(expectedRows, 902, 493);
  addExpectedNationalPokedexEntryRows(expectedRows, 1002, 493);
  addExpectedNationalPokedexEntryRows(expectedRows, 2102, 493);
  addExpectedPokedexEntryRows(
    expectedRows,
    1101,
    expectedUnovaPokedexSpeciesIds,
    0,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1201,
    expectedNewUnovaPokedexSpeciesIds,
    0,
  );
  addExpectedNationalPokedexEntryRows(expectedRows, 1102, 649);
  addExpectedNationalPokedexEntryRows(expectedRows, 1202, 649);
  addExpectedPokedexEntryRows(
    expectedRows,
    1301,
    expectedCentralKalosPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1302,
    expectedCoastalKalosPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1303,
    expectedMountainKalosPokedexSpeciesIds,
    1,
  );
  addExpectedNationalPokedexEntryRows(expectedRows, 1304, 721);
  addExpectedNationalPokedexEntryRows(expectedRows, 1402, 721);
  addExpectedPokedexEntryRows(
    expectedRows,
    1501,
    expectedSmAlolaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1502,
    expectedSmMelemelePokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1503,
    expectedSmAkalaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1504,
    expectedSmUlaulaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1505,
    expectedSmPoniPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1601,
    expectedUsumAlolaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1602,
    expectedUsumMelemelePokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1603,
    expectedUsumAkalaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1604,
    expectedUsumUlaulaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1605,
    expectedUsumPoniPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1801,
    expectedGalarPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1901,
    expectedIsleOfArmorPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2001,
    expectedCrownTundraPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2201,
    expectedHisuiPokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2301,
    expectedPaldeaPokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2401,
    expectedKitakamiPokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2501,
    expectedBlueberryPokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2601,
    expectedLumiosePokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2701,
    expectedHyperspacePokedexSpeciesIds,
  );
  return expectedRows;
}

export function assertPokedexEntryRows(context, tableRows) {
  const rows = tableRows.get("reference.pokedex_entries") ?? [];
  const pokedexById = mapRowsByColumn(
    tableRows.get("reference.pokedex") ?? [],
    "id",
  );
  const speciesById = mapRowsByColumn(
    tableRows.get("reference.pokemon_species") ?? [],
    "id",
  );
  const formKeys = new Set(
    (tableRows.get("reference.pokemon_forms") ?? []).map(
      ({ row }) => `${row.species_id}:${row.id}`,
    ),
  );
  const expectedRows = buildExpectedPokedexEntries();
  const expectedByKey = new Map(
    expectedRows.map((row) => [`${row.pokedex_id}:${row.pokedex_number}`, row]),
  );
  const actualKeys = new Set();
  const expectedOptionalCompletionKeys = new Set(
    expectedRows
      .filter((row) => row.is_source_required_for_completion === false)
      .map((row) => `${row.pokedex_id}:${row.species_id}`),
  );
  const actualOptionalCompletionKeys = new Set(
    rows
      .filter(({ row }) => row.is_source_required_for_completion === false)
      .map(({ row }) => `${row.pokedex_id}:${row.species_id}`),
  );
  for (const key of actualOptionalCompletionKeys) {
    if (!expectedOptionalCompletionKeys.has(key)) {
      context.errors.push(
        `reference.pokedex_entries: unexpected optional completion entry ${key}; optional entries must be source-listed exceptions or National Pokedex Mythical species.`,
      );
    }
  }
  for (const key of expectedOptionalCompletionKeys) {
    if (!actualOptionalCompletionKeys.has(key)) {
      context.errors.push(
        `reference.pokedex_entries: expected optional completion entry ${key} is not seeded with is_source_required_for_completion=false.`,
      );
    }
  }
  if (rows.length !== expectedRows.length) {
    context.errors.push(
      `reference.pokedex_entries: expected ${expectedRows.length} currently-audited rows, got ${rows.length}.`,
    );
  }
  addCompositeDuplicateErrors(
    context,
    "reference.pokedex_entries",
    rows,
    "pokedex_id + species_id",
    (row) => `${row.pokedex_id}:${row.species_id}`,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.pokedex_entries",
    rows,
    "pokedex_id + pokedex_number",
    (row) => `${row.pokedex_id}:${row.pokedex_number}`,
  );
  const actualRowsByPokedexId = new Map();
  for (const { row } of rows) {
    if (!actualRowsByPokedexId.has(row.pokedex_id)) {
      actualRowsByPokedexId.set(row.pokedex_id, []);
    }
    actualRowsByPokedexId.get(row.pokedex_id).push(row);
  }
  const pokedexEntrySourceFingerprint = (entryRows) =>
    createHash("sha256")
      .update(
        entryRows
          .toSorted(
            (a, b) =>
              a.pokedex_id - b.pokedex_id ||
              a.pokedex_number - b.pokedex_number ||
              a.species_id - b.species_id ||
              (a.display_form_id ?? 0) - (b.display_form_id ?? 0) ||
              Number(a.is_source_required_for_completion) -
                Number(b.is_source_required_for_completion),
          )
          .map((row) =>
            [
              row.pokedex_id,
              row.pokedex_number,
              row.species_id,
              row.display_form_id ?? "form-null",
              row.is_source_required_for_completion ? "required" : "optional",
            ].join("/"),
          )
          .join("|"),
      )
      .digest("hex");
  const sourceVerifiedPokedexEntryFingerprintsByPokedexId = new Map([
    [
      101,
      {
        count: 151,
        sha256:
          "a8f21ed77efaa7bc1543a88aab25f1c2848bab5b43570d4bf6babe5e6d9bc8db",
      },
    ],
    [
      201,
      {
        count: 151,
        sha256:
          "c1a8cbf0ab4c8a548f44124353fc830e19002cf9c9a3a17b9be5b66fe579a7ae",
      },
    ],
    [
      301,
      {
        count: 251,
        sha256:
          "6a4546895f3234bef083ed0b428d288dab8869a0978dfc30708f976d93bea380",
      },
    ],
    [
      401,
      {
        count: 251,
        sha256:
          "d051130ec3231999e32d8659068feff222994d6f7ad2159f863b0bf173551639",
      },
    ],
    [
      501,
      {
        count: 202,
        sha256:
          "635d73f339a7964996a3413f6b408f5a922afb8e9c9a8dfd0743f267d4c83ff8",
      },
    ],
    [
      502,
      {
        count: 386,
        sha256:
          "9db587b6232bc5ad5e26dd6c670e8e0bfb0409b47ebdadd1e2636ddb6ac77185",
      },
    ],
    [
      601,
      {
        count: 151,
        sha256:
          "8ac171939c8a46ee673ea4fd721330080eafdbf25015234abae86930a246ff72",
      },
    ],
    [
      602,
      {
        count: 386,
        sha256:
          "e37cdd0fdfced63790dcd42417b4e8150e3133ee96c55a99cfa5164dcaa31f8f",
      },
    ],
    [
      701,
      {
        count: 202,
        sha256:
          "d06c7da7abe7584f8c4191caeb329613c348f48c041ea1e98829a13fd18e03a4",
      },
    ],
    [
      702,
      {
        count: 386,
        sha256:
          "695f704933bcd7192c6024cd8cc5494c9b8ac10d3011b832a9c83433bc8cba62",
      },
    ],
    [
      801,
      {
        count: 151,
        sha256:
          "08163b9e17431c7b1bcb3787caa8da0be663aff4d9946fa83de536a25444e58d",
      },
    ],
    [
      802,
      {
        count: 493,
        sha256:
          "1845be46c22263968c674df4e978ca8bc527cf62a8c94814a8216dfa289f522a",
      },
    ],
    [
      901,
      {
        count: 210,
        sha256:
          "77e6bc0e8699644b7d6c3cac6dc88ac720a345f1dd2d13c0302f89a5ebf69211",
      },
    ],
    [
      902,
      {
        count: 493,
        sha256:
          "ad1493e75c00b2bbd2fea02ea7b3c71e046db21753f1cd81cc381f5ae552b58b",
      },
    ],
    [
      1001,
      {
        count: 256,
        sha256:
          "b5b3805008a29e8c75218cb7a41f3fd7583cff0ccf51ebcc0c9d0ce1705af0b4",
      },
    ],
    [
      1002,
      {
        count: 493,
        sha256:
          "395383480c27f2b7674443887136fc7559c75e69573f02045ed9e36e2732eb74",
      },
    ],
    [
      1101,
      {
        count: 156,
        sha256:
          "83c8f5779b95f21ca3a9bc2f2839ecaac7f50b8d860a55cf1e5579aeff868e02",
      },
    ],
    [
      1102,
      {
        count: 649,
        sha256:
          "8b8bfa66859083ff50ea2994182d8d1a8a702a839a22d42258cb0005f1b3b325",
      },
    ],
    [
      1201,
      {
        count: 301,
        sha256:
          "00581c57c1002f38850294c2010149eb13aae1e2a9b3a7e05b40f81c21967f12",
      },
    ],
    [
      1202,
      {
        count: 649,
        sha256:
          "f61144b33e4abe6128ecac3ae220816fedcb927ef077c532e6d7750df6653b5b",
      },
    ],
    [
      1301,
      {
        count: 153,
        sha256:
          "1546dcc75ea194c4f277f183f66f523dbc7303099f60713c95c374870f372aa3",
      },
    ],
    [
      1302,
      {
        count: 153,
        sha256:
          "eb62c81d9a9a8970a1278c43e8ccdf9ed388d60dc5dcf96b1d74fa38fa3a9db0",
      },
    ],
    [
      1303,
      {
        count: 151,
        sha256:
          "c90a416ba9a04e20228b54459f3cf1a69856cb403107f89c863e9764300c8781",
      },
    ],
    [
      1304,
      {
        count: 721,
        sha256:
          "4257eecc60281d0dabf02c04ef8271a587da5169545b6c5fac63b91255b35316",
      },
    ],
    [
      1401,
      {
        count: 211,
        sha256:
          "1eab074b062601ffd4f1659660c7ae09c2e4f6a78403df6b2b661f17a0c3098b",
      },
    ],
    [
      1402,
      {
        count: 721,
        sha256:
          "f31e37c26369f953df4b6e9541c2c99a90ec7cf0d10853da2fcd0855881d0c25",
      },
    ],
    [
      1501,
      {
        count: 302,
        sha256:
          "f5e09dd2d92ea259758e85bc17f4712d077302f4843fc2a8c9107d6ee50825f0",
      },
    ],
    [
      1502,
      {
        count: 120,
        sha256:
          "cffc9a1af12ed798c3758a3a934cec6a31e4b90195685c6367cd08200259b548",
      },
    ],
    [
      1503,
      {
        count: 130,
        sha256:
          "0adf6d6a4c051348443ea68b94ab65edca126faccdfe8833f1d8692091964304",
      },
    ],
    [
      1504,
      {
        count: 130,
        sha256:
          "bef840354d1a977e9cf131d52b0a135203642ee6572f6de8114a0944c26628fd",
      },
    ],
    [
      1505,
      {
        count: 100,
        sha256:
          "763374f7bc326b309911c9e53efb3677145580f50dfb5fe64de0e03b89284659",
      },
    ],
    [
      1601,
      {
        count: 403,
        sha256:
          "7de69e8e5f0b0d43b0b960614df0ae94aabc17e3dd7129810a510535ad13e720",
      },
    ],
    [
      1602,
      {
        count: 150,
        sha256:
          "6b05af83de6a7808950bcc8495773fc7b09c55ded7f5f82845debe2e422f5d91",
      },
    ],
    [
      1603,
      {
        count: 160,
        sha256:
          "682cdd6713f4185121a5ff5cd75b168b53fb59cacb0bd37061bd41ac6081c1f5",
      },
    ],
    [
      1604,
      {
        count: 160,
        sha256:
          "a010ab5b2675986a6437781aad3f984e6c05d199928577ddf96ba16786f53683",
      },
    ],
    [
      1605,
      {
        count: 130,
        sha256:
          "789bbca6661c1e53b04b6489f9b65c12b02406103814dca595307c575f6efce3",
      },
    ],
    [
      1701,
      {
        count: 153,
        sha256:
          "8f7b33deecc6fd34214f47d5ff742873be9565b22e8f45196df3e76455d0298a",
      },
    ],
    [
      1801,
      {
        count: 400,
        sha256:
          "429a5ed96959fce257e63e121a2954cae465d25c91e5f83fd331a65b33859a41",
      },
    ],
    [
      1901,
      {
        count: 211,
        sha256:
          "3fa2d3c6a0e6b0aacdfad5b2406001e7ab7c5a24c4211f84309cb8c2e80addb3",
      },
    ],
    [
      2001,
      {
        count: 210,
        sha256:
          "501ca122096527d729807de746d551a126d35ce429fea2005f9de0efe0620678",
      },
    ],
    [
      2101,
      {
        count: 151,
        sha256:
          "88cee17769ed39d240d590f6298cd64d433b94b43886f7e95f29488b7c055f3d",
      },
    ],
    [
      2102,
      {
        count: 493,
        sha256:
          "78821988c005896891e84297732b318e723863b29546a918959fa818d632c444",
      },
    ],
    [
      2201,
      {
        count: 242,
        sha256:
          "4ac544500494f7e5df408006d22760cf747648fde38427c33a76065ba3ef738d",
      },
    ],
    [
      2301,
      {
        count: 400,
        sha256:
          "ba91ae2c44abd0c1bf6eec4348f93628c7436577621d83f24615c09f7b3e017f",
      },
    ],
    [
      2401,
      {
        count: 200,
        sha256:
          "d81b281a8dddc81b8bdb315981e516cffe5480f46bceadde4e6dacbf9f2ae32c",
      },
    ],
    [
      2501,
      {
        count: 243,
        sha256:
          "253f4482fbd5d620cc3d43faf743d0f14f414da11cffc1fdc886d4172c595671",
      },
    ],
    [
      2601,
      {
        count: 232,
        sha256:
          "a67107ec8c88dd894af09515f42bf46f378201be3919b402487a9c7f9a007499",
      },
    ],
    [
      2701,
      {
        count: 132,
        sha256:
          "90620dceecda6eb2108e6dbd1d9d6ebe0d046d55266d146cfec9015a4562e7e8",
      },
    ],
  ]);
  for (const pokedexId of actualRowsByPokedexId.keys()) {
    if (!sourceVerifiedPokedexEntryFingerprintsByPokedexId.has(pokedexId)) {
      context.errors.push(
        "reference.pokedex_entries: unexpected rows for Pokedex " +
          pokedexId +
          "; add an explicit source-verified Pokedex entry fingerprint before seeding a new scope.",
      );
    }
  }
  for (const [
    pokedexId,
    expectedFingerprint,
  ] of sourceVerifiedPokedexEntryFingerprintsByPokedexId.entries()) {
    const scopedRows = actualRowsByPokedexId.get(pokedexId) ?? [];
    const actualCount = scopedRows.length;
    const actualFingerprint = pokedexEntrySourceFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      context.errors.push(
        "reference.pokedex_entries: Pokedex " +
          pokedexId +
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
  for (const [
    pokedexId,
    maxSpeciesId,
  ] of expectedNationalPokedexMaxSpeciesById.entries()) {
    const nationalRows = actualRowsByPokedexId.get(pokedexId) ?? [];
    if (nationalRows.length !== maxSpeciesId) {
      context.errors.push(
        `reference.pokedex_entries: National Pokedex ${pokedexId} expected ${maxSpeciesId} species-level rows, got ${nationalRows.length}.`,
      );
    }
    for (const row of nationalRows) {
      if (row.pokedex_number !== row.species_id) {
        context.errors.push(
          `reference.pokedex_entries: National Pokedex ${pokedexId} row ${row.pokedex_number} expected species_id to match National number, got ${row.species_id}.`,
        );
      }
      if (row.display_form_id !== null) {
        context.errors.push(
          `reference.pokedex_entries: National Pokedex ${pokedexId} row ${row.pokedex_number} must be species-level and not set display_form_id.`,
        );
      }
      if (row.species_id < 1 || row.species_id > maxSpeciesId) {
        context.errors.push(
          `reference.pokedex_entries: National Pokedex ${pokedexId} row ${row.pokedex_number} has species_id ${row.species_id} outside source-confirmed 1-${maxSpeciesId} range.`,
        );
      }
    }
  }
  for (const { row, filePath } of rows) {
    if (!pokedexById.has(row.pokedex_id)) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex_entries row ${row.pokedex_id}/${row.species_id} references missing pokedex_id ${row.pokedex_id}.`,
      );
    }
    if (!speciesById.has(row.species_id)) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex_entries row ${row.pokedex_id}/${row.species_id} references missing species_id ${row.species_id}.`,
      );
    }
    if (
      row.display_form_id !== null &&
      !formKeys.has(`${row.species_id}:${row.display_form_id}`)
    ) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex_entries row ${row.pokedex_id}/${row.species_id} has invalid species/form pair ${row.species_id}/${row.display_form_id}.`,
      );
    }
    if (row.is_source_required_for_completion === false) {
      const completionKey = `${row.pokedex_id}:${row.species_id}`;
      const isNationalMythical =
        nationalPokedexIds.has(row.pokedex_id) &&
        mythicalSpeciesIds.has(row.species_id);
      if (
        !sourceOptionalPokedexEntryKeys.has(completionKey) &&
        !isNationalMythical
      ) {
        context.errors.push(
          `${relative(filePath)}: reference.pokedex_entries row ${completionKey} is optional for completion without an explicit source exception or National Pokedex Mythical rule.`,
        );
      }
    }
    const key = `${row.pokedex_id}:${row.pokedex_number}`;
    const expectedRow = expectedByKey.get(key);
    if (expectedRow === undefined) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex_entries has unexpected audited row ${key}.`,
      );
      continue;
    }
    actualKeys.add(key);
    if (row.species_id !== expectedRow.species_id) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex_entries ${key} expected species_id ${expectedRow.species_id}, got ${row.species_id}.`,
      );
    }
    if (row.display_form_id !== null) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex_entries ${key} expected NULL display_form_id for species-level entry.`,
      );
    }
    if (
      row.is_source_required_for_completion !==
      expectedRow.is_source_required_for_completion
    ) {
      context.errors.push(
        `${relative(filePath)}: reference.pokedex_entries ${key} expected is_source_required_for_completion ${expectedRow.is_source_required_for_completion}, got ${row.is_source_required_for_completion}.`,
      );
    }
  }
  for (const key of expectedByKey.keys()) {
    if (!actualKeys.has(key)) {
      context.errors.push(
        `reference.pokedex_entries: missing audited row ${key}.`,
      );
    }
  }
}
