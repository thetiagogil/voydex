import {
  addCompositeDuplicateErrors,
  assertSourceVerifiedRowsetFingerprint,
  mapRowsByColumn,
  relative,
} from "../core.mjs";

const EXPECTED_LOCATION_ROWS = 804;
const EXPECTED_LOCATION_VERSION_GROUP_ROWS = 1546;
const EXPECTED_ENCOUNTER_ROWS = 26485;

const hasGame = (row) => row.game_id !== null && row.game_id !== undefined;

/* Every place, which groups have it in story order, where each Pokémon is met, and where Story milestones happen. */
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
        "e788b71fef1de1de638cb69e5eabfbcc7ab4ef359450a2e7922fb6ac9166b29e",
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
}
