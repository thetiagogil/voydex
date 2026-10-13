import { describe, expect, it } from "vitest";

import type {
  MainlinePlayCollectibleDetailRow,
  MainlinePlayCollectibleGroupRow,
} from "../types";
import {
  buildMainlinePlayCollectiblesData,
  describeCollectibleWhereabouts,
  filterCollectibleEntries,
  getCollectibleAreaLevel,
  getCollectibleAreaSummaries,
  getCollectibleGroupCounts,
  groupCollectibleEntriesByArea,
  groupCollectibleEntriesByPlace,
} from "./collectibles-progress-model";

const groupRow = {
  id: 10,
  name: "Ominous Stakes",
  slug: "ominous-stakes",
  sort_order: 2,
  total_count: 3,
} as MainlinePlayCollectibleGroupRow;

const detailRow = (
  overrides: Partial<MainlinePlayCollectibleDetailRow> = {},
): MainlinePlayCollectibleDetailRow =>
  ({
    collected_at: null,
    collectible_entry_id: 101,
    collectible_entry_name: "Purple Stake 1",
    collectible_entry_slug: "purple-stake-1",
    collectible_entry_sort_order: 1,
    collectible_id: 10,
    collectible_name: "Ominous Stakes",
    collectible_slug: "ominous-stakes",
    collectible_type_id: 3,
    collectible_type_name: "Stakes",
    collectible_type_slug: "stakes",
    description: "Beside the cliff.",
    game_id: 1,
    is_collected: false,
    is_included_in_completion: true,
    is_required_for_completion: true,
    location_label: "South Province",
    play_id: "play-id",
    sub_location_label: "Area One",
    user_id: "user-id",
    version_group_id: 1,
    ...overrides,
  }) as MainlinePlayCollectibleDetailRow;

