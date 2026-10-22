import {
  addCompositeDuplicateErrors,
  assertBooleanFlagSet,
  assertSourceVerifiedRowsetFingerprint,
  mapRowsByColumn,
  relative,
} from "../core.mjs";
import {
  excludedNonDefaultFormSlugs,
  expectedAbilitylessFormSlugs,
  expectedBabyPokemonSlugs,
  expectedBattleFormSlugs,
  expectedLegendaryPokemonSlugs,
  expectedMythicalPokemonSlugs,
  expectedNonDefaultFormSlugs,
  expectedPokemonGenerationRanges,
} from "../expectations.mjs";

/* Every seeded non-default form: the curated persistent forms, then the battle forms. */
const expectedAllNonDefaultFormSlugs = [
  ...expectedNonDefaultFormSlugs,
  ...expectedBattleFormSlugs,
];
const expectedBattleFormSlugSet = new Set(expectedBattleFormSlugs);
const expectedAbilitylessFormSlugSet = new Set(expectedAbilitylessFormSlugs);

export function assertPokemonIdentityRows(context, tableRows) {
  const familyRows = tableRows.get("reference.evolution_families") ?? [];
  const speciesRows = tableRows.get("reference.pokemon_species") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const familiesById = mapRowsByColumn(familyRows, "id");
  const speciesById = mapRowsByColumn(speciesRows, "id");
  const formsBySpeciesId = new Map();
  const formRowsById = mapRowsByColumn(formRows, "id");
  assertSourceVerifiedRowsetFingerprint(
    context,
    "reference.evolution_families",
    familyRows,
    ["id", "slug", "name", "sort_order"],
    (a, b) => a.id - b.id,
    {
      count: 541,
      sha256:
        "11616f22cf0dc9dc294c5cce0818bf6d6774451ca50f61e0111153fca630ebf7",
    },
  );
  assertSourceVerifiedRowsetFingerprint(
    context,
    "reference.pokemon_species",
    speciesRows,
    [
      "id",
      "national_number",
      "slug",
      "name",
      "introduced_generation_id",
      "evolution_family_id",
      "color",
      "is_baby",
      "is_legendary",
      "is_mythical",
    ],
    (a, b) => a.id - b.id,
    {
      count: 1025,
      sha256:
        "b607d49a758412a7b1bc24b1ec14b78d92eb50e4001edf76e3f14ad012f26c66",
    },
  );
  assertSourceVerifiedRowsetFingerprint(
    context,
    "reference.pokemon_forms",
    formRows,
    [
      "id",
      "species_id",
      "slug",
      "name",
      "introduced_generation_id",
      "is_default",
      "form_order",
      "height_decimeters",
      "weight_hectograms",
    ],
    (a, b) =>
      a.species_id - b.species_id || a.form_order - b.form_order || a.id - b.id,
    {
      count: 1339,
      sha256:
        "06eda2f6a34f909f4987a33faa6842e0e99f0f0b70ba8d8780ac4debaeeeca9d",
    },
  );
  if (familyRows.length !== 541) {
    context.errors.push(
      `reference.evolution_families: expected 541 curated evolution families, got ${familyRows.length}.`,
    );
  }
  if (speciesRows.length !== 1025) {
    context.errors.push(
      `reference.pokemon_species: expected 1025 National Dex species, got ${speciesRows.length}.`,
    );
  }
  const defaultFormRows = formRows.filter(({ row }) => row.is_default === true);
  const nonDefaultFormRows = formRows.filter(
    ({ row }) => row.is_default === false,
  );
  const expectedNonDefaultFormSlugSet = new Set(expectedAllNonDefaultFormSlugs);
  if (defaultFormRows.length !== 1025) {
    context.errors.push(
      `reference.pokemon_forms: expected 1025 default forms, got ${defaultFormRows.length}.`,
    );
  }
  if (nonDefaultFormRows.length !== expectedAllNonDefaultFormSlugs.length) {
    context.errors.push(
      `reference.pokemon_forms: expected ${expectedAllNonDefaultFormSlugs.length} curated non-default forms, got ${nonDefaultFormRows.length}.`,
    );
  }
  for (let id = 1; id <= 1025; id += 1) {
    const species = speciesById.get(id);
    if (!species) {
      context.errors.push(
        `reference.pokemon_species: missing National Dex species id ${id}.`,
      );
      continue;
    }
    if (species.national_number !== id) {
      context.errors.push(
        `reference.pokemon_species: species id ${id} must have national_number ${id}, got ${species.national_number}.`,
      );
    }
  }
  for (const {
    generationId,
    firstId,
    lastId,
  } of expectedPokemonGenerationRanges) {
    for (let id = firstId; id <= lastId; id += 1) {
      const species = speciesById.get(id);
      if (!species) continue;
      if (species.introduced_generation_id !== generationId) {
        context.errors.push(
          `reference.pokemon_species: species ${species.slug} expected generation ${generationId}, got ${species.introduced_generation_id}.`,
        );
      }
    }
  }
  for (const { row, filePath } of familyRows) {
    const anchorSpecies = speciesById.get(row.id);
    if (!anchorSpecies) {
      context.errors.push(
        `${relative(filePath)}: evolution family ${row.slug} id ${row.id} does not anchor to a seeded species.`,
      );
      continue;
    }
    const expectedSlug = `${anchorSpecies.slug}-family`;
    const expectedName = `${anchorSpecies.name} Family`;
    if (row.slug !== expectedSlug) {
      context.errors.push(
        `${relative(filePath)}: evolution family id ${row.id} expected slug ${expectedSlug}, got ${row.slug}.`,
      );
    }
    if (row.name !== expectedName) {
      context.errors.push(
        `${relative(filePath)}: evolution family id ${row.id} expected name ${expectedName}, got ${row.name}.`,
      );
    }
  }
  const memberIdsByFamilyId = new Map();
  for (const { row, filePath } of speciesRows) {
    if (!generationIds.has(row.introduced_generation_id)) {
      context.errors.push(
        `${relative(filePath)}: species ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (!familiesById.has(row.evolution_family_id)) {
      context.errors.push(
        `${relative(filePath)}: species ${row.slug} references unseeded evolution_family_id ${row.evolution_family_id}.`,
      );
    }
    if (!memberIdsByFamilyId.has(row.evolution_family_id))
      memberIdsByFamilyId.set(row.evolution_family_id, []);
    memberIdsByFamilyId.get(row.evolution_family_id).push(row.id);
  }
  for (const { row, filePath } of familyRows) {
    const memberIds = memberIdsByFamilyId.get(row.id) ?? [];
    if (memberIds.length === 0) {
      context.errors.push(
        `${relative(filePath)}: evolution family ${row.slug} is not referenced by any species.`,
      );
      continue;
    }
    const firstNationalDexId = Math.min(...memberIds);
    if (row.id !== firstNationalDexId) {
      context.errors.push(
        `${relative(filePath)}: evolution family ${row.slug} id must match first National Dex member ${firstNationalDexId}, got ${row.id}.`,
      );
    }
  }
  for (const { row, filePath } of defaultFormRows) {
    const species = speciesById.get(row.species_id);
    if (!species) {
      context.errors.push(
        `${relative(filePath)}: form ${row.slug} references unseeded species_id ${row.species_id}.`,
      );
      continue;
    }
    if (!generationIds.has(row.introduced_generation_id)) {
      context.errors.push(
        `${relative(filePath)}: form ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (!formsBySpeciesId.has(row.species_id))
      formsBySpeciesId.set(row.species_id, []);
    formsBySpeciesId.get(row.species_id).push(row);
    if (row.id !== row.species_id * 100) {
      context.errors.push(
        `${relative(filePath)}: default form ${row.slug} id ${row.id} must equal species_id * 100.`,
      );
    }
    if (row.slug !== species.slug) {
      context.errors.push(
        `${relative(filePath)}: default form for species ${species.slug} expected slug ${species.slug}, got ${row.slug}.`,
      );
    }
    if (row.name !== species.name) {
      context.errors.push(
        `${relative(filePath)}: default form for species ${species.slug} expected name ${species.name}, got ${row.name}.`,
      );
    }
    if (row.introduced_generation_id !== species.introduced_generation_id) {
      context.errors.push(
        `${relative(filePath)}: default form ${row.slug} generation must match species generation ${species.introduced_generation_id}.`,
      );
    }
    if (row.is_default !== true) {
      context.errors.push(
        `${relative(filePath)}: form ${row.slug} must be default in default-form seed batch.`,
      );
    }
    if (row.form_order !== 1) {
      context.errors.push(
        `${relative(filePath)}: default form ${row.slug} must have form_order 1.`,
      );
    }
  }
  for (let speciesId = 1; speciesId <= 1025; speciesId += 1) {
    const forms = (formsBySpeciesId.get(speciesId) ?? []).filter(
      (row) => row.is_default === true,
    );
    if (forms.length !== 1) {
      context.errors.push(
        `reference.pokemon_forms: expected exactly one default form for species_id ${speciesId}, got ${forms.length}.`,
      );
    }
  }
  const actualNonDefaultFormSlugs = nonDefaultFormRows.map(
    ({ row }) => row.slug,
  );
  addCompositeDuplicateErrors(
    context,
    "reference.pokemon_forms",
    formRows,
    "species_id/form_order",
    (row) => `${row.species_id}/${row.form_order}`,
  );
  for (const expectedSlug of expectedAllNonDefaultFormSlugs) {
    if (!actualNonDefaultFormSlugs.includes(expectedSlug)) {
      context.errors.push(
        `reference.pokemon_forms: missing expected curated non-default form ${expectedSlug}.`,
      );
    }
  }
  for (const { row, filePath } of nonDefaultFormRows) {
    const species = speciesById.get(row.species_id);
    if (!species) {
      context.errors.push(
        `${relative(filePath)}: non-default form ${row.slug} references unseeded species_id ${row.species_id}.`,
      );
      continue;
    }
    if (!expectedNonDefaultFormSlugSet.has(row.slug)) {
      context.errors.push(
        `${relative(filePath)}: unexpected non-default form ${row.slug}; add it to the curated allowlist or remove it.`,
      );
    }
    if (!generationIds.has(row.introduced_generation_id)) {
      context.errors.push(
        `${relative(filePath)}: non-default form ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (row.introduced_generation_id < species.introduced_generation_id) {
      context.errors.push(
        `${relative(filePath)}: non-default form ${row.slug} cannot be introduced before species ${species.slug}.`,
      );
    }
    if (row.form_order <= 1) {
      context.errors.push(
        `${relative(filePath)}: non-default form ${row.slug} must have form_order greater than 1.`,
      );
    }
  }
  for (const excludedSlug of excludedNonDefaultFormSlugs) {
    if (actualNonDefaultFormSlugs.includes(excludedSlug)) {
      context.errors.push(
        `reference.pokemon_forms: excluded battle-only/cosmetic form ${excludedSlug} must not be seeded in team-selectable scope.`,
      );
    }
  }
  assertBooleanFlagSet(
    context,
    "reference.pokemon_species",
    speciesRows,
    "is_baby",
    expectedBabyPokemonSlugs,
  );
  assertBooleanFlagSet(
    context,
    "reference.pokemon_species",
    speciesRows,
    "is_legendary",
    expectedLegendaryPokemonSlugs,
  );
  assertBooleanFlagSet(
    context,
    "reference.pokemon_species",
    speciesRows,
    "is_mythical",
    expectedMythicalPokemonSlugs,
  );
  const expectedFamilyMemberships = {
    bulbasaur: ["bulbasaur", "ivysaur", "venusaur"],
    pikachu: ["pikachu", "raichu", "pichu"],
    marill: ["marill", "azumarill", "azurill"],
    hitmonlee: ["hitmonlee", "hitmonchan", "tyrogue", "hitmontop"],
    eevee: [
      "eevee",
      "vaporeon",
      "jolteon",
      "flareon",
      "espeon",
      "umbreon",
      "leafeon",
      "glaceon",
      "sylveon",
    ],
    farfetchd: ["farfetchd", "sirfetchd"],
    yamask: ["yamask", "cofagrigus", "runerigus"],
    sneasel: ["sneasel", "weavile", "sneasler"],
    applin: ["applin", "flapple", "appletun", "dipplin", "hydrapple"],
    mankey: ["mankey", "primeape", "annihilape"],
    duraludon: ["duraludon", "archaludon"],
    meltan: ["meltan", "melmetal"],
  };
  for (const [familyAnchorSlug, expectedMemberSlugs] of Object.entries(
    expectedFamilyMemberships,
  )) {
    const familyAnchor = [...speciesById.values()].find(
      (row) => row.slug === familyAnchorSlug,
    );
    if (!familyAnchor) {
      context.errors.push(
        `reference.pokemon_species: missing family anchor ${familyAnchorSlug}.`,
      );
      continue;
    }
    for (const memberSlug of expectedMemberSlugs) {
      const member = [...speciesById.values()].find(
        (row) => row.slug === memberSlug,
      );
      if (!member) {
        context.errors.push(
          `reference.pokemon_species: missing expected family member ${memberSlug}.`,
        );
        continue;
      }
      if (member.evolution_family_id !== familyAnchor.id) {
        context.errors.push(
          `reference.pokemon_species: expected ${memberSlug} to belong to ${familyAnchorSlug} family ${familyAnchor.id}, got ${member.evolution_family_id}.`,
        );
      }
    }
  }
  const phione = [...speciesById.values()].find((row) => row.slug === "phione");
  const manaphy = [...speciesById.values()].find(
    (row) => row.slug === "manaphy",
  );
  if (
    phione &&
    manaphy &&
    phione.evolution_family_id === manaphy.evolution_family_id
  ) {
    context.errors.push(
      "reference.pokemon_species: Phione and Manaphy must remain separate evolution families; breeding-only relationships are not evolution lines.",
    );
  }
  if (
    !formRowsById.has(2501) ||
    formRowsById.get(2501).slug !== "pikachu-partner"
  ) {
    context.errors.push(
      "reference.pokemon_forms: expected partner Pikachu form id 2501.",
    );
  }
  if (
    !formRowsById.has(13301) ||
    formRowsById.get(13301).slug !== "eevee-partner"
  ) {
    context.errors.push(
      "reference.pokemon_forms: expected partner Eevee form id 13301.",
    );
  }
  if (
    !formRowsById.has(48301) ||
    formRowsById.get(48301).slug !== "dialga-origin"
  ) {
    context.errors.push(
      "reference.pokemon_forms: expected Dialga Origin Forme id 48301.",
    );
  }
  if (
    !formRowsById.has(48401) ||
    formRowsById.get(48401).slug !== "palkia-origin"
  ) {
    context.errors.push(
      "reference.pokemon_forms: expected Palkia Origin Forme id 48401.",
    );
  }
}

export function assertPokemonFormRuleRows(context, tableRows) {
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const ruleRows = tableRows.get("reference.pokemon_form_rules") ?? [];
  const formsById = mapRowsByColumn(formRows, "id");
  const rulesByFormId = mapRowsByColumn(ruleRows, "form_id");
  const nonDefaultForms = formRows
    .filter(({ row }) => row.is_default === false)
    .map(({ row }) => row);
  assertSourceVerifiedRowsetFingerprint(
    context,
    "reference.pokemon_form_rules",
    ruleRows,
    [
      "form_id",
      "form_kind",
      "is_team_selectable",
      "is_battle_only",
      "is_cosmetic",
      "is_regional",
      "is_evolution_locked",
      "condition_summary",
      "notes",
    ],
    (a, b) => a.form_id - b.form_id,
    {
      count: expectedAllNonDefaultFormSlugs.length,
      sha256:
        "27290848457c8f90ccab4fc29798a17362a9c9cfc372f6a222af254afeb983b6",
    },
  );
  if (ruleRows.length !== expectedAllNonDefaultFormSlugs.length) {
    context.errors.push(
      `reference.pokemon_form_rules: expected ${expectedAllNonDefaultFormSlugs.length} form-rule rows, got ${ruleRows.length}.`,
    );
  }
  for (const form of nonDefaultForms) {
    if (!rulesByFormId.has(form.id)) {
      context.errors.push(
        `reference.pokemon_form_rules: missing rule row for non-default form ${form.slug}.`,
      );
    }
  }
  for (const { row, filePath } of ruleRows) {
    const form = formsById.get(row.form_id);
    if (!form) {
      context.errors.push(
        `${relative(filePath)}: form rule references unseeded form_id ${row.form_id}.`,
      );
      continue;
    }
    if (form.is_default === true) {
      context.errors.push(
        `${relative(filePath)}: default form ${form.slug} should use implicit default behavior, not a seeded form rule.`,
      );
    }
    const isBattleForm = expectedBattleFormSlugSet.has(form.slug);
    if (isBattleForm) {
      if (
        row.form_kind !== "battle" ||
        row.is_team_selectable !== false ||
        row.is_battle_only !== true
      ) {
        context.errors.push(
          `${relative(filePath)}: battle form ${form.slug} must be form_kind=battle, battle-only and not team selectable.`,
        );
      }
      if (row.condition_summary === null) {
        context.errors.push(
          `${relative(filePath)}: battle form ${form.slug} must say how it is reached in condition_summary.`,
        );
      }
    } else if (row.is_team_selectable !== true) {
      context.errors.push(
        `${relative(filePath)}: curated form ${form.slug} must be team selectable.`,
      );
    }
    if (!isBattleForm && row.is_battle_only !== false) {
      context.errors.push(
        `${relative(filePath)}: curated form ${form.slug} must not be battle-only.`,
      );
    }
    if (row.is_cosmetic !== false) {
      context.errors.push(
        `${relative(filePath)}: curated form ${form.slug} must not be cosmetic-only.`,
      );
    }
    const shouldBeRegional =
      !isBattleForm &&
      (form.slug.startsWith("alolan-") ||
        form.slug.startsWith("galarian-") ||
        form.slug.startsWith("hisuian-") ||
        form.slug.startsWith("paldea-") ||
        form.slug === "basculin-white-striped");
    if (row.is_regional !== shouldBeRegional) {
      context.errors.push(
        `${relative(filePath)}: form ${form.slug} expected is_regional=${shouldBeRegional}.`,
      );
    }
    if (shouldBeRegional && row.form_kind !== "regional") {
      context.errors.push(
        `${relative(filePath)}: regional form ${form.slug} must use form_kind=regional.`,
      );
    }
  }
}

export function assertPokemonFormItemRequirementRows(context, tableRows) {
  const requirementRows =
    tableRows.get("reference.pokemon_form_item_requirements") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const versionGroupsById = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  const versionGroupIds = new Set(versionGroupsById.keys());
  const itemAvailabilityRows =
    tableRows.get("reference.item_availability") ?? [];
  const pokemonAvailabilityRows =
    tableRows.get("reference.pokemon_availability") ?? [];
  const itemsBySlug = mapRowsByColumn(
    tableRows.get("reference.items") ?? [],
    "slug",
  );
  const formsBySlug = mapRowsByColumn(formRows, "slug");
  const formsById = mapRowsByColumn(formRows, "id");
  const itemsById = mapRowsByColumn(
    tableRows.get("reference.items") ?? [],
    "id",
  );
  const typesById = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "id",
  );
  const typesBySlug = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "slug",
  );
  const expectedRowsByKey = new Map();
  const actualKeys = new Set();
  assertSourceVerifiedRowsetFingerprint(
    context,
    "reference.pokemon_form_item_requirements",
    requirementRows,
    [
      "form_id",
      "item_id",
      "generation_start_id",
      "generation_end_id",
      "version_group_start_id",
      "version_group_end_id",
      "requirement_kind",
      "type_effect_scope",
      "type_id",
      "notes",
    ],
    (a, b) =>
      a.form_id - b.form_id ||
      a.item_id - b.item_id ||
      a.generation_start_id - b.generation_start_id,
    {
      count: 161,
      sha256:
        "2a5b1ea77572180ebbcc5e9b3f2d7bd76b70a84df182ceb3c5c8a8021574ea0c",
    },
  );
  if (requirementRows.length !== 161) {
    context.errors.push(
      `reference.pokemon_form_item_requirements: expected 161 item requirement rows, got ${requirementRows.length}.`,
    );
  }
  function requirementKey(row) {
    return `${row.form_id}/${row.item_id}/${row.generation_start_id}`;
  }
  function expectRequirement({
    formSlug,
    itemSlug,
    generationStart,
    generationEnd = null,
    versionGroupStart = null,
    versionGroupEnd = null,
    kind,
    typeEffectScope = null,
    typeSlug = null,
  }) {
    const form = formsBySlug.get(formSlug);
    const item = itemsBySlug.get(itemSlug);
    const type = typeSlug ? typesBySlug.get(typeSlug) : null;
    if (!form) {
      context.errors.push(
        `reference.pokemon_form_item_requirements: expectation references unseeded form ${formSlug}.`,
      );
      return;
    }
    if (!item) {
      context.errors.push(
        `reference.pokemon_form_item_requirements: expectation references unseeded item ${itemSlug}.`,
      );
      return;
    }
    if (typeSlug && !type) {
      context.errors.push(
        `reference.pokemon_form_item_requirements: expectation references unseeded type ${typeSlug}.`,
      );
      return;
    }
    const expectedRow = {
      form_id: form.id,
      item_id: item.id,
      generation_start_id: generationStart,
      generation_end_id: generationEnd,
      version_group_start_id: versionGroupStart,
      version_group_end_id: versionGroupEnd,
      requirement_kind: kind,
      type_effect_scope: typeEffectScope,
      type_id: type?.id ?? null,
    };
    expectedRowsByKey.set(requirementKey(expectedRow), expectedRow);
  }
  expectRequirement({
    formSlug: "giratina-origin",
    itemSlug: "griseous-orb",
    generationStart: 4,
    generationEnd: 8,
    versionGroupEnd: 21,
    kind: "required_held_item",
  });
  expectRequirement({
    formSlug: "giratina-origin",
    itemSlug: "griseous-core",
    generationStart: 8,
    versionGroupStart: 22,
    kind: "form_change_item",
  });
  expectRequirement({
    formSlug: "dialga-origin",
    itemSlug: "adamant-crystal",
    generationStart: 8,
    versionGroupStart: 22,
    kind: "form_change_item",
  });
  expectRequirement({
    formSlug: "palkia-origin",
    itemSlug: "lustrous-globe",
    generationStart: 8,
    versionGroupStart: 22,
    kind: "form_change_item",
  });
  expectRequirement({
    formSlug: "ogerpon-wellspring",
    itemSlug: "wellspring-mask",
    generationStart: 9,
    kind: "required_held_item",
    typeEffectScope: "secondary_type",
    typeSlug: "water",
  });
  expectRequirement({
    formSlug: "ogerpon-hearthflame",
    itemSlug: "hearthflame-mask",
    generationStart: 9,
    kind: "required_held_item",
    typeEffectScope: "secondary_type",
    typeSlug: "fire",
  });
  expectRequirement({
    formSlug: "ogerpon-cornerstone",
    itemSlug: "cornerstone-mask",
    generationStart: 9,
    kind: "required_held_item",
    typeEffectScope: "secondary_type",
    typeSlug: "rock",
  });
  const typeDrivenForms = [
    ["fighting", "fist-plate", "fightinium-z", "fighting-memory"],
    ["flying", "sky-plate", "flyinium-z", "flying-memory"],
    ["poison", "toxic-plate", "poisonium-z", "poison-memory"],
    ["ground", "earth-plate", "groundium-z", "ground-memory"],
    ["rock", "stone-plate", "rockium-z", "rock-memory"],
    ["bug", "insect-plate", "buginium-z", "bug-memory"],
    ["ghost", "spooky-plate", "ghostium-z", "ghost-memory"],
    ["steel", "iron-plate", "steelium-z", "steel-memory"],
    ["fire", "flame-plate", "firium-z", "fire-memory"],
    ["water", "splash-plate", "waterium-z", "water-memory"],
    ["grass", "meadow-plate", "grassium-z", "grass-memory"],
    ["electric", "zap-plate", "electrium-z", "electric-memory"],
    ["psychic", "mind-plate", "psychium-z", "psychic-memory"],
    ["ice", "icicle-plate", "icium-z", "ice-memory"],
    ["dragon", "draco-plate", "dragonium-z", "dragon-memory"],
    ["dark", "dread-plate", "darkinium-z", "dark-memory"],
    ["fairy", "pixie-plate", "fairium-z", "fairy-memory"],
  ];
  for (const [
    typeSlug,
    plateSlug,
    zCrystalSlug,
    memorySlug,
  ] of typeDrivenForms) {
    expectRequirement({
      formSlug: `arceus-${typeSlug}`,
      itemSlug: plateSlug,
      generationStart: typeSlug === "fairy" ? 6 : 4,
      kind: "alternative_held_item",
      typeEffectScope: "form_type",
      typeSlug,
    });
    expectRequirement({
      formSlug: `arceus-${typeSlug}`,
      itemSlug: zCrystalSlug,
      generationStart: 7,
      generationEnd: 7,
      kind: "alternative_held_item",
      typeEffectScope: "form_type",
      typeSlug,
    });
    expectRequirement({
      formSlug: `silvally-${typeSlug}`,
      itemSlug: memorySlug,
      generationStart: 7,
      kind: "required_held_item",
      typeEffectScope: "form_type",
      typeSlug,
    });
  }
  for (const [formSlug, itemSlug, typeSlug] of [
    ["genesect-douse-drive", "douse-drive", "water"],
    ["genesect-shock-drive", "shock-drive", "electric"],
    ["genesect-burn-drive", "burn-drive", "fire"],
    ["genesect-chill-drive", "chill-drive", "ice"],
  ]) {
    expectRequirement({
      formSlug,
      itemSlug,
      generationStart: 5,
      kind: "required_held_item",
      typeEffectScope: "signature_move_type",
      typeSlug,
    });
  }
  /* Each battle form's Mega Stone, orb, crystal or relic, held as it enters battle. */
  for (const [formSlug, itemSlug, generationStart] of [
    ["mega-venusaur", "venusaurite", 6],
    ["mega-charizard-x", "charizardite-x", 6],
    ["mega-charizard-y", "charizardite-y", 6],
    ["mega-blastoise", "blastoisinite", 6],
    ["mega-beedrill", "beedrillite", 6],
    ["mega-pidgeot", "pidgeotite", 6],
    ["mega-alakazam", "alakazite", 6],
    ["mega-slowbro", "slowbronite", 6],
    ["mega-gengar", "gengarite", 6],
    ["mega-kangaskhan", "kangaskhanite", 6],
    ["mega-pinsir", "pinsirite", 6],
    ["mega-gyarados", "gyaradosite", 6],
    ["mega-aerodactyl", "aerodactylite", 6],
    ["mega-mewtwo-x", "mewtwonite-x", 6],
    ["mega-mewtwo-y", "mewtwonite-y", 6],
    ["mega-ampharos", "ampharosite", 6],
    ["mega-steelix", "steelixite", 6],
    ["mega-scizor", "scizorite", 6],
    ["mega-heracross", "heracronite", 6],
    ["mega-houndoom", "houndoominite", 6],
    ["mega-tyranitar", "tyranitarite", 6],
    ["mega-sceptile", "sceptilite", 6],
    ["mega-blaziken", "blazikenite", 6],
    ["mega-swampert", "swampertite", 6],
    ["mega-gardevoir", "gardevoirite", 6],
    ["mega-sableye", "sablenite", 6],
    ["mega-mawile", "mawilite", 6],
    ["mega-aggron", "aggronite", 6],
    ["mega-medicham", "medichamite", 6],
    ["mega-manectric", "manectite", 6],
    ["mega-sharpedo", "sharpedonite", 6],
    ["mega-camerupt", "cameruptite", 6],
    ["mega-altaria", "altarianite", 6],
    ["mega-banette", "banettite", 6],
    ["mega-absol", "absolite", 6],
    ["mega-glalie", "glalitite", 6],
    ["mega-salamence", "salamencite", 6],
    ["mega-metagross", "metagrossite", 6],
    ["mega-latias", "latiasite", 6],
    ["mega-latios", "latiosite", 6],
    ["mega-lopunny", "lopunnite", 6],
    ["mega-garchomp", "garchompite", 6],
    ["mega-lucario", "lucarionite", 6],
    ["mega-abomasnow", "abomasite", 6],
    ["mega-gallade", "galladite", 6],
    ["mega-audino", "audinite", 6],
    ["mega-diancie", "diancite", 6],
    ["mega-raichu-x", "raichunite-x", 9],
    ["mega-raichu-y", "raichunite-y", 9],
    ["mega-clefable", "clefablite", 9],
    ["mega-victreebel", "victreebelite", 9],
    ["mega-starmie", "starminite", 9],
    ["mega-dragonite", "dragoninite", 9],
    ["mega-meganium", "meganiumite", 9],
    ["mega-feraligatr", "feraligite", 9],
    ["mega-skarmory", "skarmorite", 9],
    ["mega-chimecho", "chimechite", 9],
    ["mega-absol-z", "absolite-z", 9],
    ["mega-staraptor", "staraptite", 9],
    ["mega-garchomp-z", "garchompite-z", 9],
    ["mega-lucario-z", "lucarionite-z", 9],
    ["mega-froslass", "froslassite", 9],
    ["mega-heatran", "heatranite", 9],
    ["mega-darkrai", "darkranite", 9],
    ["mega-emboar", "emboarite", 9],
    ["mega-excadrill", "excadrite", 9],
    ["mega-scolipede", "scolipite", 9],
    ["mega-scrafty", "scraftinite", 9],
    ["mega-eelektross", "eelektrossite", 9],
    ["mega-chandelure", "chandelurite", 9],
    ["mega-golurk", "golurkite", 9],
    ["mega-chesnaught", "chesnaughtite", 9],
    ["mega-delphox", "delphoxite", 9],
    ["mega-greninja", "greninjite", 9],
    ["mega-pyroar", "pyroarite", 9],
    ["mega-floette", "floettite", 9],
    ["mega-meowstic", "meowsticite", 9],
    ["mega-malamar", "malamarite", 9],
    ["mega-barbaracle", "barbaracite", 9],
    ["mega-dragalge", "dragalgite", 9],
    ["mega-hawlucha", "hawluchanite", 9],
    ["mega-zygarde", "zygardite", 9],
    ["mega-crabominable", "crabominite", 9],
    ["mega-golisopod", "golisopite", 9],
    ["mega-drampa", "drampanite", 9],
    ["mega-magearna", "magearnite", 9],
    ["mega-zeraora", "zeraorite", 9],
    ["mega-falinks", "falinksite", 9],
    ["mega-scovillain", "scovillainite", 9],
    ["mega-glimmora", "glimmoranite", 9],
    ["mega-tatsugiri", "tatsugirinite", 9],
    ["mega-tatsugiri-droopy", "tatsugirinite", 9],
    ["mega-tatsugiri-stretchy", "tatsugirinite", 9],
    ["mega-baxcalibur", "baxcalibrite", 9],
    ["primal-kyogre", "blue-orb", 6],
    ["primal-groudon", "red-orb", 6],
    ["ultra-necrozma", "ultranecrozium-z", 7],
    ["zacian-crowned", "rusted-sword", 8],
    ["zamazenta-crowned", "rusted-shield", 8],
  ]) {
    expectRequirement({
      formSlug,
      itemSlug,
      generationStart,
      kind: "required_held_item",
    });
  }
  for (const { row, filePath } of requirementRows) {
    const normalizedRow = {
      ...row,
      version_group_start_id: row.version_group_start_id ?? null,
      version_group_end_id: row.version_group_end_id ?? null,
    };
    const key = requirementKey(normalizedRow);
    actualKeys.add(key);
    if (!formsById.has(normalizedRow.form_id)) {
      context.errors.push(
        `${relative(filePath)}: form item requirement references unseeded form_id ${normalizedRow.form_id}.`,
      );
    }
    if (!itemsById.has(normalizedRow.item_id)) {
      context.errors.push(
        `${relative(filePath)}: form item requirement references unseeded item_id ${normalizedRow.item_id}.`,
      );
    }
    if (!generationIds.has(normalizedRow.generation_start_id)) {
      context.errors.push(
        `${relative(filePath)}: form item requirement references unseeded generation_start_id ${normalizedRow.generation_start_id}.`,
      );
    }
    if (
      normalizedRow.generation_end_id !== null &&
      !generationIds.has(normalizedRow.generation_end_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: form item requirement references unseeded generation_end_id ${normalizedRow.generation_end_id}.`,
      );
    }
    if (
      normalizedRow.generation_end_id !== null &&
      normalizedRow.generation_end_id < normalizedRow.generation_start_id
    ) {
      context.errors.push(
        `${relative(filePath)}: form item requirement generation_end_id must be >= generation_start_id.`,
      );
    }
    if (
      normalizedRow.version_group_start_id !== null &&
      !versionGroupIds.has(normalizedRow.version_group_start_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: form item requirement references unseeded version_group_start_id ${normalizedRow.version_group_start_id}.`,
      );
    }
    if (
      normalizedRow.version_group_end_id !== null &&
      !versionGroupIds.has(normalizedRow.version_group_end_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: form item requirement references unseeded version_group_end_id ${normalizedRow.version_group_end_id}.`,
      );
    }
    if (
      normalizedRow.version_group_start_id !== null &&
      normalizedRow.version_group_end_id !== null &&
      normalizedRow.version_group_end_id < normalizedRow.version_group_start_id
    ) {
      context.errors.push(
        `${relative(filePath)}: form item requirement version_group_end_id must be >= version_group_start_id.`,
      );
    }
    if (
      (normalizedRow.type_effect_scope === null) !==
      (normalizedRow.type_id === null)
    ) {
      context.errors.push(
        `${relative(filePath)}: form item requirement type_effect_scope and type_id must be set together.`,
      );
    }
    if (
      normalizedRow.type_id !== null &&
      !typesById.has(normalizedRow.type_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: form item requirement references unseeded type_id ${normalizedRow.type_id}.`,
      );
    }
    const expectedRow = expectedRowsByKey.get(key);
    if (!expectedRow) {
      context.errors.push(
        `${relative(filePath)}: unexpected form item requirement ${key}.`,
      );
      continue;
    }
    for (const column of [
      "generation_end_id",
      "version_group_start_id",
      "version_group_end_id",
      "requirement_kind",
      "type_effect_scope",
      "type_id",
    ]) {
      if (normalizedRow[column] !== expectedRow[column]) {
        context.errors.push(
          `${relative(filePath)}: form item requirement ${key} expected ${column} ${expectedRow[column]}, got ${normalizedRow[column]}.`,
        );
      }
    }
  }
  for (const expectedKey of expectedRowsByKey.keys()) {
    if (!actualKeys.has(expectedKey)) {
      context.errors.push(
        `reference.pokemon_form_item_requirements: missing expected requirement ${expectedKey}.`,
      );
    }
  }
  const requirementRowsByFormId = new Map();
  for (const { row } of requirementRows) {
    const normalizedRow = {
      ...row,
      version_group_start_id: row.version_group_start_id ?? null,
      version_group_end_id: row.version_group_end_id ?? null,
    };
    if (!requirementRowsByFormId.has(normalizedRow.form_id)) {
      requirementRowsByFormId.set(normalizedRow.form_id, []);
    }
    requirementRowsByFormId.get(normalizedRow.form_id).push(normalizedRow);
  }
  const availableItemScopeKeys = new Set(
    itemAvailabilityRows.map(
      ({ row }) => `${row.item_id}:${row.version_group_id}`,
    ),
  );
  function requirementAppliesToVersionGroup(requirementRow, versionGroupRow) {
    if (!versionGroupRow) return false;
    if (versionGroupRow.generation_id < requirementRow.generation_start_id)
      return false;
    if (
      requirementRow.generation_end_id !== null &&
      versionGroupRow.generation_id > requirementRow.generation_end_id
    )
      return false;
    if (
      requirementRow.version_group_start_id !== null &&
      versionGroupRow.id < requirementRow.version_group_start_id
    )
      return false;
    if (
      requirementRow.version_group_end_id !== null &&
      versionGroupRow.id > requirementRow.version_group_end_id
    )
      return false;
    return true;
  }
  function hasItemAvailabilityInScopeOrAncestor(itemId, versionGroupId) {
    let currentVersionGroupId = versionGroupId;
    while (currentVersionGroupId !== null) {
      if (availableItemScopeKeys.has(`${itemId}:${currentVersionGroupId}`))
        return true;
      const versionGroup = versionGroupsById.get(currentVersionGroupId);
      currentVersionGroupId = versionGroup?.parent_version_group_id ?? null;
    }
    return false;
  }
  for (const { row, filePath } of pokemonAvailabilityRows) {
    const versionGroup = versionGroupsById.get(row.version_group_id);
    const applicableRequirements = (
      requirementRowsByFormId.get(row.form_id) ?? []
    ).filter((requirementRow) =>
      requirementAppliesToVersionGroup(requirementRow, versionGroup),
    );
    for (const requirementRow of applicableRequirements) {
      if (
        !hasItemAvailabilityInScopeOrAncestor(
          requirementRow.item_id,
          row.version_group_id,
        )
      ) {
        context.errors.push(
          `${relative(filePath)}: item-driven available form ${row.form_id} in version_group_id ${row.version_group_id} requires item_id ${requirementRow.item_id}, but that item has no availability row in this scope or an ancestor scope.`,
        );
      }
    }
  }
}

export function assertPokemonAttributeRows(context, tableRows) {
  const rows = tableRows.get("reference.pokemon_attributes") ?? [];
  const speciesRows = tableRows.get("reference.pokemon_species") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const speciesById = mapRowsByColumn(speciesRows, "id");
  const formsById = mapRowsByColumn(formRows, "id");
  const formsBySlug = mapRowsByColumn(formRows, "slug");
  const typesById = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "id",
  );
  const typesBySlug = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "slug",
  );
  const abilitiesById = mapRowsByColumn(
    tableRows.get("reference.abilities") ?? [],
    "id",
  );
  const abilitiesBySlug = mapRowsByColumn(
    tableRows.get("reference.abilities") ?? [],
    "slug",
  );
  const eggGroupsById = mapRowsByColumn(
    tableRows.get("reference.egg_groups") ?? [],
    "id",
  );
  const rowsByFormId = new Map();
  const rowsByKey = new Map();
  assertSourceVerifiedRowsetFingerprint(
    context,
    "reference.pokemon_attributes",
    rows,
    [
      "species_id",
      "form_id",
      "generation_start_id",
      "primary_type_id",
      "secondary_type_id",
      "primary_ability_id",
      "secondary_ability_id",
      "hidden_ability_id",
      "primary_egg_group_id",
      "secondary_egg_group_id",
      "base_hp",
      "base_attack",
      "base_defense",
      "base_special_attack",
      "base_special_defense",
      "base_speed",
    ],
    (a, b) =>
      a.species_id - b.species_id ||
      a.form_id - b.form_id ||
      a.generation_start_id - b.generation_start_id,
    {
      count: 2417,
      sha256:
        "1fd5cede18ed32d006b3e44246aa064e742882f96176a8ccf0f4783d13b6c75e",
    },
  );
  if (rows.length !== 2417) {
    context.errors.push(
      `reference.pokemon_attributes: expected 2417 curated attribute rows, got ${rows.length}.`,
    );
  }
  addCompositeDuplicateErrors(
    context,
    "reference.pokemon_attributes",
    rows,
    "species_id/form_id/generation_start_id",
    (row) => `${row.species_id}/${row.form_id}/${row.generation_start_id}`,
  );
  function assertForeignTimedReference({
    row,
    filePath,
    column,
    rowsById,
    label,
    minGeneration = null,
  }) {
    const value = row[column];
    if (value === null) return;
    const referenced = rowsById.get(value);
    if (!referenced) {
      context.errors.push(
        `${relative(filePath)}: pokemon attribute references unseeded ${column} ${value}.`,
      );
      return;
    }
    if (minGeneration !== null && row.generation_start_id < minGeneration) {
      context.errors.push(
        `${relative(filePath)}: ${label} ${column} cannot be used before Generation ${minGeneration}.`,
      );
    }
    if (
      "introduced_generation_id" in referenced &&
      referenced.introduced_generation_id > row.generation_start_id
    ) {
      context.errors.push(
        `${relative(filePath)}: ${label} ${column} ${value} was introduced in Generation ${referenced.introduced_generation_id}, after row generation ${row.generation_start_id}.`,
      );
    }
  }
  for (const { row, filePath } of rows) {
    const species = speciesById.get(row.species_id);
    const form = formsById.get(row.form_id);
    if (!species) {
      context.errors.push(
        `${relative(filePath)}: pokemon attribute references unseeded species_id ${row.species_id}.`,
      );
    }
    if (!form) {
      context.errors.push(
        `${relative(filePath)}: pokemon attribute references unseeded form_id ${row.form_id}.`,
      );
    }
    if (form && form.species_id !== row.species_id) {
      context.errors.push(
        `${relative(filePath)}: pokemon attribute form ${form.slug} belongs to species_id ${form.species_id}, not ${row.species_id}.`,
      );
    }
    if (!generationIds.has(row.generation_start_id)) {
      context.errors.push(
        `${relative(filePath)}: pokemon attribute references unseeded generation_start_id ${row.generation_start_id}.`,
      );
    }
    if (form && row.generation_start_id < form.introduced_generation_id) {
      context.errors.push(
        `${relative(filePath)}: pokemon attribute for form ${form.slug} starts in Generation ${row.generation_start_id}, before form introduction Generation ${form.introduced_generation_id}.`,
      );
    }
    assertForeignTimedReference({
      row,
      filePath,
      column: "primary_type_id",
      rowsById: typesById,
      label: "type",
    });
    assertForeignTimedReference({
      row,
      filePath,
      column: "secondary_type_id",
      rowsById: typesById,
      label: "type",
    });
    if (
      row.secondary_type_id !== null &&
      row.secondary_type_id === row.primary_type_id
    ) {
      context.errors.push(
        `${relative(filePath)}: pokemon attribute primary_type_id and secondary_type_id must differ.`,
      );
    }
    assertForeignTimedReference({
      row,
      filePath,
      column: "primary_ability_id",
      rowsById: abilitiesById,
      label: "ability",
      minGeneration: 3,
    });
    assertForeignTimedReference({
      row,
      filePath,
      column: "secondary_ability_id",
      rowsById: abilitiesById,
      label: "ability",
      minGeneration: 3,
    });
    assertForeignTimedReference({
      row,
      filePath,
      column: "hidden_ability_id",
      rowsById: abilitiesById,
      label: "hidden ability",
      minGeneration: 5,
    });
    if (
      row.generation_start_id < 3 &&
      (row.primary_ability_id !== null ||
        row.secondary_ability_id !== null ||
        row.hidden_ability_id !== null)
    ) {
      context.errors.push(
        `${relative(filePath)}: Generation ${row.generation_start_id} attribute rows must not set abilities.`,
      );
    }
    if (
      row.generation_start_id >= 3 &&
      row.primary_ability_id === null &&
      !(
        row.generation_start_id >= 9 &&
        expectedAbilitylessFormSlugSet.has(formsById.get(row.form_id)?.slug)
      )
    ) {
      context.errors.push(
        `${relative(filePath)}: Generation ${row.generation_start_id} attribute rows must set a primary ability.`,
      );
    }
    if (row.generation_start_id < 5 && row.hidden_ability_id !== null) {
      context.errors.push(
        `${relative(filePath)}: hidden abilities must not be set before Generation 5.`,
      );
    }
    for (const [leftColumn, rightColumn] of [
      ["primary_ability_id", "secondary_ability_id"],
      ["primary_ability_id", "hidden_ability_id"],
      ["secondary_ability_id", "hidden_ability_id"],
    ]) {
      if (
        row[leftColumn] !== null &&
        row[rightColumn] !== null &&
        row[leftColumn] === row[rightColumn]
      ) {
        context.errors.push(
          `${relative(filePath)}: pokemon attribute ${leftColumn} and ${rightColumn} must differ.`,
        );
      }
    }
    assertForeignTimedReference({
      row,
      filePath,
      column: "primary_egg_group_id",
      rowsById: eggGroupsById,
      label: "egg group",
      minGeneration: 2,
    });
    assertForeignTimedReference({
      row,
      filePath,
      column: "secondary_egg_group_id",
      rowsById: eggGroupsById,
      label: "egg group",
      minGeneration: 2,
    });
    if (
      row.generation_start_id < 2 &&
      (row.primary_egg_group_id !== null || row.secondary_egg_group_id !== null)
    ) {
      context.errors.push(
        `${relative(filePath)}: Generation 1 attribute rows must not set egg groups.`,
      );
    }
    if (row.generation_start_id >= 2 && row.primary_egg_group_id === null) {
      context.errors.push(
        `${relative(filePath)}: Generation ${row.generation_start_id} attribute rows must set a primary egg group.`,
      );
    }
    if (
      row.secondary_egg_group_id !== null &&
      row.secondary_egg_group_id === row.primary_egg_group_id
    ) {
      context.errors.push(
        `${relative(filePath)}: pokemon attribute primary_egg_group_id and secondary_egg_group_id must differ.`,
      );
    }
    for (const statColumn of [
      "base_hp",
      "base_attack",
      "base_defense",
      "base_special_attack",
      "base_special_defense",
      "base_speed",
    ]) {
      if (
        !Number.isInteger(row[statColumn]) ||
        row[statColumn] < 1 ||
        row[statColumn] > 255
      ) {
        context.errors.push(
          `${relative(filePath)}: pokemon attribute ${statColumn} must be an integer between 1 and 255.`,
        );
      }
    }
    if (
      row.generation_start_id === 1 &&
      row.base_special_attack !== row.base_special_defense
    ) {
      context.errors.push(
        `${relative(filePath)}: Generation 1 Special must be stored equally in base_special_attack and base_special_defense.`,
      );
    }
    if (!rowsByFormId.has(row.form_id)) rowsByFormId.set(row.form_id, []);
    rowsByFormId.get(row.form_id).push(row);
    rowsByKey.set(`${row.form_id}/${row.generation_start_id}`, row);
  }
  for (const { row: form } of formRows) {
    const formAttributeRows = rowsByFormId.get(form.id) ?? [];
    if (formAttributeRows.length === 0) {
      context.errors.push(
        `reference.pokemon_attributes: missing attribute rows for form ${form.slug}.`,
      );
      continue;
    }
    if (
      !formAttributeRows.some(
        (row) => row.generation_start_id === form.introduced_generation_id,
      )
    ) {
      context.errors.push(
        `reference.pokemon_attributes: form ${form.slug} must have an attribute row at introduced_generation_id ${form.introduced_generation_id}.`,
      );
    }
  }
  function expectAttribute({
    formSlug,
    generationStart,
    primaryTypeSlug,
    secondaryTypeSlug = null,
    primaryAbilitySlug = undefined,
    hiddenAbilitySlug = undefined,
    stats = null,
  }) {
    const form = formsBySlug.get(formSlug);
    const primaryType = typesBySlug.get(primaryTypeSlug);
    const secondaryType =
      secondaryTypeSlug === null ? null : typesBySlug.get(secondaryTypeSlug);
    const primaryAbility =
      primaryAbilitySlug === undefined
        ? undefined
        : abilitiesBySlug.get(primaryAbilitySlug);
    const hiddenAbility =
      hiddenAbilitySlug === undefined || hiddenAbilitySlug === null
        ? null
        : abilitiesBySlug.get(hiddenAbilitySlug);
    if (!form) {
      context.errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded form ${formSlug}.`,
      );
      return;
    }
    if (!primaryType) {
      context.errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded type ${primaryTypeSlug}.`,
      );
      return;
    }
    if (secondaryTypeSlug !== null && !secondaryType) {
      context.errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded type ${secondaryTypeSlug}.`,
      );
      return;
    }
    if (primaryAbilitySlug !== undefined && !primaryAbility) {
      context.errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded ability ${primaryAbilitySlug}.`,
      );
      return;
    }
    if (
      hiddenAbilitySlug !== undefined &&
      hiddenAbilitySlug !== null &&
      !hiddenAbility
    ) {
      context.errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded ability ${hiddenAbilitySlug}.`,
      );
      return;
    }
    const row = rowsByKey.get(`${form.id}/${generationStart}`);
    if (!row) {
      context.errors.push(
        `reference.pokemon_attributes: missing expected row for ${formSlug} at Generation ${generationStart}.`,
      );
      return;
    }
    if (row.primary_type_id !== primaryType.id) {
      context.errors.push(
        `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected primary type ${primaryTypeSlug}.`,
      );
    }
    if (row.secondary_type_id !== (secondaryType?.id ?? null)) {
      context.errors.push(
        `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected secondary type ${secondaryTypeSlug ?? "NULL"}.`,
      );
    }
    if (
      primaryAbilitySlug !== undefined &&
      row.primary_ability_id !== primaryAbility.id
    ) {
      context.errors.push(
        `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected primary ability ${primaryAbilitySlug}.`,
      );
    }
    if (
      hiddenAbilitySlug !== undefined &&
      row.hidden_ability_id !== (hiddenAbility?.id ?? null)
    ) {
      context.errors.push(
        `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected hidden ability ${hiddenAbilitySlug ?? "NULL"}.`,
      );
    }
    if (stats) {
      const [hp, attack, defense, specialAttack, specialDefense, speed] = stats;
      for (const [column, expected] of [
        ["base_hp", hp],
        ["base_attack", attack],
        ["base_defense", defense],
        ["base_special_attack", specialAttack],
        ["base_special_defense", specialDefense],
        ["base_speed", speed],
      ]) {
        if (row[column] !== expected) {
          context.errors.push(
            `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected ${column} ${expected}, got ${row[column]}.`,
          );
        }
      }
    }
  }
  expectAttribute({
    formSlug: "mega-charizard-x",
    generationStart: 6,
    primaryTypeSlug: "fire",
    secondaryTypeSlug: "dragon",
    primaryAbilitySlug: "tough-claws",
    stats: [78, 130, 111, 130, 85, 100],
  });
  expectAttribute({
    formSlug: "mega-alakazam",
    generationStart: 7,
    primaryTypeSlug: "psychic",
    primaryAbilitySlug: "trace",
    stats: [55, 50, 65, 175, 105, 150],
  });
  expectAttribute({
    formSlug: "primal-groudon",
    generationStart: 6,
    primaryTypeSlug: "ground",
    secondaryTypeSlug: "fire",
    primaryAbilitySlug: "desolate-land",
    stats: [100, 180, 160, 150, 90, 90],
  });
  expectAttribute({
    formSlug: "mega-starmie",
    generationStart: 9,
    primaryTypeSlug: "water",
    secondaryTypeSlug: "psychic",
    stats: [60, 140, 105, 130, 105, 120],
  });
  expectAttribute({
    formSlug: "gigantamax-urshifu-rapid-strike",
    generationStart: 8,
    primaryTypeSlug: "fighting",
    secondaryTypeSlug: "water",
    primaryAbilitySlug: "unseen-fist",
    stats: [100, 130, 100, 63, 60, 97],
  });
  expectAttribute({
    formSlug: "zacian-crowned",
    generationStart: 9,
    primaryTypeSlug: "fairy",
    secondaryTypeSlug: "steel",
    primaryAbilitySlug: "intrepid-sword",
    stats: [92, 150, 115, 80, 115, 148],
  });
  expectAttribute({
    formSlug: "bulbasaur",
    generationStart: 1,
    primaryTypeSlug: "grass",
    secondaryTypeSlug: "poison",
    stats: [45, 49, 49, 65, 65, 45],
  });
  expectAttribute({
    formSlug: "magnemite",
    generationStart: 2,
    primaryTypeSlug: "electric",
    secondaryTypeSlug: "steel",
  });
  expectAttribute({
    formSlug: "clefairy",
    generationStart: 6,
    primaryTypeSlug: "fairy",
    secondaryTypeSlug: null,
  });
  expectAttribute({
    formSlug: "pikachu-partner",
    generationStart: 7,
    primaryTypeSlug: "electric",
    primaryAbilitySlug: "static",
    stats: [45, 80, 50, 75, 60, 120],
  });
  expectAttribute({
    formSlug: "eevee-partner",
    generationStart: 7,
    primaryTypeSlug: "normal",
    primaryAbilitySlug: "run-away",
    stats: [65, 75, 70, 65, 85, 75],
  });
  expectAttribute({
    formSlug: "dialga-origin",
    generationStart: 8,
    primaryTypeSlug: "steel",
    secondaryTypeSlug: "dragon",
    primaryAbilitySlug: "pressure",
    hiddenAbilitySlug: "telepathy",
    stats: [100, 100, 120, 150, 120, 90],
  });
  expectAttribute({
    formSlug: "palkia-origin",
    generationStart: 8,
    primaryTypeSlug: "water",
    secondaryTypeSlug: "dragon",
    primaryAbilitySlug: "pressure",
    hiddenAbilitySlug: "telepathy",
    stats: [90, 100, 100, 150, 120, 120],
  });
  expectAttribute({
    formSlug: "arceus-fairy",
    generationStart: 6,
    primaryTypeSlug: "fairy",
    primaryAbilitySlug: "multitype",
    stats: [120, 120, 120, 120, 120, 120],
  });
  expectAttribute({
    formSlug: "silvally-fire",
    generationStart: 7,
    primaryTypeSlug: "fire",
    primaryAbilitySlug: "rks-system",
    stats: [95, 95, 95, 95, 95, 95],
  });
  expectAttribute({
    formSlug: "genesect-douse-drive",
    generationStart: 5,
    primaryTypeSlug: "bug",
    secondaryTypeSlug: "steel",
    primaryAbilitySlug: "download",
    stats: [71, 120, 95, 120, 95, 99],
  });
  expectAttribute({
    formSlug: "ogerpon-wellspring",
    generationStart: 9,
    primaryTypeSlug: "grass",
    secondaryTypeSlug: "water",
    primaryAbilitySlug: "water-absorb",
    stats: [80, 120, 84, 60, 96, 110],
  });
}
