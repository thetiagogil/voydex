import { describe, expect, it } from "vitest";

import {
  buildPokedexPageData,
  getGenerationStarts,
} from "@/modules/codex/features/pokemon/browse/data/pokedex-page-mappers";
import type {
  Game,
  Generation,
  PokemonSpecies,
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

describe("buildPokedexPageData", () => {
  it("gives each species the category its flags record", () => {
    const species = (
      id: number,
      flags: Partial<
        Pick<PokemonSpecies, "is_baby" | "is_legendary" | "is_mythical">
      >,
    ) =>
      ({
        id,
        introduced_generation_id: 1,
        is_baby: false,
        is_legendary: false,
        is_mythical: false,
        national_number: id,
        slug: `species-${id}`,
        ...flags,
      }) as PokemonSpecies;

    const data = buildPokedexPageData({
      attributes: [],
      defaultForms: [],
      games: [
        { id: 1, region_id: 1, sort_order: 1, version_group_id: 1 },
      ] as Game[],
      generations: [{ id: 1, slug: "generation-1" }] as Generation[],
      regions: [{ id: 1, name: "Kanto" }] as Region[],
      species: [
        species(1, {}),
        species(150, { is_legendary: true }),
        species(151, { is_mythical: true }),
        species(172, { is_baby: true }),
      ],
      types: [],
      versionGroups: [
        {
          generation_id: 1,
          id: 1,
          parent_version_group_id: null,
          slug: "rb",
          sort_order: 1,
        },
      ] as VersionGroup[],
    });

    expect(data.pokemon.map((pokemon) => pokemon.category)).toEqual([
      "regular",
      "legendary",
      "mythical",
      "baby",
    ]);
  });
});
