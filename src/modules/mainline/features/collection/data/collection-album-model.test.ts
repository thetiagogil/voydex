import { describe, expect, it } from "vitest";

import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import type { SpeciesGeneration } from "@/modules/reference/features/pokemon/data/species-generations";

import { buildCollectionAlbumPages } from "./collection-album-model";

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

/* Only what the pages read. */
const entry = (name: string, nationalNumber: number | null) =>
  ({ name, nationalNumber }) as TrainerPokemonEntry;

const pikachu = entry("Pikachu", 25);
const eevee = entry("Eevee", 133);
const togepi = entry("Togepi", 175);
const stranger = entry("Stranger", null);
const entries = [pikachu, eevee, togepi, stranger];

const names = (pages: ReturnType<typeof buildCollectionAlbumPages>) =>
  pages.map((page) => [
    page.label,
    page.summary,
    page.entries.map((each) => each.name),
  ]);

describe("buildCollectionAlbumPages", () => {
  it("pages the album by generation, in the shown order, counting the whole Collection", () => {
    const pages = buildCollectionAlbumPages({
      entries,
      filtered: false,
      generations,
      shown: [togepi, eevee, pikachu, stranger],
    });

    expect(names(pages)).toEqual([
      ["Generation I", "2 of 151 joined your teams", ["Eevee", "Pikachu"]],
      ["Generation II", "1 of 100 joined your teams", ["Togepi"]],
      ["Other", "1 joined your teams", ["Stranger"]],
    ]);
  });

  it("keeps empty pages without filters and drops them when filtered", () => {
    const shown = [togepi];

    expect(
      names(
        buildCollectionAlbumPages({
          entries: [togepi],
          filtered: false,
          generations,
          shown,
        }),
      ),
    ).toEqual([
      ["Generation I", "0 of 151 joined your teams", []],
      ["Generation II", "1 of 100 joined your teams", ["Togepi"]],
    ]);
    expect(
      names(
        buildCollectionAlbumPages({
          entries,
          filtered: true,
          generations,
          shown,
        }),
      ),
    ).toEqual([["Generation II", "1 of 100 joined your teams", ["Togepi"]]]);
  });
});
