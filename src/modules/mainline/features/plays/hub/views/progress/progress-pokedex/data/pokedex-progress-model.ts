import type {
  MainlinePlayPokedexEntry,
  MainlinePlayPokedexScope,
  PokedexProgressFilter,
  PokedexProgressState,
  PokedexUpdateMode,
} from "../types";

export const POKEDEX_PROGRESS_SECTION_SIZE = 60;

export type PokedexProgressEntrySection = {
  endNumber: number;
  entries: MainlinePlayPokedexEntry[];
  id: string;
  label: string;
  startNumber: number;
};

const formatSectionNumber = (value: number, digitCount: number) =>
  String(value).padStart(digitCount, "0");

export const groupPokedexEntriesByNumberRange = ({
  entries,
  maxPokedexNumber,
  sectionSize = POKEDEX_PROGRESS_SECTION_SIZE,
}: {
  entries: MainlinePlayPokedexEntry[];
  maxPokedexNumber: number;
  sectionSize?: number;
}): PokedexProgressEntrySection[] => {
  if (!Number.isInteger(sectionSize) || sectionSize <= 0) {
    return [];
  }

  const digitCount = Math.max(3, String(maxPokedexNumber).length);
  const sections = new Map<number, MainlinePlayPokedexEntry[]>();

  for (const entry of entries) {
    const sectionIndex = Math.floor((entry.pokedexNumber - 1) / sectionSize);
    const sectionEntries = sections.get(sectionIndex) ?? [];

    sectionEntries.push(entry);
    sections.set(sectionIndex, sectionEntries);
  }

  return [...sections.entries()]
    .sort(([leftIndex], [rightIndex]) => leftIndex - rightIndex)
    .map(([sectionIndex, sectionEntries]) => {
      const startNumber = sectionIndex * sectionSize + 1;
      const endNumber = Math.min(
        startNumber + sectionSize - 1,
        maxPokedexNumber,
      );

      return {
        endNumber,
        entries: sectionEntries,
        id: `${startNumber}-${endNumber}`,
        label: `${formatSectionNumber(startNumber, digitCount)} – ${formatSectionNumber(endNumber, digitCount)}`,
        startNumber,
      };
    });
};

export const getSelectablePokedexScopes = (
  scopes: MainlinePlayPokedexScope[],
) => {
  const completionScopes = scopes.filter((scope) => scope.isCompletionRelevant);

  return completionScopes.length > 0 ? completionScopes : scopes;
};

export const getBrowseOnlyPokedexScopes = ({
  parentScope,
  scopes,
}: {
  parentScope: MainlinePlayPokedexScope;
  scopes: MainlinePlayPokedexScope[];
}) => {
  const parentSpeciesIds = new Set(
    parentScope.entries.map((entry) => entry.speciesId),
  );

  return scopes.filter(
    (scope) =>
      scope.id !== parentScope.id &&
      !scope.isCompletionRelevant &&
      scope.entries.length > 0 &&
      scope.entries.every((entry) => parentSpeciesIds.has(entry.speciesId)),
  );
};

export const getPokedexEntriesForBrowseScope = ({
  browseScope,
  entries,
}: {
  browseScope: MainlinePlayPokedexScope | null;
  entries: MainlinePlayPokedexEntry[];
}) => {
  if (!browseScope) {
    return entries;
  }

  const browseSpeciesIds = new Set(
    browseScope.entries.map((entry) => entry.speciesId),
  );

  return entries.filter((entry) => browseSpeciesIds.has(entry.speciesId));
};

export const getNextPokedexStateForMode = ({
  mode,
  state,
}: {
  mode: PokedexUpdateMode;
  state: PokedexProgressState;
}): PokedexProgressState => {
  return state === mode ? "missing" : mode;
};

export const getPokedexEntryState = (
  entry: MainlinePlayPokedexEntry,
  stateBySpeciesId: ReadonlyMap<number, PokedexProgressState>,
) => stateBySpeciesId.get(entry.speciesId) ?? entry.state;

export const filterPokedexEntries = ({
  entries,
  progressFilter,
  query,
  stateBySpeciesId,
}: {
  entries: MainlinePlayPokedexEntry[];
  progressFilter: PokedexProgressFilter;
  query: string;
  stateBySpeciesId: ReadonlyMap<number, PokedexProgressState>;
}) => {
  const normalizedQuery = query.trim().toLocaleLowerCase();
  const filtered = entries.filter((entry) => {
    const state = getPokedexEntryState(entry, stateBySpeciesId);
    const matchesProgress =
      progressFilter === "all" ||
      (progressFilter === "missing" && state === "missing") ||
      (progressFilter === "seen" && state === "seen") ||
      (progressFilter === "caught" && state === "caught");
    const matchesQuery =
      !normalizedQuery ||
      entry.speciesName.toLocaleLowerCase().includes(normalizedQuery) ||
      entry.displayFormName?.toLocaleLowerCase().includes(normalizedQuery) ||
      String(entry.pokedexNumber) === normalizedQuery ||
      String(entry.nationalNumber ?? "") === normalizedQuery;

    return matchesProgress && matchesQuery;
  });

  return filtered;
};

export const getPokedexScopeCounts = ({
  entries,
  stateBySpeciesId,
}: {
  entries: MainlinePlayPokedexEntry[];
  stateBySpeciesId: ReadonlyMap<number, PokedexProgressState>;
}) => {
  const includedEntries = entries.filter(
    (entry) => entry.isIncludedInCompletion,
  );
  const getState = (entry: MainlinePlayPokedexEntry) =>
    getPokedexEntryState(entry, stateBySpeciesId);

  return {
    caughtCount: entries.filter((entry) => getState(entry) === "caught").length,
    caughtIncludedCount: includedEntries.filter(
      (entry) => getState(entry) === "caught",
    ).length,
    includedCount: includedEntries.length,
    seenCount: entries.filter((entry) => getState(entry) !== "missing").length,
    totalCount: entries.length,
  };
};

export const getPokedexScopeProgress = ({
  counts,
  isCompletionRelevant,
}: {
  counts: ReturnType<typeof getPokedexScopeCounts>;
  isCompletionRelevant: boolean;
}) => {
  const contributesToCompletion =
    isCompletionRelevant && counts.includedCount > 0;
  const caughtCount = contributesToCompletion
    ? counts.caughtIncludedCount
    : counts.caughtCount;
  const totalCount = contributesToCompletion
    ? counts.includedCount
    : counts.totalCount;

  return {
    caughtCount,
    kind: contributesToCompletion
      ? ("completion" as const)
      : ("tracking" as const),
    percentage:
      totalCount > 0 ? Math.round((caughtCount / totalCount) * 100) : 0,
    totalCount,
  };
};
