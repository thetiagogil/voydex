import {
  addCompositeDuplicateErrors,
  assertScopedContiguousSortOrder,
  assertSourceVerifiedRowsetFingerprint,
  mapRowsByColumn,
  relative,
} from "../core.mjs";

const EXPECTED_LOCATION_ROWS = 812;
const EXPECTED_LOCATION_VERSION_GROUP_ROWS = 1555;
const EXPECTED_ENCOUNTER_ROWS = 27853;

/* Which rods each version group fishes with, by way slug: Old, Good and
   Super Rod through Generation IV, X / Y, Omega Ruby / Alpha Sapphire and
   Brilliant Diamond / Shining Pearl; only the Super Rod in Black / White and
   Black 2 / White 2; one Fishing Rod from Sun / Moon to Sword / Shield and
   its expansions. Groups not listed have no fishing. */
const THREE_RODS = ["old-rod", "good-rod", "super-rod"];
const RODS_BY_VERSION_GROUP_SLUG = new Map([
  ...[
    "rb",
    "yellow",
    "gs",
    "crystal",
    "rs",
    "frlg",
    "emerald",
    "dp",
    "platinum",
    "hgss",
    "xy",
    "oras",
    "bdsp",
  ].map((slug) => [slug, THREE_RODS]),
  ["bw", ["super-rod"]],
  ["b2w2", ["super-rod"]],
  ...["sm", "usum", "swsh", "swsh-ioa", "swsh-ct"].map((slug) => [
    slug,
    ["fishing-rod"],
  ]),
]);
const FISHING_WAY_SLUGS = new Set([...THREE_RODS, "fishing-rod"]);

const hasGame = (row) => row.game_id !== null && row.game_id !== undefined;

