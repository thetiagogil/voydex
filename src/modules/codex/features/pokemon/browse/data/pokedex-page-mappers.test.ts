import { describe, expect, it } from "vitest";

import { getGenerationStarts } from "@/modules/codex/features/pokemon/browse/data/pokedex-page-mappers";
import type {
  Game,
  Generation,
  Region,
  VersionGroup,
} from "@/modules/reference/types";

describe("getGenerationStarts", () => {
  it("opens each generation in its first base group and names its region", () => {
    const starts = getGenerationStarts({
      games: [
        { id: 7, region_id: 3, sort_order: 1, version_group_id: 5 },
        { id: 9, region_id: 1, sort_order: 1, version_group_id: 6 },
      ] as Game[],
      generations: [{ id: 3, slug: "generation-3" }] as Generation[],
      regions: [
        { id: 1, name: "Kanto" },
        { id: 3, name: "Hoenn" },
      ] as Region[],
      versionGroups: [
        {
          generation_id: 3,
          id: 6,
          parent_version_group_id: null,
          slug: "frlg",
          sort_order: 2,
        },
        {
          generation_id: 3,
          id: 5,
          parent_version_group_id: null,
          slug: "rs",
          sort_order: 1,
        },
      ] as VersionGroup[],
    });

    expect(starts.get(3)).toEqual({
      regionName: "Hoenn",
      versionGroupSlug: "rs",
    });
  });
});
