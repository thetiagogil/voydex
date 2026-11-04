import { describe, expect, it } from "vitest";

import { selectEvolutionEdgesInForce } from "./evolution-scope";

const edge = (
  id: string,
  fields: Partial<{
    from_form_id: number;
    introduced_generation_id: number;
    to_form_id: number;
    to_species_id: number;
    version_group_id: number | null;
  }> = {},
) => ({
  from_form_id: 8200,
  id,
  introduced_generation_id: 4,
  to_form_id: 46200,
  to_species_id: 462,
  version_group_id: null,
  ...fields,
});

/* Magneton -> Magnezone, as seeded: a place per generation, then the stone. */
const magneton = [
  edge("mt-coronet", { introduced_generation_id: 4 }),
  edge("chargestone-cave", { introduced_generation_id: 5 }),
  edge("kalos-route-13", { introduced_generation_id: 6, version_group_id: 13 }),
  edge("new-mauville", { introduced_generation_id: 6, version_group_id: 14 }),
  edge("thunder-stone", { introduced_generation_id: 8 }),
  edge("bdsp-mt-coronet", {
    introduced_generation_id: 8,
    version_group_id: 21,
  }),
  edge("bdsp-thunder-stone", {
    introduced_generation_id: 8,
    version_group_id: 21,
  }),
];

const ids = (edges: { id: string }[]) => edges.map((item) => item.id);

describe("selectEvolutionEdgesInForce", () => {
  it("keeps the newest generation's rows and leaves older places behind", () => {
    expect(
      ids(
        selectEvolutionEdgesInForce({
          edges: magneton,
          generationOrder: 8,
          versionGroupIds: [18],
        }),
      ),
    ).toEqual(["thunder-stone"]);
    expect(
      ids(
        selectEvolutionEdgesInForce({
          edges: magneton,
          generationOrder: 5,
          versionGroupIds: [11],
        }),
      ),
    ).toEqual(["chargestone-cave"]);
  });

  it("reads a later generation's rows as its own (Scarlet reads Generation VIII)", () => {
    expect(
      ids(
        selectEvolutionEdgesInForce({
          edges: magneton,
          generationOrder: 9,
          versionGroupIds: [23, 24, 25],
        }),
      ),
    ).toEqual(["thunder-stone"]);
  });

  it("lets a version group's rows replace the generation's for that pair", () => {
    expect(
      ids(
        selectEvolutionEdgesInForce({
          edges: magneton,
          generationOrder: 8,
          versionGroupIds: [21],
        }),
      ),
    ).toEqual(["bdsp-mt-coronet", "bdsp-thunder-stone"]);
    expect(
      ids(
        selectEvolutionEdgesInForce({
          edges: magneton,
          generationOrder: 6,
          versionGroupIds: [13],
        }),
      ),
    ).toEqual(["kalos-route-13"]);
  });

  it("shows nothing for a game whose generation has only other games' rows", () => {
    /* HeartGold / SoulSilver have no magnetic field: the Generation IV rows are Sinnoh's. */
    const sinnohOnly = [
      edge("dp-mt-coronet", {
        introduced_generation_id: 4,
        version_group_id: 8,
      }),
      edge("pt-mt-coronet", {
        introduced_generation_id: 4,
        version_group_id: 9,
      }),
    ];
    expect(
      selectEvolutionEdgesInForce({
        edges: sinnohOnly,
        generationOrder: 4,
        versionGroupIds: [10],
      }),
    ).toEqual([]);
  });

  it("replaces at the species, so a regional target hides the other form's edge", () => {
    const koffing = [
      edge("weezing", {
        from_form_id: 10900,
        introduced_generation_id: 1,
        to_form_id: 11000,
        to_species_id: 110,
      }),
      edge("galarian-weezing", {
        from_form_id: 10900,
        introduced_generation_id: 8,
        to_form_id: 11001,
        to_species_id: 110,
        version_group_id: 18,
      }),
    ];
    expect(
      ids(
        selectEvolutionEdgesInForce({
          edges: koffing,
          generationOrder: 8,
          versionGroupIds: [18, 19, 20],
        }),
      ),
    ).toEqual(["galarian-weezing"]);
    expect(
      ids(
        selectEvolutionEdgesInForce({
          edges: koffing,
          generationOrder: 8,
          versionGroupIds: [21],
        }),
      ),
    ).toEqual(["weezing"]);
  });

  it("keeps other targets of the same Pokémon untouched by a scoped pair", () => {
    const eevee = [
      edge("leaf-stone", {
        from_form_id: 13300,
        introduced_generation_id: 8,
        to_form_id: 47000,
        to_species_id: 470,
      }),
      edge("the-heartwood", {
        from_form_id: 13300,
        introduced_generation_id: 8,
        to_form_id: 47000,
        to_species_id: 470,
        version_group_id: 22,
      }),
      edge("water-stone", {
        from_form_id: 13300,
        introduced_generation_id: 1,
        to_form_id: 13400,
        to_species_id: 134,
      }),
    ];
    expect(
      ids(
        selectEvolutionEdgesInForce({
          edges: eevee,
          generationOrder: 8,
          versionGroupIds: [22],
        }),
      ),
    ).toEqual(["the-heartwood", "water-stone"]);
  });

  it("drops an edge into a form the game never hands out", () => {
    const eevee = [
      edge("espeon", {
        from_form_id: 13300,
        introduced_generation_id: 2,
        to_form_id: 19600,
        to_species_id: 196,
      }),
      edge("vaporeon", {
        from_form_id: 13300,
        introduced_generation_id: 1,
        to_form_id: 13400,
        to_species_id: 134,
      }),
    ];
    expect(
      ids(
        selectEvolutionEdgesInForce({
          availableFormIds: new Set([13400]),
          edges: eevee,
          generationOrder: 7,
          versionGroupIds: [17],
        }),
      ),
    ).toEqual(["vaporeon"]);
  });

  it("reads generation order through the callback when ids are not in order", () => {
    const edges = [
      edge("old", { introduced_generation_id: 90 }),
      edge("new", { introduced_generation_id: 50 }),
    ];
    const order = { 90: 1, 50: 2 } as Record<number, number>;
    expect(
      ids(
        selectEvolutionEdgesInForce({
          edges,
          generationOrder: 2,
          getGenerationOrder: (item) => order[item.introduced_generation_id],
          versionGroupIds: [3],
        }),
      ),
    ).toEqual(["new"]);
  });
});
