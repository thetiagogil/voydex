"use client";

import { useState } from "react";
import { usePathname, useRouter } from "next/navigation";
import { toast } from "sonner";

import { EmptyState } from "@/shared/components/empty-state";

import {
  getBrowseOnlyPokedexScopes,
  getPokedexEntryState,
  getSelectablePokedexScopes,
} from "./data/pokedex-progress-model";
import {
  updatePokedexSpeciesProgress,
  updatePokedexSpeciesProgressBulk,
} from "./server/pokedex-progress-action";
import { PokedexProgressBrowserSection } from "./sections/browser/pokedex-progress-browser-section";
import { PokedexScopeOverviewSection } from "./sections/scope-overview/pokedex-scope-overview-section";
import type {
  MainlinePlayProgressPokedexData,
  PokedexProgressState,
} from "./types";

const buildInitialProgressState = (data: MainlinePlayProgressPokedexData) => {
  const stateBySpeciesId = new Map<number, PokedexProgressState>();

  for (const entry of data.scopes.flatMap((scope) => scope.entries)) {
    const current = stateBySpeciesId.get(entry.speciesId);

    if (
      !current ||
      entry.state === "caught" ||
      (entry.state === "seen" && current === "missing")
    ) {
      stateBySpeciesId.set(entry.speciesId, entry.state);
    }
  }

  return stateBySpeciesId;
};

export const MainlinePlayProgressPokedex = ({
  data,
  initialScopeSlug,
  playId,
}: {
  data: MainlinePlayProgressPokedexData;
  initialScopeSlug?: string;
  playId: string;
}) => {
  const pathname = usePathname();
  const router = useRouter();
  const selectableScopes = getSelectablePokedexScopes(data.scopes);
  const initialScope =
    selectableScopes.find((scope) => scope.slug === initialScopeSlug) ??
    selectableScopes[0];
  const [activeScopeId, setActiveScopeId] = useState(initialScope?.id ?? null);
  const [stateBySpeciesId, setStateBySpeciesId] = useState(() =>
    buildInitialProgressState(data),
  );
  const [pendingSpeciesIds, setPendingSpeciesIds] = useState(
    () => new Set<number>(),
  );
  const activeScope =
    selectableScopes.find((scope) => scope.id === activeScopeId) ??
    selectableScopes[0] ??
    null;

  if (!activeScope) {
    return (
      <EmptyState
        headingLevel="h2"
        title="No Pokédex available"
        description="This game's Pokédex tracking data is not available yet."
      />
    );
  }

  const browseOnlyScopes = getBrowseOnlyPokedexScopes({
    parentScope: activeScope,
    scopes: data.scopes,
  });

  const updateSpeciesStates = async (
    requestedSpeciesIds: number[],
    state: PokedexProgressState,
  ) => {
    const speciesIds = [...new Set(requestedSpeciesIds)].filter(
      (speciesId) => !pendingSpeciesIds.has(speciesId),
    );
    const entriesBySpeciesId = new Map(
      data.scopes
        .flatMap((scope) => scope.entries)
        .map((entry) => [entry.speciesId, entry] as const),
    );
    const previousStates = new Map<number, PokedexProgressState>();

    for (const speciesId of speciesIds) {
      const matchingEntry = entriesBySpeciesId.get(speciesId);

      if (!matchingEntry) {
        continue;
      }

      const previousState = getPokedexEntryState(
        matchingEntry,
        stateBySpeciesId,
      );

      if (previousState !== state) {
        previousStates.set(speciesId, previousState);
      }
    }

    const speciesIdsToUpdate = [...previousStates.keys()];

    if (!speciesIdsToUpdate.length) {
      return;
    }

    setStateBySpeciesId((current) => {
      const next = new Map(current);

      for (const speciesId of speciesIdsToUpdate) {
        next.set(speciesId, state);
      }

      return next;
    });
    setPendingSpeciesIds((current) => {
      const next = new Set(current);

      for (const speciesId of speciesIdsToUpdate) {
        next.add(speciesId);
      }

      return next;
    });

    try {
      const result =
        speciesIdsToUpdate.length === 1
          ? await updatePokedexSpeciesProgress({
              playId,
              speciesId: speciesIdsToUpdate[0],
              state,
            })
          : await updatePokedexSpeciesProgressBulk({
              playId,
              speciesIds: speciesIdsToUpdate,
              state,
            });

      if (result.status === "error") {
        throw new Error(result.message);
      }

      if (speciesIdsToUpdate.length > 1) {
        toast.success(result.message);
      }
    } catch (error) {
      setStateBySpeciesId((current) => {
        const next = new Map(current);

        for (const [speciesId, previousState] of previousStates) {
          next.set(speciesId, previousState);
        }

        return next;
      });
      toast.error(
        error instanceof Error
          ? error.message
          : "Unable to update Pokédex progress.",
      );
    } finally {
      setPendingSpeciesIds((current) => {
        const next = new Set(current);

        for (const speciesId of speciesIdsToUpdate) {
          next.delete(speciesId);
        }

        return next;
      });
    }
  };

  const selectScope = (scopeId: number) => {
    const scope = selectableScopes.find(
      (candidate) => candidate.id === scopeId,
    );

    if (!scope) {
      return;
    }

    setActiveScopeId(scopeId);

    const searchParams = new URLSearchParams(window.location.search);
    searchParams.set("pokedex", scope.slug);
    router.replace(`${pathname}?${searchParams.toString()}`, {
      scroll: false,
    });
  };

  return (
    <div className="grid grid-cols-1 gap-6">
      <PokedexScopeOverviewSection
        onScopeChange={selectScope}
        scope={activeScope}
        scopes={selectableScopes}
        stateBySpeciesId={stateBySpeciesId}
      />

      <PokedexProgressBrowserSection
        key={activeScope.id}
        browseScopes={browseOnlyScopes}
        gameSlug={data.gameSlug}
        isSpeciesPending={(speciesId) => pendingSpeciesIds.has(speciesId)}
        onSpeciesBulkStateChange={(speciesIds, state) => {
          void updateSpeciesStates(speciesIds, state);
        }}
        onSpeciesStateChange={(speciesId, state) => {
          void updateSpeciesStates([speciesId], state);
        }}
        scope={activeScope}
        stateBySpeciesId={stateBySpeciesId}
      />
    </div>
  );
};
