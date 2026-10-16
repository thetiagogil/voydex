import { RangeHeading } from "@/shared/components/range-heading";
import { Button } from "@/shared/components/ui/button";

import { PokedexSpeciesItem } from "../../components/pokedex-species-item";
import {
  getPokedexEntryState,
  type PokedexProgressEntrySection as PokedexProgressEntrySectionModel,
} from "../../data/pokedex-progress-model";
import type { PokedexProgressState, PokedexUpdateMode } from "../../types";

export const PokedexProgressEntrySection = ({
  isSpeciesPending,
  onBulkStateChange,
  onSpeciesStateChange,
  section,
  stateBySpeciesId,
  updateMode,
}: {
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
      isPending={isSpeciesPending(entry.speciesId)}
      mode={updateMode}
      onStateChange={(state) => onSpeciesStateChange(entry.speciesId, state)}
      state={getPokedexEntryState(entry, stateBySpeciesId)}
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
              disabled={everyEntryIsMarked}
              onClick={() => onBulkStateChange(speciesIds, updateMode)}
            >
              Mark all {updateMode}
            </Button>
            <Button
              type="button"
              size="sm"
              variant="ghost"
              aria-label={`Unmark all matching entries from ${section.label}`}
              disabled={everyEntryIsMissing}
              onClick={() => onBulkStateChange(speciesIds, "missing")}
            >
              Unmark all
            </Button>
          </>
        }
      />

      <div className="mt-4 grid grid-cols-3 gap-2 sm:grid-cols-[repeat(auto-fill,minmax(128px,1fr))] sm:gap-3">
        {entries}
      </div>
    </section>
  );
};
