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

const getEmphasis = (parts: PokemonDetailHeroSentencePart[] | null) => {
  return parts?.filter((part) => part.emphasis).map((part) => part.text);
};

const createForm = ({
  category = null,
  height = null,
  weight = null,
}: {
  category?: string | null;
  height?: number | null;
  weight?: number | null;
} = {}) => {
  return {
    attributes: null,
    form: { category, height_decimeters: height, weight_hectograms: weight },
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
  category: "Legendary",
  is_baby: false,
  is_legendary: false,
  is_mythical: false,
  national_number: 59,
} as PokemonSpecies;

describe("Pokémon detail hero model", () => {
  it("reads the number, the Pokédex category and the generation it arrived in", () => {
    const eyebrow = getPokemonDetailHeroEyebrow({
      form: createForm(),
      species,
    });

    expect(eyebrow.map((part) => part.text)).toEqual([
      "#0059",
      "Legendary Pokémon",
      "since Generation I",
    ]);
  });

  it("reads a form's own category where it has one (Hisuian Growlithe)", () => {
    const eyebrow = getPokemonDetailHeroEyebrow({
      form: createForm({ category: "Scout" }),
      species: { ...species, category: "Puppy", national_number: 58 },
    });

    expect(eyebrow.map((part) => part.text)).toEqual([
      "#0058",
      "Scout Pokémon",
      "since Generation I",
    ]);
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

  it("leaves out a size the games don't give, and starts at the stats without one", () => {
    const heightOnly = getPokemonDetailHeroSentence({
      form: createForm({ height: 1000 }),
      stats: createStats([140, 85, 95, 145, 130]),
    });

    expect(toText(heightOnly)).toBe(
      "100.0 m tall, with Special Attack its best stat at 145.",
    );

    expect(
      toText(
        getPokemonDetailHeroSentence({
          form: createForm(),
          stats: createStats([95, 95, 80, 95, 60]),
        }),
      ),
    ).toBe("HP, Attack and Special Attack are its best stats at 95.");
    expect(
      toText(
        getPokemonDetailHeroSentence({
          form: createForm(),
          stats: createStats([100, 100, 100, 100, 100]),
        }),
      ),
    ).toBe("Every base stat is 100.");
    expect(
      getPokemonDetailHeroSentence({ form: createForm(), stats: [] }),
    ).toEqual([]);
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
