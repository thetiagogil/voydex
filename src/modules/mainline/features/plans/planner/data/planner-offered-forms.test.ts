import { describe, expect, it } from "vitest";

import {
  getOfferedFormIdsBySpecies,
  listPlannerPokedexes,
  placePlannerExtras,
  placePlannerSpecies,
} from "./planner-offered-forms";

/* Articuno in Sword / Shield with The Crown Tundra: both birds are there. */
const forms = [
  { form_order: 1, id: 14400, is_default: true, species_id: 144 },
  { form_order: 2, id: 14401, is_default: false, species_id: 144 },
  /* Vivillon and its Meadow Pattern (cosmetic), and Rotom with a form. */
  { form_order: 1, id: 66600, is_default: true, species_id: 666 },
  { form_order: 2, id: 66601, is_default: false, species_id: 666 },
  { form_order: 1, id: 47900, is_default: true, species_id: 479 },
  { form_order: 2, id: 47901, is_default: false, species_id: 479 },
];
const formClassById = new Map<number, "form" | "variant">([
  [14401, "variant"],
  [66601, "variant"],
  [47901, "form"],
]);

const offered = (
  availableFormIds: number[],
  displayFormIdBySpecies: [number, number][] = [],
) =>
  getOfferedFormIdsBySpecies({
    availableFormIds: new Set(availableFormIds),
    cosmeticFormIds: new Set([66601]),
    displayFormIdBySpecies: new Map(displayFormIdBySpecies),
    formClassById,
    forms,
  });

describe("getOfferedFormIdsBySpecies", () => {
  it("offers the Pokédex form, then each variant the family has", () => {
    expect(offered([14400, 14401]).get(144)).toEqual([14400, 14401]);
  });

  it("offers only the Pokédex form where the family has no other variant", () => {
    expect(offered([14400]).get(144)).toEqual([14400]);
    expect(offered([]).get(144)).toEqual([14400]);
  });

  it("puts the Pokédex's own form first, and the default beside it when the family has it", () => {
    expect(offered([14400, 14401], [[144, 14401]]).get(144)).toEqual([
      14401, 14400,
    ]);
    expect(offered([14401], [[144, 14401]]).get(144)).toEqual([14401]);
  });

  it("leads with the variant where the family has no default form (Hisuian Typhlosion)", () => {
    expect(offered([14401]).get(144)).toEqual([14401]);
  });

  it("keeps cosmetic variants and switchable forms with their species", () => {
    const result = offered([66600, 66601, 47900, 47901]);

    expect(result.get(666)).toEqual([66600]);
    expect(result.get(479)).toEqual([47900]);
  });
});

describe("listPlannerPokedexes", () => {
  const pokedexes = [
    {
      id: 3,
      is_completion_relevant: true,
      pokedex_kind: "dlc",
      sort_order: 1,
      version_group_id: 20,
    },
    {
      id: 1,
      is_completion_relevant: true,
      pokedex_kind: "regional",
      sort_order: 2,
      version_group_id: 18,
    },
    {
      id: 2,
      is_completion_relevant: true,
      pokedex_kind: "national",
      sort_order: 1,
      version_group_id: 18,
    },
    {
      id: 4,
      is_completion_relevant: false,
      pokedex_kind: "local",
      sort_order: 3,
      version_group_id: 18,
    },
  ];

  it("lists the counting Pokédexes, base game first, never the National one", () => {
    expect(
      listPlannerPokedexes(pokedexes, [18, 19, 20]).map(
        (pokedex) => pokedex.id,
      ),
    ).toEqual([1, 3]);
  });

  it("falls back to every Pokédex when none counts", () => {
    expect(
      listPlannerPokedexes([pokedexes[2], pokedexes[3]], [18]).map(
        (pokedex) => pokedex.id,
      ),
    ).toEqual([2, 4]);
  });
});

describe("placePlannerSpecies", () => {
  it("places each species once, in its first Pokédex, with the form shown there", () => {
    const placed = placePlannerSpecies(
      [
        {
          id: 1,
          is_completion_relevant: true,
          pokedex_kind: "regional",
          sort_order: 1,
          version_group_id: 18,
        },
        {
          id: 3,
          is_completion_relevant: true,
          pokedex_kind: "dlc",
          sort_order: 1,
          version_group_id: 20,
        },
      ],
      [
        {
          display_form_id: null,
          pokedex_id: 3,
          pokedex_number: 2,
          species_id: 144,
        },
        {
          display_form_id: 5202,
          pokedex_id: 1,
          pokedex_number: 9,
          species_id: 52,
        },
        {
          display_form_id: 5201,
          pokedex_id: 3,
          pokedex_number: 1,
          species_id: 52,
        },
        {
          display_form_id: null,
          pokedex_id: 1,
          pokedex_number: 1,
          species_id: 810,
        },
      ],
    );

    expect([...placed.speciesIdsByPokedexId]).toEqual([
      [1, [810, 52]],
      [3, [144]],
    ]);
    expect([...placed.displayFormIdBySpecies]).toEqual([[52, 5202]]);
  });
});

