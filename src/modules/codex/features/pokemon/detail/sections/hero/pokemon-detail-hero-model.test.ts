import { describe, expect, it } from "vitest";

import type { PokemonDetailStat } from "@/modules/codex/features/pokemon/detail/sections/stats/pokemon-detail-stats-model";
import type {
  PokemonGenerationFormSummary,
  PokemonSpecies,
} from "@/modules/reference/types";

import {
  getPokemonDetailHeroEyebrow,
  getPokemonDetailHeroSentence,
  type PokemonDetailHeroSentencePart,
} from "./pokemon-detail-hero-model";

const toText = (parts: PokemonDetailHeroSentencePart[] | null) => {
  return parts?.map((part) => part.text).join("") ?? null;
};

const getPending = (parts: PokemonDetailHeroSentencePart[]) => {
  return parts.filter((part) => part.pending).map((part) => part.text);
};

const getEmphasis = (parts: PokemonDetailHeroSentencePart[] | null) => {
  return parts?.filter((part) => part.emphasis).map((part) => part.text);
};

const createForm = ({
  height = null,
  weight = null,
}: {
  height?: number | null;
  weight?: number | null;
} = {}) => {
  return {
    attributes: null,
    form: { height_decimeters: height, weight_hectograms: weight },
    introducedGeneration: { name: "Generation I" },
    typePair: { primaryType: null, secondaryType: null },
  } as unknown as PokemonGenerationFormSummary;
};

const createStats = (values: number[]): PokemonDetailStat[] => {
  const names = ["HP", "Attack", "Defense", "Special Attack", "Speed"];

  return values.map((value, index) => ({
    key: "base_hp",
    label: names[index],
    name: names[index],
    value,
  }));
};

const species = {
  is_baby: false,
  is_legendary: false,
  is_mythical: false,
  national_number: 59,
} as PokemonSpecies;

describe("Pokémon detail hero model", () => {
  it("reads the number, the category and the generation it arrived in", () => {
    const eyebrow = getPokemonDetailHeroEyebrow({
      form: createForm(),
      species,
    });

    expect(eyebrow.map((part) => part.text)).toEqual([
      "#0059",
      "Category",
      "since Generation I",
    ]);
    expect(getPending(eyebrow)).toEqual(["Category"]);

    const mythical = getPokemonDetailHeroEyebrow({
      form: null,
      species: { ...species, is_mythical: true },
    });

    expect(mythical.map((part) => part.text)).toEqual([
      "#0059",
      "Mythical Pokémon",
    ]);
    expect(getPending(mythical)).toEqual([]);
  });

  it("leads with the size when it is recorded, as v3 does", () => {
    const sentence = getPokemonDetailHeroSentence({
      form: createForm({ height: 19, weight: 1550 }),
      stats: createStats([90, 110, 80, 100, 95]),
    });

    expect(toText(sentence)).toBe(
      "1.9 m tall and 155.0 kg, with Attack its best stat at 110.",
    );
    expect(getEmphasis(sentence)).toEqual([
      "1.9 m",
      "155.0 kg",
      "Attack",
      "110",
    ]);
  });

  it("keeps a pending piece where the size isn't recorded", () => {
    const sentence = getPokemonDetailHeroSentence({
      form: createForm(),
      stats: createStats([90, 110, 80, 100, 95]),
    });

    expect(toText(sentence)).toBe(
      "Height tall and Weight, with Attack its best stat at 110.",
    );
    expect(getPending(sentence)).toEqual(["Height", "Weight"]);

    const weightOnly = getPokemonDetailHeroSentence({
      form: createForm({ weight: 60 }),
      stats: createStats([95, 95, 80, 95, 60]),
    });

    expect(toText(weightOnly)).toBe(
      "Height tall and 6.0 kg, with HP, Attack and Special Attack its best stats at 95.",
    );
    expect(getPending(weightOnly)).toEqual(["Height"]);
  });

  it("says when every stat is the same, and keeps to the size without stats", () => {
    expect(
      toText(
        getPokemonDetailHeroSentence({
          form: createForm({ height: 19, weight: 1550 }),
          stats: createStats([100, 100, 100, 100, 100]),
        }),
      ),
    ).toBe("1.9 m tall and 155.0 kg, with every base stat at 100.");
    expect(
      toText(
        getPokemonDetailHeroSentence({
          form: createForm({ height: 19, weight: 1550 }),
          stats: [],
        }),
      ),
    ).toBe("1.9 m tall and 155.0 kg.");
  });
});
