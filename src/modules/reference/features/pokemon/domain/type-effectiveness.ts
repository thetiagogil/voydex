import {
  pokemonTypeSlugs,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";

type TypeAttackChartEntry = {
  noEffect: PokemonTypeSlug[];
  notVeryEffective: PokemonTypeSlug[];
  superEffective: PokemonTypeSlug[];
};

const typeAttackChart: Record<PokemonTypeSlug, TypeAttackChartEntry> = {
  normal: {
    noEffect: ["ghost"],
    notVeryEffective: ["rock", "steel"],
    superEffective: [],
  },
  fire: {
    noEffect: [],
    notVeryEffective: ["fire", "water", "rock", "dragon"],
    superEffective: ["grass", "ice", "bug", "steel"],
  },
  water: {
    noEffect: [],
    notVeryEffective: ["water", "grass", "dragon"],
    superEffective: ["fire", "ground", "rock"],
  },
  electric: {
    noEffect: ["ground"],
    notVeryEffective: ["electric", "grass", "dragon"],
    superEffective: ["water", "flying"],
  },
  grass: {
    noEffect: [],
    notVeryEffective: [
      "fire",
      "grass",
      "poison",
      "flying",
      "bug",
      "dragon",
      "steel",
    ],
    superEffective: ["water", "ground", "rock"],
  },
  ice: {
    noEffect: [],
    notVeryEffective: ["fire", "water", "ice", "steel"],
    superEffective: ["grass", "ground", "flying", "dragon"],
  },
  fighting: {
    noEffect: ["ghost"],
    notVeryEffective: ["poison", "flying", "psychic", "bug", "fairy"],
    superEffective: ["normal", "ice", "rock", "dark", "steel"],
  },
  poison: {
    noEffect: ["steel"],
    notVeryEffective: ["poison", "ground", "rock", "ghost"],
    superEffective: ["grass", "fairy"],
  },
  ground: {
    noEffect: ["flying"],
    notVeryEffective: ["grass", "bug"],
    superEffective: ["fire", "electric", "poison", "rock", "steel"],
  },
  flying: {
    noEffect: [],
    notVeryEffective: ["electric", "rock", "steel"],
    superEffective: ["grass", "fighting", "bug"],
  },
  psychic: {
    noEffect: ["dark"],
    notVeryEffective: ["psychic", "steel"],
    superEffective: ["fighting", "poison"],
  },
  bug: {
    noEffect: [],
    notVeryEffective: [
      "fire",
      "fighting",
      "poison",
      "flying",
      "ghost",
      "steel",
      "fairy",
    ],
    superEffective: ["grass", "psychic", "dark"],
  },
  rock: {
    noEffect: [],
    notVeryEffective: ["fighting", "ground", "steel"],
    superEffective: ["fire", "ice", "flying", "bug"],
  },
  ghost: {
    noEffect: ["normal"],
    notVeryEffective: ["dark"],
    superEffective: ["psychic", "ghost"],
  },
  dragon: {
    noEffect: ["fairy"],
    notVeryEffective: ["steel"],
    superEffective: ["dragon"],
  },
  dark: {
    noEffect: [],
    notVeryEffective: ["fighting", "dark", "fairy"],
    superEffective: ["psychic", "ghost"],
  },
  steel: {
    noEffect: [],
    notVeryEffective: ["fire", "water", "electric", "steel"],
    superEffective: ["ice", "rock", "fairy"],
  },
  fairy: {
    noEffect: [],
    notVeryEffective: ["fire", "poison", "steel"],
    superEffective: ["fighting", "dragon", "dark"],
  },
};

const generationOneTypes = [
  "normal",
  "fire",
  "water",
  "electric",
  "grass",
  "ice",
  "fighting",
  "poison",
  "ground",
  "flying",
  "psychic",
  "bug",
  "rock",
  "ghost",
  "dragon",
] satisfies PokemonTypeSlug[];

const generationTwoToFiveTypes = [
  ...generationOneTypes,
  "dark",
  "steel",
] satisfies PokemonTypeSlug[];

export const getPokemonTypesForGeneration = (generationOrder: number) => {
  if (generationOrder <= 1) {
    return [...generationOneTypes];
  }

  if (generationOrder <= 5) {
    return [...generationTwoToFiveTypes];
  }

  return [...pokemonTypeSlugs];
};

const getModernTypeEffectiveness = (
  attackingType: PokemonTypeSlug,
  defendingType: PokemonTypeSlug,
) => {
  const chartEntry = typeAttackChart[attackingType];

  if (chartEntry.noEffect.includes(defendingType)) {
    return 0;
  }

  if (chartEntry.superEffective.includes(defendingType)) {
    return 2;
  }

  if (chartEntry.notVeryEffective.includes(defendingType)) {
    return 0.5;
  }

  return 1;
};

export const getTypeEffectiveness = (
  attackingType: PokemonTypeSlug,
  defendingType: PokemonTypeSlug,
  generationOrder: number,
) => {
  const availableTypes = getPokemonTypesForGeneration(generationOrder);

  if (
    !availableTypes.includes(attackingType) ||
    !availableTypes.includes(defendingType)
  ) {
    return 1;
  }

  if (generationOrder <= 1) {
    if (attackingType === "poison" && defendingType === "bug") {
      return 2;
    }

    if (attackingType === "bug" && defendingType === "poison") {
      return 2;
    }

    if (attackingType === "ghost" && defendingType === "psychic") {
      return 0;
    }

    if (attackingType === "ice" && defendingType === "fire") {
      return 1;
    }
  }

  if (
    generationOrder <= 5 &&
    defendingType === "steel" &&
    (attackingType === "ghost" || attackingType === "dark")
  ) {
    return 0.5;
  }

  return getModernTypeEffectiveness(attackingType, defendingType);
};

export const getDefensiveTypeMultiplier = (
  attackingType: PokemonTypeSlug,
  defendingTypes: PokemonTypeSlug[],
  generationOrder: number,
) => {
  return defendingTypes.reduce(
    (multiplier, defendingType) =>
      multiplier *
      getTypeEffectiveness(attackingType, defendingType, generationOrder),
    1,
  );
};
