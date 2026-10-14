import { useEffect, useRef } from "react";

import { RangeHeading } from "@/shared/components/range-heading";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

import { CollectibleToken } from "../../components/collectible-token";
import type { MainlinePlayCollectibleEntry } from "../../types";
import {
  getCollectibleEntryState,
  groupCollectibleEntriesByPlace,
  type CollectibleArea,
  type CollectibleAreaLevel,
  type CollectibleAreaSummary,
} from "../../utils/collectibles-progress-model";

export const getCollectibleAreaHeadingId = (areaId: string) =>
  `${areaId}-heading`;

/*
 * One area: its name and how much of it is found, Mark all found and
 * Unmark all for what the filters show (as Pokédex's ranges), then its
 * places, each with its tokens and any notes. The checklist moves focus to
 * the heading before a bulk change, which can remove the whole area. When
 * the area stays, focus then goes on to the opposite button.
 */
export const CollectibleAreaSection = ({
  area,
  areaLevel,
  isEntryPending,
  onEntryToggle,
  onStateChange,
  stateByEntryId,
  summary,
}: {
  area: CollectibleArea;
  areaLevel: CollectibleAreaLevel;
  isEntryPending: (entryId: number) => boolean;
  onEntryToggle: (entry: MainlinePlayCollectibleEntry) => void;
  onStateChange: (isCollected: boolean) => void;
  stateByEntryId: ReadonlyMap<number, boolean>;
  summary: CollectibleAreaSummary;
}) => {
  const headingId = getCollectibleAreaHeadingId(area.id);
  const markButtonRef = useRef<HTMLButtonElement>(null);
  const unmarkButtonRef = useRef<HTMLButtonElement>(null);
  const focusAfterChangeRef = useRef<"mark" | "unmark" | null>(null);
  const isPending = area.entries.some((entry) => isEntryPending(entry.id));
  const shownFoundCount = area.entries.filter((entry) =>
    getCollectibleEntryState(entry, stateByEntryId),
  ).length;
  const canMarkShown = shownFoundCount < area.entries.length;
  const canUnmarkShown = shownFoundCount > 0;
  /* With filters on, the bulk actions say they reach only what's shown. */
  const scope = area.entries.length < summary.entries.length ? "shown" : "area";
  /* No deps: the change's own render is the first to show the opposite button. */
  useEffect(() => {
    const intent = focusAfterChangeRef.current;

    if (intent) {
      focusAfterChangeRef.current = null;
      (intent === "mark" ? markButtonRef : unmarkButtonRef).current?.focus({
        preventScroll: true,
      });
    }
  });

  const changeState = (isCollected: boolean) => {
    onStateChange(isCollected);
    focusAfterChangeRef.current = isCollected ? "unmark" : "mark";
  };

  const numbers = summary.entries.map((entry) => entry.sortOrder);
  const numberRange =
    numbers.length > 1
      ? `#${Math.min(...numbers)}–${Math.max(...numbers)}`
      : null;

  return (
    <section
      id={area.id}
      aria-labelledby={headingId}
      aria-busy={isPending}
      className="scroll-mt-[calc(100px-var(--play-dock-offset,0px))]"
    >
      <RangeHeading
        headingLevel={3}
        /* Focus lands here before a bulk change. */
        title={area.label}
        titleFocusable
        titleId={headingId}
        count={
          <>
            {summary.foundCount} of {summary.entries.length}
            {numberRange && !summary.isComplete ? ` · ${numberRange}` : null}
          </>
        }
        actions={
          <>
            <Button
              type="button"
              size="sm"
              variant="ghost"
              ref={markButtonRef}
              disabled={!canMarkShown}
              focusableWhenDisabled
              onClick={() => changeState(true)}
            >
              Mark {scope === "area" ? "all" : "shown"} found
              <span className="sr-only"> in {area.label}</span>
            </Button>
            <Button
              type="button"
              size="sm"
              variant="ghost"
              ref={unmarkButtonRef}
              disabled={!canUnmarkShown}
              focusableWhenDisabled
              onClick={() => changeState(false)}
            >
              Unmark {scope === "area" ? "all" : "shown"}
              <span className="sr-only"> in {area.label}</span>
            </Button>
          </>
        }
      />

      {/*
       * Unnamed places fill the row as v3's grid. Named places share equal
       * columns, so their names and tokens line up however many each holds.
       */}
      <div className="mt-4 grid grid-cols-2 gap-x-4 gap-y-5 pb-3 sm:grid-cols-[repeat(auto-fill,minmax(14rem,1fr))] sm:gap-x-6">
        {groupCollectibleEntriesByPlace({ area, areaLevel }).map((place) => {
          const placeLabelId = `${place.id}-label`;
          const notes = place.entries.filter((entry) => entry.description);
          const isGrid = !place.label;

          return (
            <div
              key={place.id}
              role="group"
              aria-labelledby={place.label ? placeLabelId : headingId}
              className={cn(
                "flex min-w-0 flex-col gap-3",
                isGrid && "col-span-full",
              )}
            >
              {place.label ? (
                <p
                  id={placeLabelId}
                  className="text-ink-2 text-14 leading-tight font-bold"
                >
                  {place.label}
                </p>
              ) : null}
              <div className="grid min-w-0 gap-3">
                <div
                  className={cn(
                    "gap-x-2.5 gap-y-4 sm:gap-x-3 sm:gap-y-4.5",
                    isGrid
                      ? "grid grid-cols-5 sm:grid-cols-[repeat(auto-fill,minmax(64px,1fr))]"
                      : "flex flex-wrap",
                  )}
                >
                  {place.entries.map((entry) => (
                    <CollectibleToken
                      key={entry.id}
                      className={isGrid ? "w-full" : "size-14 sm:size-16"}
                      describedBy={
                        entry.description
                          ? `collectible-note-${entry.id}`
                          : undefined
                      }
                      entry={entry}
                      isFound={getCollectibleEntryState(entry, stateByEntryId)}
                      isPending={isEntryPending(entry.id)}
                      onToggle={() => onEntryToggle(entry)}
                    />
                  ))}
                </div>
                {notes.length ? (
                  <ul className="text-ink-2 text-13 grid gap-1 pt-1 font-semibold">
                    {notes.map((entry) => (
                      <li key={entry.id} id={`collectible-note-${entry.id}`}>
                        <b className="text-ink font-extrabold tabular-nums">
                          #{entry.sortOrder}
                        </b>{" "}
                        {entry.description}
                      </li>
                    ))}
                  </ul>
                ) : null}
              </div>
            </div>
          );
        })}
      </div>
    </section>
  );
};
