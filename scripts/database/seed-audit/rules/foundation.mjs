import {
  assertSourceVerifiedRowsetFingerprint,
  compareRowsByColumns,
} from "../core.mjs";

export function assertFoundationRowsetFingerprints(context, tableRows) {
  const specs = [
    {
      tableName: "reference.generations",
      columns: ["id", "slug", "name", "start_year", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 9,
        sha256:
          "20f24681e258e0c26430703695dcc06922187f058146e15feffaeb9cde7f3b3a",
      },
    },
    {
      tableName: "reference.regions",
      columns: ["id", "slug", "name", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 10,
        sha256:
          "462097a81cf0a325efc6962554a1bb564dd2849bc6797563f93ef77a64ebd57f",
      },
    },
    {
      tableName: "reference.product_families",
      columns: [
        "id",
        "slug",
        "name",
        "description",
        "support_status",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 7,
        sha256:
          "c05a2003253382d3d483c12d70b0a6c966cbe01705a03aedbcb7c0c73fa55f06",
      },
    },
    {
      tableName: "reference.game_types",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 4,
        sha256:
          "8aeddf9c8aabddde9da60dbb385e29d3301a9e079a9dda82b401213aba68e79f",
      },
    },
    {
      tableName: "reference.version_groups",
      columns: [
        "id",
        "slug",
        "name",
        "generation_id",
        "parent_version_group_id",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 27,
        sha256:
          "ebc8ea8da7f96d02a1e99f1620ec79e060eee9062cc9af1be708464655079438",
      },
    },
    {
      tableName: "reference.platforms",
      columns: [
        "id",
        "slug",
        "name",
        "manufacturer",
        "platform_kind",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 7,
        sha256:
          "035ffbb33ef22f682a0039f048bb8a0af2e74d93af2a896c5e904497528e5f8e",
      },
    },
    {
      tableName: "reference.games",
      columns: [
        "id",
        "slug",
        "name",
        "product_family_id",
        "generation_id",
        "region_id",
        "version_group_id",
        "game_type_id",
        "release_year",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 38,
        sha256:
          "86fca0b1937f08ed4dc5eac726f65bdd7cfd29ea07ce9bc02a805712a2f8fb59",
      },
    },
    {
      tableName: "reference.game_platforms",
      columns: ["game_id", "platform_id", "release_kind", "sort_order"],
      sortColumns: ["game_id", "sort_order", "platform_id"],
      expected: {
        count: 42,
        sha256:
          "cb49f775ccaa150405aca2c756caea704a3c05ed8ecb56fe41d0c9a221b3a55b",
      },
    },
    {
      tableName: "reference.game_content_scopes",
      columns: ["game_id", "version_group_id", "is_base_scope", "sort_order"],
      sortColumns: ["game_id", "sort_order", "version_group_id"],
      expected: {
        count: 47,
        sha256:
          "ad24755eb14b3de03344a2369061edcba605813e1c707fd0b08b9d19d5e7bc0c",
      },
    },
    {
      tableName: "reference.content_scope_dependencies",
      columns: [
        "version_group_id",
        "required_version_group_id",
        "dependency_kind",
        "sort_order",
      ],
      sortColumns: [
        "version_group_id",
        "sort_order",
        "required_version_group_id",
      ],
      expected: {
        count: 2,
        sha256:
          "e4a759a56d048bb137da661819f63208d6176ce2aa37cc698ae523d7b1ab97e4",
      },
    },
  ];
  for (const spec of specs) {
    assertSourceVerifiedRowsetFingerprint(
      context,
      spec.tableName,
      tableRows.get(spec.tableName) ?? [],
      spec.columns,
      compareRowsByColumns(spec.sortColumns),
      spec.expected,
    );
  }
}