describe("collectibles progress model", () => {
  it("maps groups and entries in their curated order", () => {
    const data = buildMainlinePlayCollectiblesData({
      gameName: "Pokémon Scarlet",
      groupRows: [groupRow],
      rows: [
        detailRow({
          collectible_entry_id: 102,
          collectible_entry_name: "Purple Stake 2",
          collectible_entry_sort_order: 2,
        }),
        detailRow(),
      ],
    });

    expect(data.groups).toHaveLength(1);
    expect(data.groups[0]).toMatchObject({
      name: "Ominous Stakes",
      slug: "ominous-stakes",
      sortOrder: 2,
    });
    expect(data.groups[0].entries.map((entry) => entry.id)).toEqual([101, 102]);
  });

  it("filters by exclusive state, location, and searchable context", () => {
    const entries = buildMainlinePlayCollectiblesData({
      gameName: "Pokémon Scarlet",
      groupRows: [groupRow],
      rows: [
        detailRow(),
        detailRow({
          collectible_entry_id: 102,
          collectible_entry_name: "Purple Stake 2",
          collectible_entry_slug: "purple-stake-2",
          collectible_entry_sort_order: 2,
          location_label: "West Province",
          sub_location_label: "Area Two",
        }),
      ],
    }).groups[0].entries;
    const stateByEntryId = new Map([
      [101, true],
      [102, false],
    ]);

    expect(
      filterCollectibleEntries({
        area: "all",
        areaLevel: "location",
        entries,
        progressFilter: "collected",
        query: "",
        stateByEntryId,
      }).map((entry) => entry.id),
    ).toEqual([101]);
    expect(
      filterCollectibleEntries({
        area: "West Province",
        areaLevel: "location",
        entries,
        progressFilter: "missing",
        query: "area two",
        stateByEntryId,
      }).map((entry) => entry.id),
    ).toEqual([102]);
  });

  it("groups entries by location and reports live completion", () => {
    const group = buildMainlinePlayCollectiblesData({
      gameName: "Pokémon Scarlet",
      groupRows: [groupRow],
      rows: [
        detailRow({ is_collected: true }),
        detailRow({
          collectible_entry_id: 102,
          collectible_entry_name: "Purple Stake 2",
          collectible_entry_slug: "purple-stake-2",
          collectible_entry_sort_order: 2,
          location_label: null,
        }),
      ],
    }).groups[0];
    const stateByEntryId = new Map([[102, true]]);

    expect(getCollectibleGroupCounts({ group, stateByEntryId })).toEqual({
      collectedCount: 2,
      percentage: 100,
      remainingCount: 0,
      totalCount: 2,
    });
    expect(
      groupCollectibleEntriesByArea({
        areaLevel: getCollectibleAreaLevel(group.entries),
        entries: group.entries,
        sort: "canonical",
      }).map((area) => area.label),
    ).toEqual(["South Province", "Location not recorded"]);
  });

  it("splits an area into places and summarises each area", () => {
    const entries = buildMainlinePlayCollectiblesData({
      gameName: "Pokémon Scarlet",
      groupRows: [groupRow],
      rows: [
        detailRow({ is_collected: true }),
        detailRow({
          collectible_entry_id: 102,
          collectible_entry_name: "Purple Stake 2",
          collectible_entry_slug: "purple-stake-2",
          collectible_entry_sort_order: 2,
          sub_location_label: "Area Two",
        }),
        detailRow({
          collectible_entry_id: 103,
          collectible_entry_name: "Purple Stake 3",
          collectible_entry_slug: "purple-stake-3",
          collectible_entry_sort_order: 3,
          is_collected: true,
          location_label: "West Province",
          sub_location_label: null,
        }),
      ],
    }).groups[0].entries;
    const stateByEntryId = new Map<number, boolean>();
    const areaLevel = getCollectibleAreaLevel(entries);
    const [southProvince] = groupCollectibleEntriesByArea({
      areaLevel,
      entries,
      sort: "canonical",
    });

    expect(areaLevel).toBe("location");
    expect(southProvince.id).toBe("collectible-area-south-province");
    expect(
      groupCollectibleEntriesByPlace({ area: southProvince, areaLevel }).map(
        (place) => ({
          ids: place.entries.map((entry) => entry.id),
          label: place.label,
        }),
      ),
    ).toEqual([
      { ids: [101], label: "Area One" },
      { ids: [102], label: "Area Two" },
    ]);
    expect(
      getCollectibleAreaSummaries({
        areaLevel,
        entries,
        sort: "location",
        stateByEntryId,
      }).map(({ foundCount, isComplete, label }) => ({
        foundCount,
        isComplete,
        label,
      })),
    ).toEqual([
      { foundCount: 1, isComplete: false, label: "South Province" },
      { foundCount: 1, isComplete: true, label: "West Province" },
    ]);
  });

  it("uses places as areas when one location holds every entry", () => {
    const entries = buildMainlinePlayCollectiblesData({
      gameName: "Pokémon Sword",
      groupRows: [groupRow],
      rows: [
        detailRow({
          location_label: "Isle of Armor",
          sub_location_label: "Fields of Honor",
        }),
        detailRow({
          collectible_entry_id: 102,
          collectible_entry_sort_order: 2,
          location_label: "Isle of Armor",
          sub_location_label: "Soothing Wetlands",
        }),
        detailRow({
          collectible_entry_id: 103,
          collectible_entry_sort_order: 3,
          location_label: "Isle of Armor",
          sub_location_label: null,
        }),
      ],
    }).groups[0].entries;
    const areaLevel = getCollectibleAreaLevel(entries);
    const areas = groupCollectibleEntriesByArea({
      areaLevel,
      entries,
      sort: "canonical",
    });

    expect(areaLevel).toBe("place");
    expect(areas.map((area) => area.label)).toEqual([
      "Fields of Honor",
      "Soothing Wetlands",
      "Isle of Armor",
    ]);
    expect(
      groupCollectibleEntriesByPlace({ area: areas[0], areaLevel }),
    ).toEqual([
      { entries: areas[0].entries, id: `${areas[0].id}-place`, label: null },
    ]);
    expect(
      filterCollectibleEntries({
        area: "Soothing Wetlands",
        areaLevel,
        entries,
        progressFilter: "all",
        query: "",
        stateByEntryId: new Map(),
      }).map((entry) => entry.id),
    ).toEqual([102]);
  });

  it("says where a collectible hides in one sentence", () => {
    const entry = buildMainlinePlayCollectiblesData({
      gameName: "Pokémon Scarlet",
      groupRows: [groupRow],
      rows: [detailRow()],
    }).groups[0].entries[0];
    const inLocation = (locationLabel: string | null, id: number) => ({
      ...entry,
      id,
      locationLabel,
    });

    expect(
      describeCollectibleWhereabouts({
        entries: [inLocation("Isle of Armor", 1), inLocation(null, 2)],
        gameName: "Pokémon Sword",
      }),
    ).toBe("Hidden around Isle of Armor");
    expect(
      describeCollectibleWhereabouts({
        entries: [inLocation("North", 1), inLocation("South", 2)],
        gameName: "Pokémon Scarlet",
      }),
    ).toBe("Hidden around North and South");
    expect(
      describeCollectibleWhereabouts({
        entries: ["A", "B", "C", "D"].map(inLocation),
        gameName: "Pokémon Sun",
      }),
    ).toBe("Hidden across 4 areas of Pokémon Sun");
    expect(
      describeCollectibleWhereabouts({
        entries: [inLocation(null, 1)],
        gameName: "Pokémon Legends: Arceus",
      }),
    ).toBe("Hidden around Pokémon Legends: Arceus");
  });
});