/* Every place, which groups have it in story order, where each Pokémon is met, where Story milestones happen, and the Story roadmap's steps. */
export function assertLocationRows(context, tableRows) {
  const locations = tableRows.get("reference.locations") ?? [];
  const placements = tableRows.get("reference.location_version_groups") ?? [];
  const encounters = tableRows.get("reference.pokemon_encounters") ?? [];
  const ways = tableRows.get("reference.encounter_ways") ?? [];
  const regionIds = new Set(
    (tableRows.get("reference.regions") ?? []).map(({ row }) => row.id),
  );
  const versionGroups = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  const games = mapRowsByColumn(tableRows.get("reference.games") ?? [], "id");
  const gameScopes = new Set(
    (tableRows.get("reference.game_content_scopes") ?? []).map(
      ({ row }) => `${row.game_id}/${row.version_group_id}`,
    ),
  );
  const formSpecies = new Map(
    (tableRows.get("reference.pokemon_forms") ?? []).map(({ row }) => [
      row.id,
      row.species_id,
    ]),
  );
  const wayIds = new Set(ways.map(({ row }) => row.id));
  const levellessWayIds = new Set(
    ways
      .filter(({ row }) =>
        ["trade", "special", "hidden-grotto"].includes(row.slug),
      )
      .map(({ row }) => row.id),
  );
  const gamesByGroup = new Map();
  for (const { row } of tableRows.get("reference.games") ?? []) {
    if (!gamesByGroup.has(row.version_group_id))
      gamesByGroup.set(row.version_group_id, []);
    gamesByGroup.get(row.version_group_id).push(row.id);
  }
  const versionGroupRows = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  const groupGameCount = (versionGroupId) => {
    const group = versionGroupRows.get(versionGroupId);
    const baseId = group?.parent_version_group_id ?? versionGroupId;
    return gamesByGroup.get(baseId)?.length ?? 0;
  };
  const locationsById = mapRowsByColumn(locations, "id");

  assertSourceVerifiedRowsetFingerprint(
    context,
    "reference.locations",
    locations,
    ["id", "region_id", "slug", "name"],
    (a, b) => a.id - b.id,
    {
      count: EXPECTED_LOCATION_ROWS,
      sha256:
        "7f81810853ff844aa41f116e540bbba8fbc75f75adbf444ff0012cfa16b1b330",
    },
  );
  for (const { row, filePath } of locations) {
    if (!regionIds.has(row.region_id)) {
      context.errors.push(
        `${relative(filePath)}: place ${row.slug} names unseeded region ${row.region_id}.`,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    "reference.locations",
    locations,
    "region and name",
    (row) => `${row.region_id}/${row.name}`,
  );

  if (placements.length !== EXPECTED_LOCATION_VERSION_GROUP_ROWS) {
    context.errors.push(
      `reference.location_version_groups: expected ${EXPECTED_LOCATION_VERSION_GROUP_ROWS} rows, got ${placements.length}.`,
    );
  }
  addCompositeDuplicateErrors(
    context,
    "reference.location_version_groups",
    placements,
    "place and version group",
    (row) => `${row.location_id}/${row.version_group_id}`,
  );
  const placed = new Set();
  const orderByGroup = new Map();
  for (const { row, filePath } of placements) {
    placed.add(`${row.location_id}/${row.version_group_id}`);
    if (!locationsById.has(row.location_id)) {
      context.errors.push(
        `${relative(filePath)}: placement names unseeded place ${row.location_id}.`,
      );
    }
    if (!versionGroups.has(row.version_group_id)) {
      context.errors.push(
        `${relative(filePath)}: placement names unseeded version group ${row.version_group_id}.`,
      );
    }
    if (!orderByGroup.has(row.version_group_id)) {
      orderByGroup.set(row.version_group_id, []);
    }
    orderByGroup.get(row.version_group_id).push(row.sort_order);
  }
  for (const [versionGroupId, orders] of orderByGroup) {
    const sorted = [...orders].sort((a, b) => a - b);
    if (sorted.some((order, index) => order !== index + 1)) {
      context.errors.push(
        `reference.location_version_groups: version group ${versionGroupId} story order is not 1..${orders.length}.`,
      );
    }
  }
  for (const [versionGroupId] of versionGroups) {
    if (!orderByGroup.has(versionGroupId)) {
      context.errors.push(
        `reference.location_version_groups: version group ${versionGroupId} has no places.`,
      );
    }
  }
  const usedLocations = new Set(placements.map(({ row }) => row.location_id));
  for (const { row, filePath } of locations) {
    if (!usedLocations.has(row.id)) {
      context.errors.push(
        `${relative(filePath)}: place ${row.slug} belongs to no version group.`,
      );
    }
  }

  if (encounters.length !== EXPECTED_ENCOUNTER_ROWS) {
    context.errors.push(
      `reference.pokemon_encounters: expected ${EXPECTED_ENCOUNTER_ROWS} rows, got ${encounters.length}.`,
    );
  }
  addCompositeDuplicateErrors(
    context,
    "reference.pokemon_encounters",
    encounters,
    "form, place, version group, game and way",
    (row) =>
      `${row.form_id}/${row.location_id}/${row.version_group_id}/${row.game_id ?? "all"}/${row.encounter_way_id}`,
  );
  const met = new Set();
  const groupWideRows = new Set();
  const gameRows = new Set();
  for (const { row, filePath } of encounters) {
    met.add(`${row.location_id}/${row.version_group_id}`);
    const wayKey = `${row.form_id}/${row.location_id}/${row.version_group_id}/${row.encounter_way_id}`;
    if (row.game_id === null || row.game_id === undefined)
      groupWideRows.add(wayKey);
    else gameRows.add(wayKey);
    if (hasGame(row) && groupGameCount(row.version_group_id) < 2) {
      context.errors.push(
        `${relative(filePath)}: encounter names game ${row.game_id} in version group ${row.version_group_id}, which has one version.`,
      );
    }
    if (formSpecies.get(row.form_id) !== row.species_id) {
      context.errors.push(
        `${relative(filePath)}: encounter names form ${row.form_id}, which is not a form of species ${row.species_id}.`,
      );
    }
    if (!placed.has(`${row.location_id}/${row.version_group_id}`)) {
      context.errors.push(
        `${relative(filePath)}: encounter at place ${row.location_id} in version group ${row.version_group_id}, which that group does not have.`,
      );
    }
    if (!wayIds.has(row.encounter_way_id)) {
      context.errors.push(
        `${relative(filePath)}: encounter names unseeded way ${row.encounter_way_id}.`,
      );
    }
    if (row.game_id !== null && row.game_id !== undefined) {
      if (!games.has(row.game_id)) {
        context.errors.push(
          `${relative(filePath)}: encounter names unseeded game ${row.game_id}.`,
        );
      } else if (!gameScopes.has(`${row.game_id}/${row.version_group_id}`)) {
        context.errors.push(
          `${relative(filePath)}: encounter names game ${row.game_id} outside version group ${row.version_group_id}.`,
        );
      }
    }
    const hasMin = row.level_min !== null && row.level_min !== undefined;
    const hasMax = row.level_max !== null && row.level_max !== undefined;
    if (!hasMin && !levellessWayIds.has(row.encounter_way_id)) {
      context.errors.push(
        `${relative(filePath)}: encounter of form ${row.form_id} at place ${row.location_id} has no levels, and its way is not a trade, a fixed encounter or a grotto.`,
      );
    }
    if (hasMin !== hasMax || (hasMin && row.level_min > row.level_max)) {
      context.errors.push(
        `${relative(filePath)}: encounter of form ${row.form_id} at place ${row.location_id} has levels ${row.level_min}-${row.level_max}.`,
      );
    }
  }
  assertFishingRods(context, encounters, ways, versionGroups);
  for (const wayKey of groupWideRows) {
    if (gameRows.has(wayKey)) {
      context.errors.push(
        `reference.pokemon_encounters: ${wayKey} (form/place/group/way) has a row for every version and a row for one version.`,
      );
    }
  }
  /* A Story milestone or battle sits at one of its version group's places.
     Once a version group's milestones are placed, its places are the Story
     roadmap, so a place there may have no wild Pokémon (a town, the S.S.
     Anne); elsewhere every place still has encounters. */
  const roadmapGroups = new Set();
  for (const table of [
    "tracking.mainline_milestones",
    "tracking.mainline_milestone_opponent_refs",
  ]) {
    for (const { row, filePath } of tableRows.get(table) ?? []) {
      if (row.location_id === null || row.location_id === undefined) continue;
      if (table === "tracking.mainline_milestones")
        roadmapGroups.add(row.version_group_id);
      if (!placed.has(`${row.location_id}/${row.version_group_id}`)) {
        context.errors.push(
          `${relative(filePath)}: ${table} row places a Story point at place ${row.location_id}, which version group ${row.version_group_id} does not have.`,
        );
      }
    }
  }
  for (const { row, filePath } of placements) {
    if (
      !met.has(`${row.location_id}/${row.version_group_id}`) &&
      !roadmapGroups.has(row.version_group_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: place ${row.location_id} in version group ${row.version_group_id} has no encounters.`,
      );
    }
  }
  assertRoadmapStepRows(context, tableRows, placed);
}

/* Every fishing row names a rod its version group has, and every group that
   fishes uses each of its rods somewhere. */
function assertFishingRods(context, encounters, ways, versionGroups) {
  const waySlugs = new Map(ways.map(({ row }) => [row.id, row.slug]));
  const used = new Map();
  for (const { row, filePath } of encounters) {
    const slug = waySlugs.get(row.encounter_way_id);
    if (!FISHING_WAY_SLUGS.has(slug)) continue;
    const groupSlug = versionGroups.get(row.version_group_id)?.slug;
    const rods = RODS_BY_VERSION_GROUP_SLUG.get(groupSlug) ?? [];
    if (!rods.includes(slug)) {
      context.errors.push(
        `${relative(filePath)}: form ${row.form_id} at place ${row.location_id} is fished with ${slug} in ${groupSlug}, which fishes with ${rods.join(", ") || "no rod"}.`,
      );
    }
    if (!used.has(groupSlug)) used.set(groupSlug, new Set());
    used.get(groupSlug).add(slug);
  }
  for (const [groupSlug, rods] of RODS_BY_VERSION_GROUP_SLUG) {
    for (const rod of rods) {
      if (!used.get(groupSlug)?.has(rod)) {
        context.errors.push(
          `reference.pokemon_encounters: ${groupSlug} has the ${rod} but no row fishes with it.`,
        );
      }
    }
  }
}

/* A roadmap step is one of its version group's places or one of its
   milestones, never both. A version group with a roadmap lists every one of
   its milestones exactly once, its steps counting 1, 2, 3. */
function assertRoadmapStepRows(context, tableRows, placed) {
  const table = "tracking.mainline_roadmap_steps";
  const steps = tableRows.get(table) ?? [];
  const milestones = tableRows.get("tracking.mainline_milestones") ?? [];
  const milestonesById = mapRowsByColumn(milestones, "id");
  const roadmapGroups = new Set();
  const stepsByMilestone = new Map();
  for (const { row, filePath } of steps) {
    roadmapGroups.add(row.version_group_id);
    const hasLocation =
      row.location_id !== null && row.location_id !== undefined;
    const hasMilestone =
      row.milestone_id !== null && row.milestone_id !== undefined;
    if (hasLocation === hasMilestone) {
      context.errors.push(
        `${relative(filePath)}: ${table} step ${row.version_group_id}/${row.sort_order} must name exactly one of a place or a milestone.`,
      );
    }
    if (
      hasLocation &&
      !placed.has(`${row.location_id}/${row.version_group_id}`)
    ) {
      context.errors.push(
        `${relative(filePath)}: ${table} step ${row.version_group_id}/${row.sort_order} names place ${row.location_id}, which version group ${row.version_group_id} does not have.`,
      );
    }
    if (hasMilestone) {
      const milestone = milestonesById.get(row.milestone_id);
      if (!milestone || milestone.version_group_id !== row.version_group_id) {
        context.errors.push(
          `${relative(filePath)}: ${table} step ${row.version_group_id}/${row.sort_order} names milestone ${row.milestone_id}, which is not one of version group ${row.version_group_id}'s.`,
        );
      }
      stepsByMilestone.set(
        row.milestone_id,
        (stepsByMilestone.get(row.milestone_id) ?? 0) + 1,
      );
    }
  }
  addCompositeDuplicateErrors(
    context,
    table,
    steps,
    "version group and sort order",
    (row) => `${row.version_group_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    context,
    table,
    steps,
    "version group",
    (row) => row.version_group_id,
  );
  for (const { row, filePath } of milestones) {
    if (!roadmapGroups.has(row.version_group_id)) continue;
    const count = stepsByMilestone.get(row.id) ?? 0;
    if (count !== 1) {
      context.errors.push(
        `${relative(filePath)}: milestone ${row.slug} of version group ${row.version_group_id} is on its roadmap ${count} times; it must be there once.`,
      );
    }
  }
}
