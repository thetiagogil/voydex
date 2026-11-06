import type { AnimationEventHandler, CSSProperties, ReactNode } from "react";

import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
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
 * quiet line beside it (where it happens, then the date, Next objective,
 * Locked or Optional). The whole stop opens the milestone; the one open in
 * the detail wears a ring round its marker and its name in the selected ink.
 * Stops still ahead sink back (a grey ring on a grey fill, a quieter name),
 * so how far you've come reads at a glance; their numbers keep 4.5:1. A
 * recorded one is a sticker (loud where you remember): tinted in its badge's
 * type, with what you got there under it (`memento`).
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
  selected,
  state,
  status,
  sticker,
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
  selected: boolean;
  state: PlayMilestoneState;
  /* Where it stands; null when it's simply not recorded yet. */
  status: ReactNode;
  /* Recorded: a sticker in this tint (`--t`, from its badge's type). */
  sticker?: CSSProperties | null;
}) => (
  <button
    id={id}
    type="button"
    aria-haspopup={opensSheet ? "dialog" : undefined}
    aria-current={selected ? "true" : undefined}
    onClick={onSelect}
    onAnimationEnd={onAnimationEnd}
    style={sticker ?? undefined}
    className={cn(
      "focus-ring flex w-full flex-wrap items-center gap-x-3 text-left",
      /*
       * Even padding all round; pulled left so its marker stays on the line
       * with the stops around it.
       */
      sticker
        ? "sticker ease-hop my-1 -ml-1.5 w-[calc(100%+0.375rem)] rounded-2xl p-2 pr-3 transition-transform duration-200 hover:-translate-y-0.5"
        : "group rounded-xl py-1.5 pr-2 pl-1.5",
    )}
  >
    <span data-route-node className="grid size-14 shrink-0 place-items-center">
      <span
        className={cn(
          "grid place-items-center rounded-full transition-shadow duration-150",
          selected && selectedRing,
        )}
      >
        {marker}
      </span>
    </span>
    <span className="flex min-w-0 flex-col gap-0.5">
      <span
        className={cn(
          "text-16 leading-tight font-extrabold",
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
      {status ? null : (
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

/*
 * A place the route passes between milestones (Route 1, Viridian Forest): a
 * small quiet dot on the line, its name beside it and, where something
 * happens there, a quiet line saying what, so you see the way to
 * the next milestone. Nothing to record; it opens what is there (its
 * battles, the Pokémon found there). The dot fills once you're past it.
 */
export const StoryRoutePlace = ({
  battleCount,
  id,
  name,
  note,
  onPrefetch,
  onSelect,
  opensSheet,
  reached,
  selected,
}: {
  battleCount: number;
  id: string;
  name: string;
  /* What happens there, in a quiet second line. */
  note: string | null;
  /* Pointed at or focused: what it opens can start loading. */
  onPrefetch: () => void;
  onSelect: () => void;
  opensSheet: boolean;
  reached: boolean;
  selected: boolean;
}) => (
  <button
    id={id}
    type="button"
    aria-haspopup={opensSheet ? "dialog" : undefined}
    aria-current={selected ? "true" : undefined}
    onClick={onSelect}
    onFocus={onPrefetch}
    onPointerEnter={onPrefetch}
    className="focus-ring group flex min-h-10 w-full items-center gap-3 rounded-xl pr-2 pl-1.5 text-left"
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
    <span className="flex min-w-0 flex-col py-1">
      <span
        className={cn(
          "text-14 truncate font-bold transition-colors",
          selected ? "text-select-ink" : "text-ink-2 group-hover:text-ink",
        )}
      >
        {name}
        {reached ? <span className="sr-only">, passed</span> : null}
      </span>
      {note ? (
        <span className="text-ink-3 text-13 line-clamp-2 font-semibold">
          {note}
        </span>
      ) : null}
    </span>
    {battleCount ? (
      <span className="text-ink-3 text-13 ml-auto inline-flex shrink-0 items-center gap-1 font-semibold">
        <AppIcon icon={appIcons.product.battle} size="xs" />
        {battleCount === 1 ? "1 battle" : `${battleCount} battles`}
      </span>
    ) : null}
  </button>
);
