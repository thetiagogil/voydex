import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

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
  gameSlug,
  isSpeciesPending,
  onBulkStateChange,
  onSpeciesStateChange,
  section,
  stateBySpeciesId,
  updateMode,
  viewMode,
}: {
  gameSlug: string;
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

  return (
    <section aria-labelledby={headingId} aria-busy={isPending}>
      <div className="border-line bg-muted/20 flex min-h-11 flex-wrap items-center justify-between gap-3 border-y px-3 py-2">
        <h3
          id={headingId}
          className="font-display text-sm font-semibold tabular-nums"
        >
          {section.label}
        </h3>

        <div className="flex flex-wrap items-center justify-end gap-3">
          <span className="text-muted-foreground text-xs tabular-nums">
            {caughtCount}/{section.entries.length} caught
          </span>

          <div className="flex items-center gap-1.5">
            <Button
              type="button"
              size="xs"
              variant="outline"
              aria-label={`Mark all matching entries from ${section.label} as ${updateMode}`}
              disabled={isPending || everyEntryIsMarked}
              onClick={() => onBulkStateChange(speciesIds, updateMode)}
            >
              Mark all
            </Button>
            <Button
              type="button"
              size="xs"
              variant="outline"
              aria-label={`Unmark all matching entries from ${section.label}`}
              disabled={isPending || everyEntryIsMissing}
              onClick={() => onBulkStateChange(speciesIds, "missing")}
            >
              Unmark all
            </Button>
          </div>
        </div>
      </div>

      <div
        role={viewMode === "list" ? "list" : undefined}
        className={cn(
          viewMode === "grid"
            ? "grid grid-cols-2 gap-3 p-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6"
            : "divide-line grid min-w-0 divide-y",
        )}
      >
        {section.entries.map((entry) => (
          <PokedexSpeciesItem
            key={`${section.id}:${entry.pokedexNumber}:${entry.speciesId}`}
            entry={entry}
            gameSlug={gameSlug}
            isPending={isSpeciesPending(entry.speciesId)}
            mode={updateMode}
            onStateChange={(state) =>
              onSpeciesStateChange(entry.speciesId, state)
            }
            state={getPokedexEntryState(entry, stateBySpeciesId)}
            viewMode={viewMode}
          />
        ))}
      </div>
    </section>
  );
};
