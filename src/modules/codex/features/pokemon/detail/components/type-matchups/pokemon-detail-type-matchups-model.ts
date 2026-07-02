import type { PokemonTypePair } from "@/modules/codex/shared/types";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/shared/domain/pokemon/constants";
import type {
  PokemonDefensiveTypeMatchups,
  PokemonTypeMatchup,
} from "@/shared/domain/pokemon/type-effectiveness";

export type PokemonDetailTypeMatchupSectionData = {
  groups: PokemonDetailTypeMatchupGroupData[];
  id: keyof PokemonDefensiveTypeMatchups;
  title: string;
};

export type PokemonDetailTypeMatchupGroupData = {
  id: string;
  matchups: PokemonTypeMatchup[];
  multiplierLabel: string;
};

export const formatPokemonDetailTypeMatchupMultiplier = (
  multiplier: number,
) => {
  if (multiplier === 0.25) {
    return "x1/4";
  }

  if (multiplier === 0.5) {
    return "x1/2";
  }

  return `x${multiplier}`;
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

const getPokemonDetailTypeMatchupGroups = (
  matchups: PokemonTypeMatchup[],
  multipliers: number[],
) => {
  return multipliers
    .map((multiplier) => ({
      id: String(multiplier),
      matchups: matchups.filter((matchup) => matchup.multiplier === multiplier),
      multiplierLabel: formatPokemonDetailTypeMatchupMultiplier(multiplier),
    }))
    .filter((group) => group.matchups.length > 0);
};

export const formatPokemonDetailTypeName = (type: PokemonTypeSlug) => {
  return type.charAt(0).toUpperCase() + type.slice(1);
};

export const getPokemonDetailDefendingTypes = (
  typePair: PokemonTypePair | null,
) => {
  return getPokemonDetailTypePairSlugs(typePair).filter(isPokemonTypeSlug);
};

export const getPokemonDetailTypeMatchupSections = (
  matchups: PokemonDefensiveTypeMatchups,
) => {
  const sections = [
    {
      groups: getPokemonDetailTypeMatchupGroups(matchups.weaknesses, [2, 4]),
      id: "weaknesses",
      title: "Weaknesses",
    },
    {
      groups: getPokemonDetailTypeMatchupGroups(
        matchups.resistances,
        [0.5, 0.25],
      ),
      id: "resistances",
      title: "Resistances",
    },
    {
      groups: getPokemonDetailTypeMatchupGroups(matchups.immunities, [0]),
      id: "immunities",
      title: "Immunities",
    },
  ] satisfies PokemonDetailTypeMatchupSectionData[];

  return sections;
};
