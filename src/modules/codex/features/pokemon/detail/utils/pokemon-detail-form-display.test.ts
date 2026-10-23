import { describe, expect, it } from "vitest";

import type { PokemonDetailGenerationForm } from "@/modules/codex/features/pokemon/detail/types";
import type { PokemonForm } from "@/modules/reference/types";

import { getPokemonDetailFormOptions } from "./pokemon-detail-form-display";

const toForm = (
  id: number,
  slug: string,
  name: string,
): PokemonDetailGenerationForm => ({
  form: {
    attributes: null,
    form: { id, is_default: id % 100 === 0, name, slug } as PokemonForm,
    introducedGeneration: null,
    typePair: { primaryType: null, secondaryType: null },
  },
  versionGroupSlug: "sword-shield",
});

const meowth = [
  toForm(5200, "meowth", "Meowth"),
  toForm(5203, "gigantamax-meowth", "Gigantamax Meowth"),
  toForm(5201, "alolan-meowth", "Alolan Meowth"),
  toForm(5202, "galarian-meowth", "Galarian Meowth"),
];

describe("getPokemonDetailFormOptions", () => {
  it("groups variants, then battle forms with their mechanic", () => {
    const options = getPokemonDetailFormOptions({
      battleForms: [
        {
          baseFormIds: [5200],
          formId: 5203,
          mechanic: "dynamax",
          unlockItemVersionGroupIds: null,
        },
      ],
      formClassById: {
        5200: "variant",
        5201: "variant",
        5202: "variant",
        5203: "battle",
      },
      forms: meowth,
      speciesName: "Meowth",
      speciesSlug: "meowth",
    });

    expect(
      options.map(({ description, group, label }) => [
        group,
        label,
        description,
      ]),
    ).toEqual([
      ["Variants", "Meowth", undefined],
      ["Variants", "Alolan Meowth", undefined],
      ["Variants", "Galarian Meowth", undefined],
      ["Battle forms", "Gigantamax Meowth", undefined],
    ]);
  });

  it("leaves a default with only battle forms under no heading", () => {
    const options = getPokemonDetailFormOptions({
      battleForms: [
        {
          baseFormIds: [600],
          formId: 601,
          mechanic: "mega-evolution",
          unlockItemVersionGroupIds: null,
        },
      ],
      formClassById: { 600: null, 601: "battle" },
      forms: [
        toForm(600, "charizard", "Charizard"),
        toForm(601, "mega-charizard-x", "Mega Charizard X"),
      ],
      speciesName: "Charizard",
      speciesSlug: "charizard",
    });

    expect(
      options.map(({ description, group }) => [group, description]),
    ).toEqual([
      [undefined, undefined],
      ["Battle forms", "Mega Evolution"],
    ]);
  });
});
