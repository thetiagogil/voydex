import { describe, expect, it } from "vitest";

import {
  buildPokemonChoices,
  type PokemonChoiceSourceRows,
} from "./pokemon-choices";

const rows = (addableVariantFormIds: number[]): PokemonChoiceSourceRows => ({
  addableVariantFormIds: new Set(addableVariantFormIds),
  attributes: [5900, 5901, 6000].map((formId) => ({
    form_id: formId,
    generation_start_id: 1,
    primary_type_id: 10,
    secondary_type_id: null,
  })),
  entries: [
    {
      display_form_id: 5900,
      pokedex_id: 1,
      pokedex_kind: "regional",
      pokedex_number: 59,
      species_id: 59,
      species_name: "Arcanine",
      species_slug: "arcanine",
    },
    {
      display_form_id: null,
      pokedex_id: 1,
      pokedex_kind: "regional",
      pokedex_number: 60,
      species_id: 60,
      species_name: "Poliwag",
      species_slug: "poliwag",
    },
  ],
  forms: [
    {
      form_order: 1,
      id: 5900,
      is_default: true,
      name: "Arcanine",
      slug: "arcanine",
      species_id: 59,
    },
    {
      form_order: 2,
      id: 5901,
      is_default: false,
      name: "Hisuian Arcanine",
      slug: "hisuian-arcanine",
      species_id: 59,
    },
    {
      form_order: 1,
      id: 6000,
      is_default: true,
      name: "Poliwag",
      slug: "poliwag",
      species_id: 60,
    },
  ],
  types: [{ id: 10, name: "Fire", slug: "fire" }],
});

describe("buildPokemonChoices", () => {
  it("lists a variant the game has beside its species, same number", () => {
    expect(
      buildPokemonChoices(rows([5900, 5901])).map((choice) => [
        choice.number,
        choice.formSlug,
      ]),
    ).toEqual([
      [59, "arcanine"],
      [59, "hisuian-arcanine"],
      [60, "poliwag"],
    ]);
  });

  it("leaves out a variant the game doesn't have", () => {
    expect(
      buildPokemonChoices(rows([])).map((choice) => choice.formSlug),
    ).toEqual(["arcanine", "poliwag"]);
  });
});

describe("buildPokemonChoices patterns", () => {
  it("makes a look-only variant a pattern of its species' choice", () => {
    const base = rows([5900, 5901]);
    const [arcanine, ...rest] = buildPokemonChoices({
      ...base,
      cosmeticFormIds: new Set([5901]),
    });

    expect(rest.map((choice) => choice.formSlug)).toEqual(["poliwag"]);
    expect(arcanine?.patterns.map((choice) => choice.formSlug)).toEqual([
      "arcanine",
      "hisuian-arcanine",
    ]);
    expect(arcanine?.patterns.every((choice) => !choice.patterns.length)).toBe(
      true,
    );
  });
});