export function assertCoreMechanicsRowsetFingerprints(context, tableRows) {
  const specs = [
    {
      tableName: "reference.types",
      columns: ["id", "slug", "name", "introduced_generation_id", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 18,
        sha256:
          "1607ec26a0b325ad8128f5b0ef4a9c7de6102aa3f9a481e31789a7a4d022f923",
      },
    },
    {
      tableName: "reference.type_matchups",
      columns: [
        "attacking_type_id",
        "defending_type_id",
        "generation_start_id",
        "multiplier_numerator",
        "multiplier_denominator",
      ],
      sortColumns: [
        "attacking_type_id",
        "defending_type_id",
        "generation_start_id",
      ],
      expected: {
        count: 128,
        sha256:
          "c4054b4c179af19060af23c1c9012b82234ea6a3c58f137bb18fbd51cea31ec9",
      },
    },
    {
      tableName: "reference.natures",
      columns: [
        "id",
        "slug",
        "name",
        "introduced_generation_id",
        "increased_stat",
        "decreased_stat",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 25,
        sha256:
          "30898b897014605cc25f2644e291d45c4545a984028323dc90e4ade76a7f092f",
      },
    },
    {
      tableName: "reference.egg_groups",
      columns: ["id", "slug", "name", "introduced_generation_id", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 15,
        sha256:
          "a2fecde927363f71bce136a32cca84c04eaf20cf11609d88e55f5f85b74378fa",
      },
    },
    {
      tableName: "reference.item_categories",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 18,
        sha256:
          "3fa5e4c6b2925cc286ea5ac2a268b46f27aee8d9653ecead717601c13543333e",
      },
    },
    {
      tableName: "reference.move_kinds",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 4,
        sha256:
          "c08b2324a213cd4e502bc190677e8788954b033ec8fe1c5ec364780fd4344bce",
      },
    },
    {
      tableName: "reference.evolution_methods",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 9,
        sha256:
          "64d19551889afeb585f7b1bba942ccb29be0ca95408e825276acf0ee887a8f14",
      },
    },
    {
      tableName: "reference.availability_methods",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 13,
        sha256:
          "4a89fe0a2b460ddf72458a45990c6e6d340476d3186fbd8be74c0f504ca876d7",
      },
    },
    {
      tableName: "reference.learn_methods",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 12,
        sha256:
          "81fe1e59ce9f491563157141fd60b5868ef006049be294236b968391d57fc443",
      },
    },
    {
      tableName: "reference.abilities",
      columns: [
        "id",
        "slug",
        "name",
        "external_id",
        "introduced_generation_id",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 310,
        sha256:
          "975fad5b80444c5e1f25e936a8425451c8e624e7eb48e491a91a6e3d4d0a936a",
      },
    },
    {
      tableName: "reference.ability_attributes",
      columns: ["ability_id", "version_group_start_id", "effect_summary"],
      sortColumns: ["ability_id", "version_group_start_id"],
      expected: {
        count: 382,
        sha256:
          "dc0c497d12e317e930f2752bfe58d1014327e34f66d231ad9dcd88c804e87fa5",
      },
    },
    {
      tableName: "reference.moves",
      columns: [
        "id",
        "slug",
        "name",
        "move_kind_id",
        "external_id",
        "introduced_generation_id",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 935,
        sha256:
          "000ab589d836d29923352efd283e8a75183671709ad16bcda43dd40fb73f2dec",
      },
    },
    {
      tableName: "reference.move_attributes",
      columns: [
        "move_id",
        "generation_start_id",
        "type_id",
        "power",
        "accuracy",
        "pp",
        "priority",
        "damage_class",
        "effect_summary",
        "effect_detail",
      ],
      sortColumns: ["move_id", "generation_start_id"],
      expected: {
        count: 1149,
        sha256:
          "a7c489e5f572a0da9566f8790e421704f7bcd03c63a5bbfb0ea691fa1dc6d83c",
      },
    },
  ];
  for (const { tableName, columns, sortColumns, expected } of specs) {
    assertSourceVerifiedRowsetFingerprint(
      context,
      tableName,
      tableRows.get(tableName) ?? [],
      columns,
      compareRowsByColumns(sortColumns),
      expected,
    );
  }
}
