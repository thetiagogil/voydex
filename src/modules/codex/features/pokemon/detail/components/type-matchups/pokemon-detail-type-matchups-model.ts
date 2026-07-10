import type { PokemonTypePair } from "@/modules/reference/types";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  getDefensiveTypeMultiplier,
  getPokemonTypesForGeneration,
} from "@/modules/reference/features/pokemon/domain/type-effectiveness";

export type PokemonDetailTypeMatchupChartColumn = {
  attackingType: PokemonTypeSlug;
  multiplier: number;
  multiplierLabel: string;
  tooltipDescription: string;
  tooltipLabel: string;
  tooltipTitle: string;
  typeLabel: string;
};

const formatPokemonDetailTypeMatchupValue = (multiplier: number) => {
  if (multiplier === 0.25) {
    return "1/4";
  }

  if (multiplier === 0.5) {
    return "1/2";
  }

  return String(multiplier);
};

const getPokemonDetailTypePairSlugs = (typePair: PokemonTypePair | null) => {
  const typeSlugs = [
    typePair?.primaryType?.slug,
    typePair?.secondaryType?.slug,
  ];

  return typeSlugs.filter((slug): slug is NonNullable<typeof slug> =>
    Boolean(slug),
  );
};

export const formatPokemonDetailTypeName = (type: PokemonTypeSlug) => {
  return type.charAt(0).toUpperCase() + type.slice(1);
};

const getPokemonDetailTypeMatchupEffectivenessLabel = (multiplier: number) => {
  if (multiplier === 0) {
    return "No effect";
  }

  if (multiplier === 0.25) {
    return "Double resisted";
  }

  if (multiplier === 0.5) {
    return "Not very effective";
  }

  if (multiplier === 2) {
    return "Super effective";
  }

  if (multiplier === 4) {
    return "Double super effective";
  }

  return "Normal damage";
};

const getPokemonDetailDefendingTypesLabel = (
  defendingTypes: PokemonTypeSlug[],
) => {
  return defendingTypes.map(formatPokemonDetailTypeName).join("/");
};

export const getPokemonDetailDefendingTypes = (
  typePair: PokemonTypePair | null,
) => {
  return getPokemonDetailTypePairSlugs(typePair).filter(isPokemonTypeSlug);
};

export const getPokemonDetailTypeMatchupChart = ({
  defendingTypes,
  generationOrder,
}: {
  defendingTypes: PokemonTypeSlug[];
  generationOrder: number;
}) => {
  const uniqueDefendingTypes = [...new Set(defendingTypes)];
  const defendingTypesLabel =
    getPokemonDetailDefendingTypesLabel(uniqueDefendingTypes);

  return getPokemonTypesForGeneration(generationOrder).map((attackingType) => {
    const multiplier = getDefensiveTypeMultiplier(
      attackingType,
      uniqueDefendingTypes,
      generationOrder,
    );
    const typeLabel = formatPokemonDetailTypeName(attackingType);
    const tooltipTitle = `${typeLabel} against ${defendingTypesLabel}`;
    const tooltipDescription =
      getPokemonDetailTypeMatchupEffectivenessLabel(multiplier);

    return {
      attackingType,
      multiplier,
      multiplierLabel: formatPokemonDetailTypeMatchupValue(multiplier),
      tooltipDescription,
      tooltipLabel: `${tooltipTitle}. ${tooltipDescription}`,
      tooltipTitle,
      typeLabel,
    } satisfies PokemonDetailTypeMatchupChartColumn;
  });
};
