import type { PokemonType } from "@/shared/constants/reference";
import type { PlayPokemon } from "../types";
import {
  getPlayPokemonMoveTypeKeys,
  getPlayPokemonTypeKeys,
  sortPokemonByPosition,
} from "./pokemon-team-display";
import {
  getDefensiveMultiplier,
  getPokemonTypesForGeneration,
  getTypeEffectiveness,
} from "./type-effectiveness";

export type PokemonTeamCoverageMove = {
  pokemon: PlayPokemon;
  moveName: string;
  moveType: PokemonType;
};

export type PokemonTeamCoverageStab = {
  pokemon: PlayPokemon;
  type: PokemonType;
};

export type PokemonTeamAnalysisRow = {
  type: PokemonType;
  moveCoverage: PokemonTeamCoverageMove[];
  stabCoverage: PokemonTeamCoverageStab[];
  weakPokemon: Array<{ pokemon: PlayPokemon; multiplier: number }>;
  resistPokemon: Array<{ pokemon: PlayPokemon; multiplier: number }>;
  immunePokemon: Array<{ pokemon: PlayPokemon; multiplier: number }>;
};

export type PokemonTeamAnalysisSummary = {
  availableTypes: PokemonType[];
  rosterCount: number;
  teamCount: number;
  boxCount: number;
  shinyCount: number;
  uniqueTypes: PokemonType[];
  uniqueMoveTypes: PokemonType[];
  offensiveGaps: PokemonType[];
  stabGaps: PokemonType[];
  duplicateTypes: Array<{ type: PokemonType; count: number }>;
  rows: PokemonTeamAnalysisRow[];
};

const sortPokemonMultiplierEntries = (
  entries: Array<{ pokemon: PlayPokemon; multiplier: number }>,
) => {
  return entries.sort((left, right) => {
    if (right.multiplier !== left.multiplier) {
      return right.multiplier - left.multiplier;
    }

    return left.pokemon.position - right.pokemon.position;
  });
};

const uniqueTypes = (types: PokemonType[]) => Array.from(new Set(types));

const buildMoveCoverage = (
  pokemon: PlayPokemon[],
  defendingType: PokemonType,
  generationId: number,
  availableTypes: PokemonType[],
) => {
  return pokemon.flatMap<PokemonTeamCoverageMove>((member) =>
    member.moves.flatMap((move) => {
      const moveType = move.type?.name.toLowerCase() as PokemonType | undefined;

      if (
        !moveType ||
        !availableTypes.includes(moveType) ||
        getTypeEffectiveness(moveType, defendingType, generationId) <= 1
      ) {
        return [];
      }

      return [
        {
          pokemon: member,
          moveName: move.name,
          moveType,
        },
      ];
    }),
  );
};

const buildStabCoverage = (
  pokemon: PlayPokemon[],
  defendingType: PokemonType,
  generationId: number,
  availableTypes: PokemonType[],
) => {
  return pokemon.flatMap<PokemonTeamCoverageStab>((member) => {
    const matchingType = getPlayPokemonTypeKeys(member).find(
      (memberType) =>
        availableTypes.includes(memberType) &&
        getTypeEffectiveness(memberType, defendingType, generationId) > 1,
    );

    return matchingType ? [{ pokemon: member, type: matchingType }] : [];
  });
};

export const buildPokemonTeamAnalysis = (
  pokemon: PlayPokemon[],
  generationId: number,
): PokemonTeamAnalysisSummary => {
  const availableTypes = getPokemonTypesForGeneration(generationId);
  const sortedPokemon = sortPokemonByPosition(pokemon);
  const rosterTypeCounts = new Map<PokemonType, number>();

  const allPokemonTypes = sortedPokemon.flatMap((member) => {
    const memberTypes = getPlayPokemonTypeKeys(member).filter((type) =>
      availableTypes.includes(type),
    );

    for (const type of memberTypes) {
      rosterTypeCounts.set(type, (rosterTypeCounts.get(type) ?? 0) + 1);
    }

    return memberTypes;
  });

  const allMoveTypes = sortedPokemon.flatMap((member) =>
    getPlayPokemonMoveTypeKeys(member).filter((type) =>
      availableTypes.includes(type),
    ),
  );

  const rows = availableTypes.map<PokemonTeamAnalysisRow>((type) => {
    const moveCoverage = buildMoveCoverage(
      sortedPokemon,
      type,
      generationId,
      availableTypes,
    );
    const stabCoverage = buildStabCoverage(
      sortedPokemon,
      type,
      generationId,
      availableTypes,
    );

    const weakPokemon = sortPokemonMultiplierEntries(
      sortedPokemon
        .map((member) => ({
          pokemon: member,
          multiplier: getDefensiveMultiplier(
            type,
            getPlayPokemonTypeKeys(member),
            generationId,
          ),
        }))
        .filter((entry) => entry.multiplier > 1),
    );

    const resistPokemon = sortPokemonMultiplierEntries(
      sortedPokemon
        .map((member) => ({
          pokemon: member,
          multiplier: getDefensiveMultiplier(
            type,
            getPlayPokemonTypeKeys(member),
            generationId,
          ),
        }))
        .filter((entry) => entry.multiplier > 0 && entry.multiplier < 1),
    );

    const immunePokemon = sortPokemonMultiplierEntries(
      sortedPokemon
        .map((member) => ({
          pokemon: member,
          multiplier: getDefensiveMultiplier(
            type,
            getPlayPokemonTypeKeys(member),
            generationId,
          ),
        }))
        .filter((entry) => entry.multiplier === 0),
    );

    return {
      type,
      moveCoverage,
      stabCoverage,
      weakPokemon,
      resistPokemon,
      immunePokemon,
    };
  });

  return {
    availableTypes,
    rosterCount: sortedPokemon.length,
    teamCount: sortedPokemon.filter((member) => member.position <= 6).length,
    boxCount: sortedPokemon.filter((member) => member.position > 6).length,
    shinyCount: sortedPokemon.filter((member) => member.isShiny).length,
    uniqueTypes: uniqueTypes(allPokemonTypes),
    uniqueMoveTypes: uniqueTypes(allMoveTypes),
    offensiveGaps: rows
      .filter((row) => row.moveCoverage.length === 0)
      .map((row) => row.type),
    stabGaps: rows
      .filter((row) => row.stabCoverage.length === 0)
      .map((row) => row.type),
    duplicateTypes: Array.from(rosterTypeCounts.entries())
      .filter(([, count]) => count > 1)
      .sort(
        (left, right) => right[1] - left[1] || left[0].localeCompare(right[0]),
      )
      .map(([type, count]) => ({ type, count })),
    rows,
  };
};
