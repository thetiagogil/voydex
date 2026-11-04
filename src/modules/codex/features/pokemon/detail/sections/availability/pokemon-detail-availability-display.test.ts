import { describe, expect, it } from "vitest";

import { getPokemonDetailWhereToFindRows } from "@/modules/codex/features/pokemon/detail/sections/availability/pokemon-detail-availability-display";
import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types";
import type {
  EncounterWay,
  Game,
  Location,
  PokemonEncounter,
  PokemonEncounterSummary,
  VersionGroup,
} from "@/modules/reference/types";

const versionGroup = (
  id: number,
  slug: string,
  name: string,
  parentId: number | null = null,
) =>
  ({
    generation_id: 8,
    id,
    name,
    parent_version_group_id: parentId,
    slug,
    sort_order: id,
  }) as VersionGroup;

const game = (id: number, slug: string, name: string) =>
  ({
    generation_id: 8,
    id,
    name,
    slug,
    sort_order: id,
    version_group_id: 18,
  }) as Game;

const swsh = versionGroup(18, "swsh", "Sword / Shield");
const isleOfArmor = versionGroup(19, "swsh-ioa", "The Isle of Armor", 18);
const sword = game(31, "sword", "Pokémon Sword");
const shield = game(32, "shield", "Pokémon Shield");
const scope: PokemonDetailVersionGroupScope = {
  expansions: [isleOfArmor],
  games: [sword, shield],
  versionGroup: swsh,
};

const place = (id: number, name: string) =>
  ({ id, name, region_id: 8, slug: `galar-${id}` }) as Location;
const way = (id: number, slug: string, name: string) =>
  ({ id, name, slug, sort_order: id }) as EncounterWay;
const walking = way(1, "walking", "Walking");
const fishing = way(3, "fishing", "Fishing");
const raid = way(19, "raid", "Raid dens");

const met = (
  id: number,
  location: Location,
  encounterWay: EncounterWay,
  storyOrder: number,
  levels: [number | null, number | null],
  options: {
    condition?: string;
    game?: Game | null;
    group?: VersionGroup;
  } = {},
): PokemonEncounterSummary => ({
  encounter: {
    condition: options.condition ?? null,
    encounter_way_id: encounterWay.id,
    form_id: 2500,
    game_id: options.game?.id ?? null,
    id,
    level_max: levels[1],
    level_min: levels[0],
    location_id: location.id,
    species_id: 25,
    version_group_id: (options.group ?? swsh).id,
  } as PokemonEncounter,
  game: options.game ?? null,
  location,
  storyOrder,
  versionGroup: options.group ?? swsh,
  way: encounterWay,
});

const route4 = place(4, "Route 4");
const route1 = place(1, "Route 1");
const slumberingWeald = place(9, "Slumbering Weald");
const fieldsOfHonor = place(40, "Fields of Honor");

describe("getPokemonDetailWhereToFindRows places", () => {
  it("lists each game's places in story order, every way of a place on one line", () => {
    const rows = getPokemonDetailWhereToFindRows({
      availability: [],
      encounters: [
        met(1, route4, walking, 5, [10, 14]),
        met(2, route4, fishing, 5, [20, 20]),
        met(3, route1, walking, 2, [2, 5], { condition: "Night" }),
        met(4, slumberingWeald, raid, 3, [15, 65], { game: shield }),
      ],
      listWhenAbsent: true,
      versionGroup: scope,
    });

    expect(rows[0]?.places).toEqual([
      { detail: "Walking, Lv 2–5 (night)", key: "place-1", label: "Route 1" },
      {
        detail: "Walking, Lv 10–14 · Fishing, Lv 20",
        key: "place-4",
        label: "Route 4",
      },
    ]);
    /* Shield's own row shows only in Shield. */
    expect(rows[1]?.places.map((row) => row.label)).toEqual([
      "Route 1",
      "Slumbering Weald",
      "Route 4",
    ]);
    expect(rows[1]?.places[1]?.detail).toBe("Raid dens, Lv 15–65");
  });

  it("adds an expansion's row for its places alone, marks its version exclusives, and reads a trade without levels", () => {
    const trade = way(24, "trade", "In-game trade");
    const rows = getPokemonDetailWhereToFindRows({
      availability: [],
      encounters: [
        met(5, fieldsOfHonor, trade, 1, [null, null], { group: isleOfArmor }),
        met(6, fieldsOfHonor, raid, 1, [15, 20], {
          game: sword,
          group: isleOfArmor,
        }),
      ],
      listWhenAbsent: true,
      versionGroup: scope,
    });

    expect(rows.map((row) => row.label)).toEqual([
      "Sword",
      "Shield",
      "The Isle of Armor",
    ]);
    expect(rows[2]?.places).toEqual([
      {
        detail: "In-game trade · Raid dens, Lv 15–20, Sword only",
        key: "place-40",
        label: "Fields of Honor",
      },
    ]);
    expect(rows[2]?.ways).toEqual([]);
  });

  it("keeps a game with no place and no way as missing", () => {
    const rows = getPokemonDetailWhereToFindRows({
      availability: [],
      listWhenAbsent: true,
      versionGroup: scope,
    });

    expect(rows.map((row) => [row.places.length, row.ways.length])).toEqual([
      [0, 0],
      [0, 0],
    ]);
  });
});
