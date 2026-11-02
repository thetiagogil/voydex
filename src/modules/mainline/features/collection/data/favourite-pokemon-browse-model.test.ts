import { describe, expect, it } from "vitest";

import type { FavouritePokemon } from "@/modules/mainline/features/collection/data/favourite-pokemon-model";
import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import type { SpeciesGeneration } from "@/modules/reference/features/pokemon/data/species-generations";

import {
  countActiveFavouriteFilters,
  countFavouriteKinds,
  defaultFavouriteFilters,
  filterAndSortFavourites,
  hasActiveFavouriteFilters,
} from "./favourite-pokemon-browse-model";

const generations: SpeciesGeneration[] = [
  {
    firstNumber: 1,
    id: 10,
    lastNumber: 151,
    name: "Generation I",
    number: 1,
    speciesCount: 151,
  },
  {
    firstNumber: 152,
    id: 20,
    lastNumber: 251,
    name: "Generation II",
    number: 2,
    speciesCount: 100,
  },
];

/* Only what the sort and filters read. */
const favourite = (
  name: string,
  nationalNumber: number,
  favouritedAt: string,
  plays = 0,
  type = "normal",
): FavouritePokemon => ({
  codexHref: `/codex/pokemon/${name.toLowerCase()}`,
  favouritedAt,
  formId: nationalNumber * 100,
  imageUrl: null,
  name,
  nationalNumber,
  owned: plays
    ? ({
        members: Array.from({ length: plays }, () => ({})),
        playIds: Array.from({ length: plays }, (_, index) => `play-${index}`),
      } as unknown as TrainerPokemonEntry)
    : null,
  speciesId: nationalNumber,
  types: [{ name: type, slug: type }],
});

const favourites = [
  favourite("Pikachu", 25, "2026-11-01T00:00:00Z", 2, "electric"),
  favourite("Togepi", 175, "2026-11-03T00:00:00Z", 0, "fairy"),
  favourite("Eevee", 133, "2026-11-02T00:00:00Z", 3),
  favourite("Gengar", 94, "2026-10-30T00:00:00Z", 0, "ghost"),
];

const names = (list: FavouritePokemon[]) => list.map((each) => each.name);

describe("filterAndSortFavourites", () => {
  it("opens on the newest heart", () => {
    expect(
      names(filterAndSortFavourites(favourites, defaultFavouriteFilters)),
    ).toEqual(["Togepi", "Eevee", "Pikachu", "Gengar"]);
  });

  it("sorts by Pokédex number, or Most used with the unused ones last", () => {
    expect(
      names(
        filterAndSortFavourites(favourites, {
          ...defaultFavouriteFilters,
          sort: "dex",
        }),
      ),
    ).toEqual(["Pikachu", "Gengar", "Eevee", "Togepi"]);
    expect(
      names(
        filterAndSortFavourites(favourites, {
          ...defaultFavouriteFilters,
          sort: "used",
        }),
      ),
    ).toEqual(["Eevee", "Pikachu", "Gengar", "Togepi"]);
  });

  it("shows the ones on your teams, or the ones not yet", () => {
    expect(
      names(
        filterAndSortFavourites(favourites, {
          ...defaultFavouriteFilters,
          kind: "owned",
        }),
      ),
    ).toEqual(["Eevee", "Pikachu"]);
    expect(
      names(
        filterAndSortFavourites(favourites, {
          ...defaultFavouriteFilters,
          kind: "waiting",
        }),
      ),
    ).toEqual(["Togepi", "Gengar"]);
  });

  it("filters by generation, type and name", () => {
    const by = (filters: Partial<typeof defaultFavouriteFilters>) =>
      names(
        filterAndSortFavourites(
          favourites,
          { ...defaultFavouriteFilters, ...filters },
          generations,
        ),
      );

    expect(by({ generation: "20" })).toEqual(["Togepi"]);
    expect(by({ type: "ghost" })).toEqual(["Gengar"]);
    expect(by({ query: "  EEV " })).toEqual(["Eevee"]);
  });
});

describe("favourite filter counts", () => {
  it("counts each Show choice", () => {
    expect(countFavouriteKinds(favourites)).toEqual({
      all: 4,
      owned: 2,
      waiting: 2,
    });
  });

  it("counts the filters set beyond search and sort, and knows a search is a filter", () => {
    expect(countActiveFavouriteFilters(defaultFavouriteFilters)).toBe(0);
    expect(
      countActiveFavouriteFilters({
        ...defaultFavouriteFilters,
        generation: "10",
        kind: "owned",
        sort: "dex",
        type: "fire",
      }),
    ).toBe(3);
    expect(hasActiveFavouriteFilters(defaultFavouriteFilters)).toBe(false);
    expect(
      hasActiveFavouriteFilters({ ...defaultFavouriteFilters, query: "pik" }),
    ).toBe(true);
    expect(
      hasActiveFavouriteFilters({ ...defaultFavouriteFilters, sort: "dex" }),
    ).toBe(false);
  });
});
