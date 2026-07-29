import { describe, expect, it } from "vitest";

import type {
  MainlinePlayPokedexEntry,
  MainlinePlayPokedexScope,
} from "../types";
import {
  filterPokedexEntries,
  groupPokedexEntriesByNumberRange,
  getBrowseOnlyPokedexScopes,
  getNextPokedexStateForMode,
  getPokedexEntriesForBrowseScope,
  getPokedexScopeCounts,
  getPokedexScopeProgress,
  getSelectablePokedexScopes,
} from "./pokedex-progress-model";

const buildEntry = ({
  speciesId,
  state,
}: {
  speciesId: number;
  state: MainlinePlayPokedexEntry["state"];
}) =>
  ({
    displayFormName: null,
    isIncludedInCompletion: true,
    nationalNumber: speciesId,
    pokedexNumber: speciesId,
    speciesId,
    speciesName: `Pokémon ${speciesId}`,
    state,
  }) as MainlinePlayPokedexEntry;

const buildScope = ({
  entries,
  id,
  isCompletionRelevant,
}: {
  entries: MainlinePlayPokedexEntry[];
  id: number;
  isCompletionRelevant: boolean;
}) =>
  ({
    entries,
    id,
    isCompletionRelevant,
    kind: isCompletionRelevant ? "regional" : "local",
    name: `Pokédex ${id}`,
    slug: `pokedex-${id}`,
    sortOrder: id,
  }) satisfies MainlinePlayPokedexScope;

