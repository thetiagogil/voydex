import { describe, expect, it } from "vitest";

import { pokemonTypeSlugs, type PokemonTypeSlug } from "./type-slugs";
import {
  getDefensiveTypeMultiplier,
  getPokemonTypesForGeneration,
  getTypeEffectiveness,
} from "./type-effectiveness";

type ExpectedAttackEntry = {
  immune?: PokemonTypeSlug[];
  resisted?: PokemonTypeSlug[];
  strong?: PokemonTypeSlug[];
};

const modernChart: Record<PokemonTypeSlug, ExpectedAttackEntry> = {
  normal: { immune: ["ghost"], resisted: ["rock", "steel"] },
  fire: {
    resisted: ["fire", "water", "rock", "dragon"],
    strong: ["grass", "ice", "bug", "steel"],
  },
  water: {
    resisted: ["water", "grass", "dragon"],
    strong: ["fire", "ground", "rock"],
  },
  electric: {
    immune: ["ground"],
    resisted: ["electric", "grass", "dragon"],
    strong: ["water", "flying"],
  },
  grass: {
    resisted: ["fire", "grass", "poison", "flying", "bug", "dragon", "steel"],
    strong: ["water", "ground", "rock"],
  },
  ice: {
    resisted: ["fire", "water", "ice", "steel"],
    strong: ["grass", "ground", "flying", "dragon"],
  },
  fighting: {
    immune: ["ghost"],
    resisted: ["poison", "flying", "psychic", "bug", "fairy"],
    strong: ["normal", "ice", "rock", "dark", "steel"],
  },
  poison: {
    immune: ["steel"],
    resisted: ["poison", "ground", "rock", "ghost"],
    strong: ["grass", "fairy"],
  },
  ground: {
    immune: ["flying"],
    resisted: ["grass", "bug"],
    strong: ["fire", "electric", "poison", "rock", "steel"],
  },
  flying: {
    resisted: ["electric", "rock", "steel"],
    strong: ["grass", "fighting", "bug"],
  },
  psychic: {
    immune: ["dark"],
    resisted: ["psychic", "steel"],
    strong: ["fighting", "poison"],
  },
  bug: {
    resisted: [
      "fire",
      "fighting",
      "poison",
      "flying",
      "ghost",
      "steel",
      "fairy",
    ],
    strong: ["grass", "psychic", "dark"],
  },
  rock: {
    resisted: ["fighting", "ground", "steel"],
    strong: ["fire", "ice", "flying", "bug"],
  },
  ghost: {
    immune: ["normal"],
    resisted: ["dark"],
    strong: ["psychic", "ghost"],
  },
  dragon: {
    immune: ["fairy"],
    resisted: ["steel"],
    strong: ["dragon"],
  },
  dark: {
    resisted: ["fighting", "dark", "fairy"],
    strong: ["psychic", "ghost"],
  },
  steel: {
    resisted: ["fire", "water", "electric", "steel"],
    strong: ["ice", "rock", "fairy"],
  },
  fairy: {
    resisted: ["fire", "poison", "steel"],
    strong: ["fighting", "dragon", "dark"],
  },
};

const getModernExpected = (
  attackingType: PokemonTypeSlug,
  defendingType: PokemonTypeSlug,
) => {
  const entry = modernChart[attackingType];

  if (entry.immune?.includes(defendingType)) return 0;
  if (entry.strong?.includes(defendingType)) return 2;
  if (entry.resisted?.includes(defendingType)) return 0.5;
  return 1;
};

const generationOneTypes = pokemonTypeSlugs.filter(
  (type) => !["dark", "steel", "fairy"].includes(type),
);
const generationTwoToFiveTypes = pokemonTypeSlugs.filter(
  (type) => type !== "fairy",
);

describe("type effectiveness", () => {
  it("matches every modern type interaction", () => {
    for (const attackingType of pokemonTypeSlugs) {
      for (const defendingType of pokemonTypeSlugs) {
        expect(
          getTypeEffectiveness(attackingType, defendingType, 6),
          `${attackingType} attacking ${defendingType}`,
        ).toBe(getModernExpected(attackingType, defendingType));
      }
    }
  });

  it("matches every Generation I interaction and its historical changes", () => {
    for (const attackingType of generationOneTypes) {
      for (const defendingType of generationOneTypes) {
        let expected = getModernExpected(attackingType, defendingType);

        if (
          (attackingType === "bug" && defendingType === "poison") ||
          (attackingType === "poison" && defendingType === "bug")
        ) {
          expected = 2;
        } else if (attackingType === "ghost" && defendingType === "psychic") {
          expected = 0;
        } else if (attackingType === "ice" && defendingType === "fire") {
          expected = 1;
        }

        expect(
          getTypeEffectiveness(attackingType, defendingType, 1),
          `${attackingType} attacking ${defendingType} in Generation I`,
        ).toBe(expected);
      }
    }
  });

  it("matches every Generation II-V interaction", () => {
    for (const attackingType of generationTwoToFiveTypes) {
      for (const defendingType of generationTwoToFiveTypes) {
        const expected =
          defendingType === "steel" &&
          (attackingType === "ghost" || attackingType === "dark")
            ? 0.5
            : getModernExpected(attackingType, defendingType);

        expect(
          getTypeEffectiveness(attackingType, defendingType, 5),
          `${attackingType} attacking ${defendingType} in Generation V`,
        ).toBe(expected);
      }
    }
  });

  it("returns only the types available in the selected generation", () => {
    expect(getPokemonTypesForGeneration(1)).toEqual(generationOneTypes);
    expect(getPokemonTypesForGeneration(5)).toEqual(generationTwoToFiveTypes);
    expect(getPokemonTypesForGeneration(6)).toEqual(pokemonTypeSlugs);
  });

  it("combines both defending types using the selected generation chart", () => {
    expect(getDefensiveTypeMultiplier("bug", ["grass", "poison"], 1)).toBe(4);
    expect(getDefensiveTypeMultiplier("bug", ["grass", "poison"], 2)).toBe(1);
    expect(getDefensiveTypeMultiplier("rock", ["fire", "flying"], 6)).toBe(4);
    expect(getDefensiveTypeMultiplier("electric", ["water", "ground"], 6)).toBe(
      0,
    );
  });
});
