"use client";

import { useState } from "react";
import { usePathname, useRouter } from "next/navigation";
import { toast } from "sonner";

import { useOptimisticMarks } from "@/modules/mainline/features/plays/shared/client/use-optimistic-marks";
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
  const {
    isPending: isSpeciesPending,
    mark,
    valueById: stateBySpeciesId,
  } = useOptimisticMarks(() => buildInitialProgressState(data));
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
    const entriesBySpeciesId = new Map(
      data.scopes
        .flatMap((scope) => scope.entries)
        .map((entry) => [entry.speciesId, entry] as const),
    );
    const previous = new Map<number, PokedexProgressState>();

    for (const speciesId of new Set(requestedSpeciesIds)) {
      const entry = entriesBySpeciesId.get(speciesId);

      if (!entry || isSpeciesPending(speciesId)) {
        continue;
      }

      const previousState = getPokedexEntryState(entry, stateBySpeciesId);

      if (previousState !== state) {
        previous.set(speciesId, previousState);
      }
    }

    const speciesIds = [...previous.keys()];

    if (!speciesIds.length) {
      return;
    }

    const result = await mark({
      fallbackError: "Unable to update Pokédex progress.",
      next: new Map(speciesIds.map((speciesId) => [speciesId, state])),
      previous,
      save: () =>
        speciesIds.length === 1
          ? updatePokedexSpeciesProgress({
              playId,
              speciesId: speciesIds[0],
              state,
            })
          : updatePokedexSpeciesProgressBulk({ playId, speciesIds, state }),
    });

    if (result && speciesIds.length > 1) {
      toast.success(result.message);
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
        isSpeciesPending={isSpeciesPending}
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
