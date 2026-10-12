import { Button } from "@/shared/components/ui/button";

import type { MainlinePlayCollectibleEntry } from "../../types";
import { getCollectibleEntryState } from "../../utils/collectibles-progress-model";
import { CollectibleEntryRow } from "./collectible-entry-row";

export const CollectibleLocationSection = ({
  entries,
  isEntryPending,
  label,
  onEntryToggle,
  onSectionStateChange,
  stateByEntryId,
}: {
  entries: MainlinePlayCollectibleEntry[];
  isEntryPending: (entryId: number) => boolean;
  label: string;
  onEntryToggle: (entry: MainlinePlayCollectibleEntry) => void;
  onSectionStateChange: (
    entries: MainlinePlayCollectibleEntry[],
    isCollected: boolean,
  ) => void;
  stateByEntryId: ReadonlyMap<number, boolean>;
}) => {
  const collectedCount = entries.filter((entry) =>
    getCollectibleEntryState(entry, stateByEntryId),
  ).length;
  const headingId = `collectible-location-${label
    .toLocaleLowerCase()
    .replaceAll(/[^a-z0-9]+/g, "-")}`;
  const isPending = entries.some((entry) => isEntryPending(entry.id));
  const everyEntryIsCollected = collectedCount === entries.length;
  const everyEntryIsMissing = collectedCount === 0;

  return (
    <section aria-labelledby={headingId} aria-busy={isPending}>
      <div className="border-line bg-muted/20 flex min-h-11 flex-wrap items-center justify-between gap-3 border-y px-3 py-2">
        <h3 id={headingId} className="font-display text-sm font-semibold">
          {label}
        </h3>

        <div className="flex flex-wrap items-center justify-end gap-3">
          <span className="text-muted-foreground text-xs tabular-nums">
            {collectedCount}/{entries.length} collected
          </span>

          <div className="flex items-center gap-1.5">
            <Button
              type="button"
              size="xs"
              variant="outline"
              aria-label={`Mark all matching entries from ${label} as collected`}
              disabled={isPending || everyEntryIsCollected}
              onClick={() => onSectionStateChange(entries, true)}
            >
              Mark all
            </Button>
            <Button
              type="button"
              size="xs"
              variant="outline"
              aria-label={`Unmark all matching entries from ${label}`}
              disabled={isPending || everyEntryIsMissing}
              onClick={() => onSectionStateChange(entries, false)}
            >
              Unmark all
            </Button>
          </div>
        </div>
      </div>

      <div role="list" className="divide-line grid divide-y">
        {entries.map((entry) => (
          <CollectibleEntryRow
            key={entry.id}
            entry={entry}
            isCollected={getCollectibleEntryState(entry, stateByEntryId)}
            isPending={isEntryPending(entry.id)}
            onToggle={() => onEntryToggle(entry)}
          />
        ))}
      </div>
    </section>
  );
};
