import type { AnimationEventHandler, ReactNode } from "react";

import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import type { AppIconComponent } from "@/shared/domain/icons/app-icons";
import { cn } from "@/shared/utils/cn";

/* The stop's button id, so focus can come back to it when its detail closes. */
export const getStoryRouteStopId = (milestoneId: number) =>
  `story-stop-${milestoneId}`;

/* A place's button id on the route, by its route key. */
export const getStoryRoutePlaceId = (key: string) => `story-${key}`;

/* The selected stop's ring round its marker or dot. */
const selectedRing =
  "ring-select-ink ring-offset-surface ring-[3px] ring-offset-[3px]";

/*
 * One milestone on the Story route: its marker on the line, its name and one
 * quiet line beside it (where it happens, then Next objective, Locked or
 * Optional). A recorded one adds its date, small, on a line of its own. The whole stop opens the milestone; the one open in
 * the detail wears a ring round its marker and its name in the selected ink.
 * Stops still ahead sink back (a grey ring on a grey fill, a quieter name),
 * so how far you've come reads at a glance; their numbers keep 4.5:1. A
 * recorded one is a row of its own, as a moment is a card: white with the
 * thin outline of a row you can open (`tile-link`), its medallion carrying
 * the colour, with what you got there on its right (`memento`).
 */
export const StoryRouteStop = ({
  id,
  memento,
  opensSheet,
  marker,
  name,
  onAnimationEnd,
  onSelect,
  place,
  recorded = false,
  recordedOn,
  selected,
  state,
  status,
}: {
  id: string;
  marker: ReactNode;
  /* What you got there, under a recorded stop: the choice, the team then. */
  memento?: ReactNode;
  name: string;
  onAnimationEnd?: AnimationEventHandler<HTMLButtonElement>;
  onSelect: () => void;
  /* Below 1024px it opens a sheet; beside the route, the detail panel. */
  opensSheet: boolean;
  /* Where it happens, before its status. */
  place: string | null;
  /* Recorded on the way: a row of its own, not a line of the route. */
  recorded?: boolean;
  /* When it was recorded: small and quiet, under where it happens. */
  recordedOn?: ReactNode;
  selected: boolean;
  state: PlayMilestoneState;
  /* Where it stands; null when it's simply not recorded yet. */
  status: ReactNode;
}) => (
  <button
    id={id}
    type="button"
    aria-haspopup={opensSheet ? "dialog" : undefined}
    aria-current={selected ? "true" : undefined}
    onClick={onSelect}
    onAnimationEnd={onAnimationEnd}
    className={cn(
      "focus-ring flex w-full flex-wrap items-center gap-x-3 text-left",
      /*
       * Pulled left by what its padding adds, so its marker stays on the
       * line with the stops around it.
       */
      recorded
        ? "tile-link my-1 -ml-1.5 w-[calc(100%+0.375rem)]"
        : "group rounded-lg py-1.5 pr-2 pl-1.5",
    )}
  >
    <span data-route-node className="grid size-14 shrink-0 place-items-center">
      <span
        className={cn(
          "grid place-items-center rounded-full transition-[box-shadow,scale] duration-150",
          /* Not yet recorded: the place's light hover, its marker grows a little. */
          !recorded && "group-hover:scale-105",
          selected && selectedRing,
        )}
      >
        {marker}
      </span>
    </span>
    {/* Takes what's left, so a long place line wraps here and never pushes the memento under. */}
    <span className="flex min-w-0 flex-1 flex-col gap-0.5">
      <span
        className={cn(
          "copy-strong leading-tight",
          state === "next" || selected
            ? "text-select-ink"
            : state === "todo"
              ? /* A light hover: the name comes forward. */
                "text-ink-3 group-hover:text-ink font-bold transition-colors"
              : "text-ink",
        )}
      >
        {name}
      </span>
      {place || status ? (
        <span
          className={cn(
            "text-13 flex flex-wrap items-center gap-x-1.5",
            state === "next"
              ? "text-select-ink font-extrabold"
              : "text-ink-3 font-semibold",
          )}
        >
          {place ? <span>{place}</span> : null}
          {place && status ? <span aria-hidden>·</span> : null}
          {status}
        </span>
      ) : null}
      {recordedOn ? (
        <span className="text-ink-3 copy-meta">{recordedOn}</span>
      ) : null}
      {status || recordedOn ? null : (
        <span className="sr-only">
          {state === "next" ? "Next objective" : "Not recorded"}
        </span>
      )}
    </span>
    {/* What you got there, on the card's right (wrapping under on a narrow one). */}
    {memento ? (
      <span className="ml-auto flex shrink-0 self-center max-sm:basis-full max-sm:pl-17">
        {memento}
      </span>
    ) : null}
  </button>
);

