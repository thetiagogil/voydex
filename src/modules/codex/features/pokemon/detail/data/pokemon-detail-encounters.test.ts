import { describe, expect, it } from "vitest";

import { getFormEncountersInVersionGroup } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scoped-rows";
import { buildPokemonEncounterSummaries } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-summary-mappers";
import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types";
import type {
  EncounterWay,
  Game,
  Location,
  LocationVersionGroup,
  PokemonEncounter,
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
  VersionGroup,
} from "@/modules/reference/types";

const versionGroup = (
  id: number,
  slug: string,
  parentId: number | null = null,
) =>
  ({
    generation_id: 8,
    id,
    name: slug,
    parent_version_group_id: parentId,
    slug,
    sort_order: id,
  }) as VersionGroup;
const swsh = versionGroup(18, "swsh");
const isleOfArmor = versionGroup(19, "swsh-ioa", 18);
const bdsp = versionGroup(21, "bdsp");
const sword = { id: 31, name: "Pokémon Sword", slug: "sword" } as Game;
const walking = {
  id: 1,
  name: "Walking",
  slug: "walking",
  sort_order: 1,
} as EncounterWay;
const fishing = {
  id: 3,
  name: "Fishing",
  slug: "fishing",
  sort_order: 3,
} as EncounterWay;
const route1 = {
  id: 1,
  name: "Route 1",
  region_id: 8,
  slug: "galar-route-1",
} as Location;
const route2 = {
  id: 2,
  name: "Route 2",
  region_id: 8,
  slug: "galar-route-2",
} as Location;
const placements = [
  { location_id: 1, sort_order: 2, version_group_id: 18 },
  { location_id: 2, sort_order: 1, version_group_id: 18 },
  { location_id: 1, sort_order: 1, version_group_id: 19 },
] as LocationVersionGroup[];

const encounter = (
  id: number,
  fields: Partial<PokemonEncounter>,
): PokemonEncounter =>
  ({
    condition: null,
    encounter_way_id: 1,
    form_id: 2500,
    game_id: null,
    id,
    level_max: 5,
    level_min: 3,
    location_id: 1,
    species_id: 25,
    version_group_id: 18,
    ...fields,
  }) as PokemonEncounter;

const build = (encounterRows: PokemonEncounter[]) =>
  buildPokemonEncounterSummaries({
    encounterRows,
    games: [sword],
    locationPlacements: placements,
    locations: [route1, route2],
    versionGroups: [swsh, isleOfArmor, bdsp],
    ways: [walking, fishing],
  });

describe("buildPokemonEncounterSummaries", () => {
  it("reads each row with its place, way, game and story order, group by group in story order", () => {
    const rows = build([
      encounter(1, { location_id: 1 }),
      encounter(2, { location_id: 2, encounter_way_id: 3 }),
      encounter(3, { location_id: 1, version_group_id: 19, game_id: 31 }),
    ]);

    expect(
      rows.map((row) => [
        row.versionGroup.slug,
        row.location.name,
        row.way.slug,
        row.storyOrder,
        row.game?.slug ?? null,
      ]),
    ).toEqual([
      ["swsh", "Route 2", "fishing", 1, null],
      ["swsh", "Route 1", "walking", 2, null],
      ["swsh-ioa", "Route 1", "walking", 1, "sword"],
    ]);
  });

  it("drops a row whose place, placement, way or game is unknown", () => {
    const rows = build([
      encounter(1, { location_id: 9 }),
      encounter(2, { location_id: 1, version_group_id: 21 }),
      encounter(3, { encounter_way_id: 9 }),
      encounter(4, { game_id: 99 }),
      encounter(5, {}),
    ]);

    expect(rows.map((row) => row.encounter.id)).toEqual([5]);
  });
});

describe("getFormEncountersInVersionGroup", () => {
  const rows = build([
    encounter(1, { form_id: 2500 }),
    encounter(2, { form_id: 2501, location_id: 2 }),
    encounter(3, { form_id: 2500, version_group_id: 19, game_id: 31 }),
    encounter(4, { form_id: 2500, version_group_id: 21 }),
  ]);
  const generation = { encounters: rows } as PokemonGenerationDetail;
  const scope: PokemonDetailVersionGroupScope = {
    expansions: [isleOfArmor],
    games: [sword],
    versionGroup: swsh,
  };

  it("keeps the form's rows in the group and its expansions, not another group's", () => {
    const form = { form: { id: 2500 } } as PokemonGenerationFormSummary;

    expect(
      getFormEncountersInVersionGroup(generation, scope, form).map(
        (row) => row.encounter.id,
      ),
    ).toEqual([1, 3]);
  });

  it("keeps every form's rows when no form is asked for", () => {
    expect(
      getFormEncountersInVersionGroup(generation, scope, null).map(
        (row) => row.encounter.id,
      ),
    ).toEqual([2, 1, 3]);
  });

  it("has nothing for a form with no rows of its own", () => {
    const form = { form: { id: 2502 } } as PokemonGenerationFormSummary;

    expect(getFormEncountersInVersionGroup(generation, scope, form)).toEqual(
      [],
    );
  });
});
