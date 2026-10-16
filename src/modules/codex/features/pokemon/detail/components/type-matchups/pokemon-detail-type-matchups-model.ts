import {
  getDefensiveTypeMultiplier,
  getPokemonTypesForGeneration,
} from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { PokemonTypePair } from "@/modules/reference/types";

export type PokemonDetailTypeMatchup = {
  attackingType: PokemonTypeSlug;
  multiplier: number;
  multiplierLabel: string;
  typeLabel: string;
};

export type PokemonDetailTypeMatchups = {
  immunities: PokemonDetailTypeMatchup[];
  neutralCount: number;
  resistances: PokemonDetailTypeMatchup[];
  weaknesses: PokemonDetailTypeMatchup[];
};

/* v3's marks: 2× and 4× for weaknesses, ½ and ¼ for resistances, 0 for none. */
export const formatPokemonDetailTypeMultiplier = (multiplier: number) => {
  if (multiplier === 0.25) {
    return "¼";
  }

  if (multiplier === 0.5) {
    return "½";
  }

  if (multiplier === 0) {
    return "0";
  }

  return `${multiplier}×`;
};

const formatPokemonDetailTypeName = (type: PokemonTypeSlug) => {
  return type.charAt(0).toUpperCase() + type.slice(1);
};

export const getPokemonDetailDefendingTypes = (
  typePair: PokemonTypePair | null,
) => {
  return [typePair?.primaryType?.slug, typePair?.secondaryType?.slug].filter(
    (slug): slug is PokemonTypeSlug => Boolean(slug && isPokemonTypeSlug(slug)),
  );
};

/* How hard each attacking type of the generation hits this Pokémon, grouped. */
export const getPokemonDetailTypeMatchups = ({
  defendingTypes,
  generationOrder,
}: {
  defendingTypes: PokemonTypeSlug[];
  generationOrder: number;
}): PokemonDetailTypeMatchups => {
  const uniqueDefendingTypes = [...new Set(defendingTypes)];
  const matchups = getPokemonTypesForGeneration(generationOrder).map(
    (attackingType) => {
      const multiplier = getDefensiveTypeMultiplier(
        attackingType,
        uniqueDefendingTypes,
        generationOrder,
      );

      return {
        attackingType,
        multiplier,
        multiplierLabel: formatPokemonDetailTypeMultiplier(multiplier),
        typeLabel: formatPokemonDetailTypeName(attackingType),
      } satisfies PokemonDetailTypeMatchup;
    },
  );

  return {
    immunities: matchups.filter((matchup) => matchup.multiplier === 0),
    neutralCount: matchups.filter((matchup) => matchup.multiplier === 1).length,
    resistances: matchups
      .filter((matchup) => matchup.multiplier > 0 && matchup.multiplier < 1)
      .sort((first, second) => first.multiplier - second.multiplier),
    weaknesses: matchups
      .filter((matchup) => matchup.multiplier > 1)
      .sort((first, second) => second.multiplier - first.multiplier),
  };
};
