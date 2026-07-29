import { describe, expect, it } from "vitest";

import type {
  MainlinePlayCollectibleDetailRow,
  MainlinePlayCollectibleGroupRow,
} from "../types";
import {
  buildMainlinePlayCollectiblesData,
  filterCollectibleEntries,
  getCollectibleGroupCounts,
  groupCollectibleEntriesByLocation,
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
      sortOrder: 2,
      totalCount: 3,
      typeName: "Stakes",
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
        entries,
        location: "all",
        progressFilter: "collected",
        query: "",
        stateByEntryId,
      }).map((entry) => entry.id),
    ).toEqual([101]);
    expect(
      filterCollectibleEntries({
        entries,
        location: "West Province",
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
      groupCollectibleEntriesByLocation({
        entries: group.entries,
        sort: "canonical",
      }).map((section) => section.label),
    ).toEqual(["South Province", "Location not recorded"]);
  });
});
