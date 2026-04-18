import { POKEMON_TYPES, type PokemonType } from "@/shared/constants/reference";

type AttackChartEntry = {
  superEffective: PokemonType[];
  notVeryEffective: PokemonType[];
  noEffect: PokemonType[];
};

const TYPE_ATTACK_CHART_GEN6: Record<PokemonType, AttackChartEntry> = {
  normal: {
    superEffective: [],
    notVeryEffective: ["rock", "steel"],
    noEffect: ["ghost"],
  },
  fire: {
    superEffective: ["grass", "ice", "bug", "steel"],
    notVeryEffective: ["fire", "water", "rock", "dragon"],
    noEffect: [],
  },
  water: {
    superEffective: ["fire", "ground", "rock"],
    notVeryEffective: ["water", "grass", "dragon"],
    noEffect: [],
  },
  electric: {
    superEffective: ["water", "flying"],
    notVeryEffective: ["electric", "grass", "dragon"],
    noEffect: ["ground"],
  },
  grass: {
    superEffective: ["water", "ground", "rock"],
    notVeryEffective: [
      "fire",
      "grass",
      "poison",
      "flying",
      "bug",
      "dragon",
      "steel",
    ],
    noEffect: [],
  },
  ice: {
    superEffective: ["grass", "ground", "flying", "dragon"],
    notVeryEffective: ["fire", "water", "ice", "steel"],
    noEffect: [],
  },
  fighting: {
    superEffective: ["normal", "ice", "rock", "dark", "steel"],
    notVeryEffective: ["poison", "flying", "psychic", "bug", "fairy"],
    noEffect: ["ghost"],
  },
  poison: {
    superEffective: ["grass", "fairy"],
    notVeryEffective: ["poison", "ground", "rock", "ghost"],
    noEffect: ["steel"],
  },
  ground: {
    superEffective: ["fire", "electric", "poison", "rock", "steel"],
    notVeryEffective: ["grass", "bug"],
    noEffect: ["flying"],
  },
  flying: {
    superEffective: ["grass", "fighting", "bug"],
    notVeryEffective: ["electric", "rock", "steel"],
    noEffect: [],
  },
  psychic: {
    superEffective: ["fighting", "poison"],
    notVeryEffective: ["psychic", "steel"],
    noEffect: ["dark"],
  },
  bug: {
    superEffective: ["grass", "psychic", "dark"],
    notVeryEffective: [
      "fire",
      "fighting",
      "poison",
      "flying",
      "ghost",
      "steel",
      "fairy",
    ],
    noEffect: [],
  },
  rock: {
    superEffective: ["fire", "ice", "flying", "bug"],
    notVeryEffective: ["fighting", "ground", "steel"],
    noEffect: [],
  },
  ghost: {
    superEffective: ["psychic", "ghost"],
    notVeryEffective: ["dark"],
    noEffect: ["normal"],
  },
  dragon: {
    superEffective: ["dragon"],
    notVeryEffective: ["steel"],
    noEffect: ["fairy"],
  },
  dark: {
    superEffective: ["psychic", "ghost"],
    notVeryEffective: ["fighting", "dark", "fairy"],
    noEffect: [],
  },
  steel: {
    superEffective: ["ice", "rock", "fairy"],
    notVeryEffective: ["fire", "water", "electric", "steel"],
    noEffect: [],
  },
  fairy: {
    superEffective: ["fighting", "dragon", "dark"],
    notVeryEffective: ["fire", "poison", "steel"],
    noEffect: [],
  },
};

const GEN_1_TYPES: PokemonType[] = [
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
];

const GEN_2_TO_5_TYPES: PokemonType[] = [...GEN_1_TYPES, "dark", "steel"];

const createMatrix = (types: PokemonType[]) => {
  const matrix = Object.fromEntries(
    types.map((attackingType) => [
      attackingType,
      Object.fromEntries(types.map((defendingType) => [defendingType, 1])),
    ]),
  ) as Record<PokemonType, Record<PokemonType, number>>;

  for (const attackingType of types) {
    const chartEntry = TYPE_ATTACK_CHART_GEN6[attackingType];

    for (const defendingType of chartEntry.superEffective) {
      if (types.includes(defendingType)) {
        matrix[attackingType][defendingType] = 2;
      }
    }

    for (const defendingType of chartEntry.notVeryEffective) {
      if (types.includes(defendingType)) {
        matrix[attackingType][defendingType] = 0.5;
      }
    }

    for (const defendingType of chartEntry.noEffect) {
      if (types.includes(defendingType)) {
        matrix[attackingType][defendingType] = 0;
      }
    }
  }

  return matrix;
};

const TYPE_MATRIX_GEN6 = createMatrix([...POKEMON_TYPES]);
const TYPE_MATRIX_GEN2_TO_5 = createMatrix(GEN_2_TO_5_TYPES);
const TYPE_MATRIX_GEN1 = createMatrix(GEN_1_TYPES);

TYPE_MATRIX_GEN2_TO_5.ghost.steel = 0.5;
TYPE_MATRIX_GEN2_TO_5.dark.steel = 0.5;

TYPE_MATRIX_GEN1.poison.bug = 2;
TYPE_MATRIX_GEN1.bug.poison = 2;
TYPE_MATRIX_GEN1.ghost.psychic = 0;
TYPE_MATRIX_GEN1.ice.fire = 1;

export const getPokemonTypesForGeneration = (generationId: number) => {
  if (generationId <= 1) {
    return GEN_1_TYPES;
  }

  if (generationId <= 5) {
    return GEN_2_TO_5_TYPES;
  }

  return [...POKEMON_TYPES];
};

export const getTypeEffectivenessMatrix = (generationId: number) => {
  if (generationId <= 1) {
    return TYPE_MATRIX_GEN1;
  }

  if (generationId <= 5) {
    return TYPE_MATRIX_GEN2_TO_5;
  }

  return TYPE_MATRIX_GEN6;
};

export const getTypeEffectiveness = (
  attackingType: PokemonType,
  defendingType: PokemonType,
  generationId: number,
) => {
  const matrix = getTypeEffectivenessMatrix(generationId);
  const availableTypes = getPokemonTypesForGeneration(generationId);

  if (
    !availableTypes.includes(attackingType) ||
    !availableTypes.includes(defendingType)
  ) {
    return 1;
  }

  return matrix[attackingType][defendingType] ?? 1;
};

export const getDefensiveMultiplier = (
  attackingType: PokemonType,
  defendingTypes: PokemonType[],
  generationId: number,
) => {
  return defendingTypes.reduce(
    (multiplier, defendingType) =>
      multiplier *
      getTypeEffectiveness(attackingType, defendingType, generationId),
    1,
  );
};

export const getEffectivenessLabel = (multiplier: number) => {
  if (multiplier === 0) {
    return "Immune";
  }

  if (multiplier >= 4) {
    return "4x weak";
  }

  if (multiplier > 1) {
    return "Weak";
  }

  if (multiplier <= 0.25) {
    return "4x resist";
  }

  if (multiplier < 1) {
    return "Resists";
  }

  return "Neutral";
};

export const getEffectivenessTone = (multiplier: number) => {
  if (multiplier === 0) {
    return "text-immune";
  }

  if (multiplier > 1) {
    return "text-destructive";
  }

  if (multiplier < 1) {
    return "text-success";
  }

  return "text-muted-foreground";
};
