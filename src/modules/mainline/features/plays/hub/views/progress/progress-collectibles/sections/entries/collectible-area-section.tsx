import { useEffect, useRef } from "react";

import { CornerBubble } from "@/shared/components/corner-bubble";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { RangeHeading } from "@/shared/components/range-heading";
import { Button } from "@/shared/components/ui/button";

import { CollectibleToken } from "../../components/collectible-token";
import type { MainlinePlayCollectibleEntry } from "../../types";
import {
  getCollectibleEntryState,
  type CollectibleArea,
  type CollectibleAreaLevel,
  type CollectibleAreaSummary,
} from "../../utils/collectibles-progress-model";

export const getCollectibleAreaHeadingId = (areaId: string) =>
  `${areaId}-heading`;

/*
 * One area: its name and how much of it is found, Mark all found and
 * Unmark all for what the filters show (as Pokédex's ranges), then its
 * tokens in one grid. The checklist moves focus to
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
       * Every collectible of the area in one grid, as v3's. Where it hides is
       * in its name; a collectible with a requirement wears an "i" that
       * opens it, so notes never break the grid.
       */}
      <div className="mt-4 grid grid-cols-5 gap-x-2.5 gap-y-4 pb-3 sm:grid-cols-[repeat(auto-fill,minmax(64px,1fr))] sm:gap-x-3 sm:gap-y-4.5">
        {area.entries.map((entry) => {
          const place =
            areaLevel === "place" ? null : entry.subLocationLabel || null;

          return (
            /* The token and its "i" lift together on hover. */
            <span
              key={entry.id}
              className="relative transition-transform duration-150 hover:-translate-y-0.5"
            >
              <CollectibleToken
                className="w-full"
                entry={entry}
                isFound={getCollectibleEntryState(entry, stateByEntryId)}
                isPending={isEntryPending(entry.id)}
                onToggle={() => onEntryToggle(entry)}
                place={place}
              />
              {entry.description ? (
                <CornerBubble>
                  <ExplanatoryTip
                    triggerVariant="raised"
                    triggerLabel={`What #${entry.sortOrder} needs`}
                    contentClassName="w-64"
                    content={
                      <p>
                        {place ? <b>{place}. </b> : null}
                        {entry.description}
                      </p>
                    }
                  />
                </CornerBubble>
              ) : null}
            </span>
          );
        })}
      </div>
    </section>
  );
};
