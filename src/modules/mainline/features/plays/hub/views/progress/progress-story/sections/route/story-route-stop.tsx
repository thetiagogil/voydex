import type { AnimationEventHandler, ReactNode } from "react";

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
 * so how far you've come reads at a glance; their numbers keep 4.5:1.
 */
export const StoryRouteStop = ({
  id,
  opensSheet,
  marker,
  name,
  onAnimationEnd,
  onSelect,
  place,
  selected,
  state,
  status,
}: {
  id: string;
  marker: ReactNode;
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
}) => (
  <button
    id={id}
    type="button"
    aria-haspopup={opensSheet ? "dialog" : undefined}
    aria-pressed={selected}
    onClick={onSelect}
    onAnimationEnd={onAnimationEnd}
    className="focus-ring hover:bg-hover flex w-full items-center gap-3 rounded-xl py-1.5 pr-2 text-left transition-colors"
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
              ? "text-ink-2 font-bold"
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
      {status ? null : <span className="sr-only">Not recorded</span>}
    </span>
  </button>
);

/*
 * A place the route passes between milestones (Route 1, Viridian Forest): a
 * small quiet dot on the line and its name beside it, so you see the way to
 * the next milestone. Nothing to record; it opens what is there (its
 * battles, the Pokémon found there). The dot fills once you're past it.
 */
export const StoryRoutePlace = ({
  battleCount,
  id,
  name,
  onSelect,
  opensSheet,
  reached,
  selected,
}: {
  battleCount: number;
  id: string;
  name: string;
  onSelect: () => void;
  opensSheet: boolean;
  reached: boolean;
  selected: boolean;
}) => (
  <button
    id={id}
    type="button"
    aria-haspopup={opensSheet ? "dialog" : undefined}
    aria-pressed={selected}
    onClick={onSelect}
    className="focus-ring hover:bg-hover flex min-h-10 w-full items-center gap-3 rounded-xl pr-2 text-left transition-colors"
  >
    <span data-route-node className="grid w-14 shrink-0 place-items-center">
      <span
        className={cn(
          "size-3.5 rounded-full transition-shadow duration-150",
          reached
            ? "bg-progress/60"
            : "bg-surface inset-ring-dash inset-ring-[3px]",
          selected && selectedRing,
        )}
      />
    </span>
    <span
      className={cn(
        "text-14 min-w-0 truncate font-bold",
        selected ? "text-select-ink" : "text-ink-2",
      )}
    >
      {name}
    </span>
    {battleCount ? (
      <span className="text-ink-3 text-13 ml-auto inline-flex shrink-0 items-center gap-1 font-semibold">
        <AppIcon icon={appIcons.product.battle} size="xs" />
        {battleCount === 1 ? "1 battle" : `${battleCount} battles`}
      </span>
    ) : null}
  </button>
);

/*
 * Where the route enters a named chapter (Pokémon League, Island
 * Challenge): a small mark on the line, its name and how far through it you
 * are beside it. A finished chapter's mark is filled and checked.
 */
export const StoryRouteSign = ({
  count,
  finished,
  name,
}: {
  count: string;
  finished: boolean;
  name: string;
}) => (
  <div className="flex w-full items-center gap-3 pt-3 pb-1">
    <span data-route-node className="grid w-14 shrink-0 place-items-center">
      <span
        className={cn(
          "grid size-7 place-items-center rounded-full",
          finished
            ? "bg-progress text-surface"
            : "bg-surface text-ink-3 inset-ring-progress/45 inset-ring-[3px]",
        )}
      >
        <AppIcon
          icon={finished ? appIcons.status.active : appIcons.product.journey}
          size="xs"
        />
      </span>
    </span>
    <span className="flex min-w-0 flex-wrap items-baseline gap-x-2">
      <span className="title-card">{name}</span>
      <span className="text-ink-3 text-13 font-semibold">{count}</span>
    </span>
  </div>
);

const joinPlaceNames = (names: string[]) =>
  names.length > 1
    ? `${names.slice(0, -1).join(", ")} and ${names.at(-1)}`
    : (names[0] ?? "");

/*
 * Places you've walked, folded into one line on the route: their names in
 * order and how many, opening them all again in place.
 */
export const StoryRouteFold = ({
  names,
  onOpen,
}: {
  names: string[];
  onOpen: () => void;
}) => (
  <button
    type="button"
    aria-label={`Show ${names.length} places: ${joinPlaceNames(names)}`}
    onClick={onOpen}
    className="focus-ring hover:bg-hover flex min-h-10 w-full items-center gap-3 rounded-xl pr-2 text-left transition-colors"
  >
    <span
      data-route-node
      className="grid w-14 shrink-0 place-items-center gap-1 py-1"
    >
      <span className="bg-progress/60 size-2 rounded-full" />
      <span className="bg-progress/60 size-2 rounded-full" />
      <span className="bg-progress/60 size-2 rounded-full" />
    </span>
    <span className="text-ink-3 text-14 min-w-0 truncate font-semibold">
      {joinPlaceNames(names)}
    </span>
    <span className="text-ink-2 text-13 ml-auto inline-flex shrink-0 items-center gap-1 font-bold">
      {names.length} places
      <AppIcon icon={appIcons.actions.expand} size="xs" />
    </span>
  </button>
);
