import { RangeHeading } from "@/shared/components/range-heading";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";

import { PokedexSpeciesItem } from "../../components/pokedex-species-item";
import {
  getPokedexEntryState,
  type PokedexProgressEntrySection as PokedexProgressEntrySectionModel,
} from "../../data/pokedex-progress-model";
import type {
  PokedexProgressState,
  PokedexUpdateMode,
  PokedexViewMode,
} from "../../types";

export const PokedexProgressEntrySection = ({
  versionGroupSlug,
  isSpeciesPending,
  onBulkStateChange,
  onSpeciesStateChange,
  section,
  stateBySpeciesId,
  updateMode,
  viewMode,
}: {
  versionGroupSlug: string;
  isSpeciesPending: (speciesId: number) => boolean;
  onBulkStateChange: (
    speciesIds: number[],
    state: PokedexProgressState,
  ) => void;
  onSpeciesStateChange: (
    speciesId: number,
    state: PokedexProgressState,
  ) => void;
  section: PokedexProgressEntrySectionModel;
  stateBySpeciesId: ReadonlyMap<number, PokedexProgressState>;
  updateMode: PokedexUpdateMode;
  viewMode: PokedexViewMode;
}) => {
  const speciesIds = section.entries.map((entry) => entry.speciesId);
  const isPending = speciesIds.some(isSpeciesPending);
  const everyEntryIsMarked = section.entries.every(
    (entry) => getPokedexEntryState(entry, stateBySpeciesId) === updateMode,
  );
  const everyEntryIsMissing = section.entries.every(
    (entry) => getPokedexEntryState(entry, stateBySpeciesId) === "missing",
  );
  const caughtCount = section.entries.filter(
    (entry) => getPokedexEntryState(entry, stateBySpeciesId) === "caught",
  ).length;
  const headingId = `pokedex-entry-section-${section.id}`;

  const seenCount = section.entries.filter(
    (entry) => getPokedexEntryState(entry, stateBySpeciesId) === "seen",
  ).length;
  const entries = section.entries.map((entry) => (
    <PokedexSpeciesItem
      key={`${section.id}:${entry.pokedexNumber}:${entry.speciesId}`}
      entry={entry}
      versionGroupSlug={versionGroupSlug}
      isPending={isSpeciesPending(entry.speciesId)}
      mode={updateMode}
      onStateChange={(state) => onSpeciesStateChange(entry.speciesId, state)}
      state={getPokedexEntryState(entry, stateBySpeciesId)}
      viewMode={viewMode}
    />
  ));

  return (
    <section aria-labelledby={headingId} aria-busy={isPending}>
      <RangeHeading
        headingLevel={3}
        title={<span className="tabular-nums">{section.label}</span>}
        titleId={headingId}
        count={`${caughtCount} caught · ${seenCount} seen`}
        actions={
          <>
            <Button
              type="button"
              size="sm"
              variant="ghost"
              aria-label={`Mark all matching entries from ${section.label} as ${updateMode}`}
              disabled={isPending || everyEntryIsMarked}
              onClick={() => onBulkStateChange(speciesIds, updateMode)}
            >
              Mark all {updateMode}
            </Button>
            <Button
              type="button"
              size="sm"
              variant="ghost"
              aria-label={`Unmark all matching entries from ${section.label}`}
              disabled={isPending || everyEntryIsMissing}
              onClick={() => onBulkStateChange(speciesIds, "missing")}
            >
              Unmark all
            </Button>
          </>
        }
      />

      {viewMode === "grid" ? (
        <div className="mt-4 grid grid-cols-3 gap-2 sm:grid-cols-[repeat(auto-fill,minmax(128px,1fr))] sm:gap-3">
          {entries}
        </div>
      ) : (
        <Card size="sm" className="mt-4 gap-0 py-0">
          <div role="list" className="grid min-w-0">
            {entries}
          </div>
        </Card>
      )}
    </section>
  );
};