describe("placePlannerExtras", () => {
  /*
   * Scarlet / Violet: no Pokédex has Articuno; the Indigo Disk's treats
   * bring the Kantonian one and the Galarian one only arrives by transfer.
   * Perrserker evolves from the gift Galarian Meowth, which the Paldea
   * Pokédex has; Ivysaur only evolves from an event-only Bulbasaur; Phione
   * only hatches from an event-only Manaphy.
   */
  const species = [
    { evolution_family_id: 1, id: 1, national_number: 1 },
    { evolution_family_id: 1, id: 2, national_number: 2 },
    { evolution_family_id: 52, id: 52, national_number: 52 },
    { evolution_family_id: 144, id: 144, national_number: 144 },
    { evolution_family_id: 243, id: 243, national_number: 243 },
    { evolution_family_id: 479, id: 479, national_number: 479 },
    { evolution_family_id: 489, id: 489, national_number: 489 },
    { evolution_family_id: 489, id: 490, national_number: 490 },
    { evolution_family_id: 52, id: 863, national_number: 863 },
  ];
  const extraForms = [
    { form_order: 1, id: 100, is_default: true, species_id: 1 },
    { form_order: 1, id: 200, is_default: true, species_id: 2 },
    { form_order: 1, id: 5200, is_default: true, species_id: 52 },
    { form_order: 2, id: 5202, is_default: false, species_id: 52 },
    { form_order: 1, id: 24300, is_default: true, species_id: 243 },
    { form_order: 1, id: 48900, is_default: true, species_id: 489 },
    { form_order: 1, id: 49000, is_default: true, species_id: 490 },
    { form_order: 1, id: 86300, is_default: true, species_id: 863 },
  ];
  const row = (
    species_id: number,
    form_id: number | null,
    target_version_group_id: number,
    availability_method_id: number,
  ) => ({
    availability_method_id,
    form_id,
    species_id,
    target_version_group_id,
  });
  const availability = [
    row(144, 14400, 23, 13),
    row(144, 14401, 23, 13),
    row(144, 14400, 25, 2),
    row(243, 24300, 25, 2),
    /* Rotom, species-wide, in the base game and again in the expansion. */
    row(479, null, 25, 2),
    row(479, null, 23, 1),
    row(52, 5202, 23, 4),
    row(863, 86300, 23, 7),
    row(1, 100, 23, 11),
    row(2, 200, 23, 7),
    row(490, 49000, 23, 11),
    row(489, 48900, 23, 8),
  ];
  const place = (placedSpeciesIds: number[] = [52]) =>
    placePlannerExtras({
      availability,
      cosmeticFormIds: new Set([66601]),
      derivedMethodIds: new Set([7, 8]),
      familyOrder: [23, 24, 25],
      formClassById: new Map([...formClassById, [5202, "variant"]]),
      forms: [...forms, ...extraForms],
      inGameMethodIds: new Set([1, 2, 4, 7, 8]),
      placedSpeciesIds: new Set(placedSpeciesIds),
      species,
    });

  it("places each unlisted species under the first group that brings it, by National number", () => {
    expect([...place().speciesIdsByVersionGroupId]).toEqual([
      [25, [144, 243]],
      [23, [479, 863]],
    ]);
  });

  it("leads with the form the placing group's rows name, and the default for a species-wide row", () => {
    const { displayFormIdBySpecies } = place();

    expect(displayFormIdBySpecies.get(144)).toBe(14400);
    expect(displayFormIdBySpecies.get(243)).toBe(24300);
    expect(displayFormIdBySpecies.get(479)).toBe(47900);
    expect(displayFormIdBySpecies.get(863)).toBe(86300);
  });

  it("keeps out what only evolves or hatches from a Pokémon the game never gives", () => {
    const placed = place().speciesIdsByVersionGroupId.get(23) ?? [];

    expect(placed).not.toContain(2);
    expect(placed).not.toContain(489);
  });

  it("leaves out species a Pokédex already places, and ones only transfer brings", () => {
    expect([...place([52, 144, 479, 863]).speciesIdsByVersionGroupId]).toEqual([
      [25, [243]],
    ]);
    expect(
      placePlannerExtras({
        availability: availability.filter(
          (entry) => entry.availability_method_id === 13,
        ),
        cosmeticFormIds: new Set(),
        derivedMethodIds: new Set([7, 8]),
        familyOrder: [23, 24, 25],
        formClassById,
        forms,
        inGameMethodIds: new Set([1, 2, 4, 7, 8]),
        placedSpeciesIds: new Set(),
        species,
      }).speciesIdsByVersionGroupId.size,
    ).toBe(0);
  });
});
