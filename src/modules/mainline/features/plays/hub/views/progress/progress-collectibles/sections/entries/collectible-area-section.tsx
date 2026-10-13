import { useEffect, useRef } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { RangeHeading } from "@/shared/components/range-heading";
import { StatusBadge } from "@/shared/components/status-badge";
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
 * One area: its name and how much of it is found, the bulk actions for what
 * the filters show, then its places, each with its tokens and any notes.
 * The checklist moves focus to the heading before a bulk change, which can
 * remove the button or the whole area. When the area stays, focus then goes
 * on to the opposite button, which the change always leaves.
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
            {summary.isComplete ? (
              <StatusBadge
                tone="warn"
                className="text-13 h-7 gap-1.5 px-3 font-extrabold [&>svg]:size-3.5!"
              >
                <AppIcon
                  icon={appIcons.product.completion}
                  className="stroke-3"
                  aria-hidden
                />
                Complete
              </StatusBadge>
            ) : null}
            {canMarkShown ? (
              <Button
                type="button"
                size="sm"
                variant="ghost"
                ref={markButtonRef}
                disabled={isPending}
                focusableWhenDisabled
                onClick={() => changeState(true)}
              >
                Mark {scope} found
                <span className="sr-only"> in {area.label}</span>
              </Button>
            ) : null}
            {canUnmarkShown ? (
              <Button
                type="button"
                size="sm"
                variant="ghost"
                ref={unmarkButtonRef}
                disabled={isPending}
                focusableWhenDisabled
                onClick={() => changeState(false)}
              >
                Unmark {scope}
                <span className="sr-only"> in {area.label}</span>
              </Button>
            ) : null}
          </>
        }
      />

      <div className="mt-4 flex flex-wrap gap-x-8 gap-y-6 pb-3">
        {groupCollectibleEntriesByPlace({ area, areaLevel }).map((place) => {
          const placeLabelId = `${place.id}-label`;
          const notes = place.entries.filter((entry) => entry.description);
          /* Unnamed places fill the row as v3's grid; named ones share it. */
          const isGrid = !place.label;

          return (
            <div
              key={place.id}
              role="group"
              aria-labelledby={place.label ? placeLabelId : headingId}
              className={cn(
                "flex max-w-full min-w-0 flex-col gap-3",
                isGrid && "w-full",
                notes.length > 0 && "min-w-[min(100%,15rem)]",
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
                <ul className="text-ink-2 text-13 grid w-0 min-w-full gap-1 pt-1 font-semibold">
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
          );
        })}
      </div>
    </section>
  );
};