/* One count on a place's line: its icon and number, its word from 640px. */
const PlaceMark = ({
  count,
  icon,
  one,
  many,
}: {
  count: number;
  icon: AppIconComponent;
  many: string;
  one: string;
}) => (
  <span className="inline-flex items-center gap-1">
    <AppIcon icon={icon} size="sm" />
    {count}
    <span className="max-sm:sr-only">&nbsp;{count === 1 ? one : many}</span>
  </span>
);

/*
 * A place the route passes between milestones (Route 1, Viridian Forest): a
 * small quiet dot on the line with its name and how many battles are fought
 * there and how many Pokémon are given or traded there (#322), so you see
 * the way to the next milestone and what not to miss on it. Nothing to
 * record; it opens what is there (its note, its battles, the Pokémon found
 * there). The dot fills once you're past it.
 */
export const StoryRoutePlace = ({
  battleCount,
  giftCount,
  id,
  name,
  onSelect,
  opensSheet,
  reached,
  selected,
  tradeCount,
}: {
  battleCount: number;
  /* Pokémon handed over there as gifts (fossils and Eggs too). */
  giftCount: number;
  id: string;
  name: string;
  onSelect: () => void;
  opensSheet: boolean;
  reached: boolean;
  selected: boolean;
  /* In-game trades offered there. */
  tradeCount: number;
}) => (
  <button
    id={id}
    type="button"
    aria-haspopup={opensSheet ? "dialog" : undefined}
    aria-current={selected ? "true" : undefined}
    onClick={onSelect}
    className="focus-ring group flex min-h-10 w-full items-center gap-3 rounded-lg pr-2 pl-1.5 text-left"
  >
    <span data-route-node className="grid w-14 shrink-0 place-items-center">
      <span
        className={cn(
          /* A light hover: the dot grows a little and the name comes forward. */
          "size-3.5 rounded-full transition-[box-shadow,scale] duration-150 group-hover:scale-125",
          reached
            ? "bg-progress"
            : "bg-surface inset-ring-dash inset-ring-[3px]",
          selected && selectedRing,
        )}
      />
    </span>
    {/* Its name, and on the same line, what's there. Its note is in its detail. */}
    <span className="flex min-w-0 flex-1 items-baseline gap-3 py-1">
      <span
        className={cn(
          "copy-note min-w-0 truncate transition-colors",
          selected ? "text-select-ink" : "text-ink-2 group-hover:text-ink",
        )}
      >
        {name}
        {reached ? <span className="sr-only">, passed</span> : null}
      </span>
      {battleCount || giftCount || tradeCount ? (
        <span className="text-ink-3 copy-meta ml-auto inline-flex shrink-0 items-center gap-3">
          {battleCount ? (
            <PlaceMark
              count={battleCount}
              icon={appIcons.product.battle}
              one="battle"
              many="battles"
            />
          ) : null}
          {giftCount ? (
            <PlaceMark
              count={giftCount}
              icon={appIcons.product.gift}
              one="gift"
              many="gifts"
            />
          ) : null}
          {tradeCount ? (
            <PlaceMark
              count={tradeCount}
              icon={appIcons.product.trade}
              one="trade"
              many="trades"
            />
          ) : null}
        </span>
      ) : null}
    </span>
  </button>
);