describe("Pokédex progress action model", () => {
  it("groups entries into stable 60-number Pokédex sections", () => {
    const entries = [
      buildEntry({ speciesId: 1, state: "missing" }),
      {
        ...buildEntry({ speciesId: 2, state: "seen" }),
        pokedexNumber: 60,
      },
      {
        ...buildEntry({ speciesId: 3, state: "caught" }),
        pokedexNumber: 61,
      },
      {
        ...buildEntry({ speciesId: 4, state: "missing" }),
        pokedexNumber: 121,
      },
    ];

    expect(
      groupPokedexEntriesByNumberRange({
        entries,
        maxPokedexNumber: 145,
      }),
    ).toEqual([
      expect.objectContaining({
        entries: [entries[0], entries[1]],
        id: "1-60",
        label: "001 – 060",
      }),
      expect.objectContaining({
        entries: [entries[2]],
        id: "61-120",
        label: "061 – 120",
      }),
      expect.objectContaining({
        entries: [entries[3]],
        id: "121-145",
        label: "121 – 145",
      }),
    ]);
  });

  it("keeps filtered entries in their original Pokédex-number section", () => {
    const entry = {
      ...buildEntry({ speciesId: 181, state: "seen" }),
      pokedexNumber: 181,
    };

    expect(
      groupPokedexEntriesByNumberRange({
        entries: [entry],
        maxPokedexNumber: 400,
      }),
    ).toEqual([
      expect.objectContaining({
        entries: [entry],
        label: "181 – 240",
      }),
    ]);
  });

  it("uses four digits for Pokédexes larger than 999 entries", () => {
    const entry = {
      ...buildEntry({ speciesId: 1025, state: "missing" }),
      pokedexNumber: 1025,
    };

    expect(
      groupPokedexEntriesByNumberRange({
        entries: [entry],
        maxPokedexNumber: 1025,
      })[0]?.label,
    ).toBe("1021 – 1025");
  });

  it("keeps independently completion-relevant Pokédexes as navigation scopes", () => {
    const aggregateEntries = [
      buildEntry({ speciesId: 1, state: "caught" }),
      buildEntry({ speciesId: 2, state: "seen" }),
    ];
    const scopes = [
      buildScope({
        entries: aggregateEntries,
        id: 1,
        isCompletionRelevant: true,
      }),
      buildScope({
        entries: [aggregateEntries[0]],
        id: 2,
        isCompletionRelevant: false,
      }),
      buildScope({
        entries: [buildEntry({ speciesId: 3, state: "missing" })],
        id: 3,
        isCompletionRelevant: true,
      }),
    ];

    expect(getSelectablePokedexScopes(scopes).map((scope) => scope.id)).toEqual(
      [1, 3],
    );
  });

  it("treats browse-only subsets as filters and preserves parent numbering", () => {
    const parentEntries = [
      buildEntry({ speciesId: 1, state: "caught" }),
      {
        ...buildEntry({ speciesId: 2, state: "seen" }),
        pokedexNumber: 24,
      },
      buildEntry({ speciesId: 3, state: "missing" }),
    ];
    const parentScope = buildScope({
      entries: parentEntries,
      id: 1,
      isCompletionRelevant: true,
    });
    const localScope = buildScope({
      entries: [
        {
          ...buildEntry({ speciesId: 2, state: "seen" }),
          pokedexNumber: 4,
        },
      ],
      id: 2,
      isCompletionRelevant: false,
    });
    const unrelatedScope = buildScope({
      entries: [buildEntry({ speciesId: 4, state: "missing" })],
      id: 3,
      isCompletionRelevant: false,
    });

    expect(
      getBrowseOnlyPokedexScopes({
        parentScope,
        scopes: [parentScope, localScope, unrelatedScope],
      }).map((scope) => scope.id),
    ).toEqual([2]);
    expect(
      getPokedexEntriesForBrowseScope({
        browseScope: localScope,
        entries: parentEntries,
      }),
    ).toEqual([parentEntries[1]]);
  });

  it("applies Seen as the authoritative mark type and toggles active Seen to Missing", () => {
    expect(getNextPokedexStateForMode({ mode: "seen", state: "missing" })).toBe(
      "seen",
    );
    expect(getNextPokedexStateForMode({ mode: "seen", state: "caught" })).toBe(
      "seen",
    );
    expect(getNextPokedexStateForMode({ mode: "seen", state: "seen" })).toBe(
      "missing",
    );
  });

  it("applies Caught as the authoritative mark type and toggles active Caught to Missing", () => {
    expect(
      getNextPokedexStateForMode({ mode: "caught", state: "missing" }),
    ).toBe("caught");
    expect(getNextPokedexStateForMode({ mode: "caught", state: "seen" })).toBe(
      "caught",
    );
    expect(
      getNextPokedexStateForMode({ mode: "caught", state: "caught" }),
    ).toBe("missing");
  });

  it("filters the internal absence state without exposing it as an action mode", () => {
    const entries = [
      buildEntry({ speciesId: 1, state: "missing" }),
      buildEntry({ speciesId: 2, state: "seen" }),
      buildEntry({ speciesId: 3, state: "caught" }),
    ];

    expect(
      filterPokedexEntries({
        entries,
        inclusionFilter: "all",
        progressFilter: "missing",
        query: "",
        stateBySpeciesId: new Map(),
      }).map((entry) => entry.speciesId),
    ).toEqual([1]);
  });

  it("treats Missing, Seen, and Caught as exclusive progress filters", () => {
    const entries = [
      buildEntry({ speciesId: 1, state: "missing" }),
      buildEntry({ speciesId: 2, state: "seen" }),
      buildEntry({ speciesId: 3, state: "caught" }),
    ];
    const filterByProgress = (progressFilter: "missing" | "seen" | "caught") =>
      filterPokedexEntries({
        entries,
        inclusionFilter: "all",
        progressFilter,
        query: "",
        stateBySpeciesId: new Map(),
      }).map((entry) => entry.speciesId);

    expect(filterByProgress("missing")).toEqual([1]);
    expect(filterByProgress("seen")).toEqual([2]);
    expect(filterByProgress("caught")).toEqual([3]);
  });

  it("uses completion-included entries for a completion-relevant Pokédex", () => {
    const entries = [
      buildEntry({ speciesId: 1, state: "caught" }),
      buildEntry({ speciesId: 2, state: "seen" }),
      {
        ...buildEntry({ speciesId: 3, state: "caught" }),
        isIncludedInCompletion: false,
      },
    ];
    const counts = getPokedexScopeCounts({
      entries,
      stateBySpeciesId: new Map(),
    });

    expect(
      getPokedexScopeProgress({
        counts,
        isCompletionRelevant: true,
      }),
    ).toEqual({
      caughtCount: 1,
      kind: "completion",
      percentage: 50,
      totalCount: 2,
    });
  });

  it("reports caught progress across all entries for a browse-only Pokédex", () => {
    const entries = [
      {
        ...buildEntry({ speciesId: 1, state: "caught" }),
        isIncludedInCompletion: false,
      },
      {
        ...buildEntry({ speciesId: 2, state: "seen" }),
        isIncludedInCompletion: false,
      },
      {
        ...buildEntry({ speciesId: 3, state: "missing" }),
        isIncludedInCompletion: false,
      },
    ];
    const counts = getPokedexScopeCounts({
      entries,
      stateBySpeciesId: new Map(),
    });

    expect(
      getPokedexScopeProgress({
        counts,
        isCompletionRelevant: false,
      }),
    ).toEqual({
      caughtCount: 1,
      kind: "tracking",
      percentage: 33,
      totalCount: 3,
    });
  });
});
