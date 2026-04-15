import type {
  PlayPokedexOverviewSummary,
  PlayPokedexSummary,
} from "@/features/play/types";

type PokedexCountsSummary = {
  totalEntries: number;
  seenCount: number;
  caughtCount: number;
  mythicalCount: number;
  mythicalSeenCount: number;
  mythicalCaughtCount: number;
};

export const computeEffectivePokedexCounts = (
  summary: PokedexCountsSummary,
  includeMythical: boolean,
) => {
  const excludeMythical = !includeMythical && summary.mythicalCount > 0;

  return {
    total: excludeMythical
      ? summary.totalEntries - summary.mythicalCount
      : summary.totalEntries,
    caught: excludeMythical
      ? summary.caughtCount - summary.mythicalCaughtCount
      : summary.caughtCount,
    seen: excludeMythical
      ? summary.seenCount - summary.mythicalSeenCount
      : summary.seenCount,
    mythicalCount: summary.mythicalCount,
    excludeMythical,
  };
};

export const toPokedexOverviewSummary = (
  summary: PlayPokedexSummary,
): PlayPokedexOverviewSummary => {
  const mythicalCount = summary.entries.filter((entry) => entry.species.isMythical)
    .length;
  const mythicalSeenCount = summary.entries.filter(
    (entry) => entry.species.isMythical && entry.isSeen,
  ).length;
  const mythicalCaughtCount = summary.entries.filter(
    (entry) => entry.species.isMythical && entry.isCaught,
  ).length;

  return {
    pokedexId: summary.pokedexId,
    pokedexSlug: summary.pokedexSlug,
    pokedexName: summary.pokedexName,
    pokedexKind: summary.pokedexKind,
    totalEntries: summary.totalEntries,
    seenCount: summary.seenCount,
    caughtCount: summary.caughtCount,
    mythicalCount,
    mythicalSeenCount,
    mythicalCaughtCount,
    versionGroupId: summary.versionGroupId,
    versionGroupName: summary.versionGroupName,
    isDlc: summary.isDlc,
  };
};
