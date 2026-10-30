import type { AnimationEventHandler, ReactNode } from "react";

import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/* The stop's button id, so focus can come back to it when its sheet closes. */
export const getStoryRouteStopId = (milestoneId: number) =>
  `story-stop-${milestoneId}`;

/*
 * One milestone on the Story route: its marker on the line, its name and one
 * quiet line under it (the date, Next objective, Locked or Optional). The
 * whole stop opens the milestone and lifts as one, like a stamp; the one open
 * in the sheet wears a ring round its marker and its name in the selected
 * ink. Stops still ahead sink back (a grey ring on a grey fill, a quieter
 * name), so how far you've come reads at a glance; their numbers keep 4.5:1.
 */
export const StoryRouteStop = ({
  stacked = false,
  id,
  marker,
  name,
  onAnimationEnd,
  onSelect,
  selected,
  state,
  status,
}: {
  id: string;
  marker: ReactNode;
  name: string;
  onAnimationEnd?: AnimationEventHandler<HTMLButtonElement>;
  onSelect: () => void;
  selected: boolean;
  state: PlayMilestoneState;
  /* In a lane: its marker on the line at the left, its words beside it. */
  stacked?: boolean;
  status: ReactNode;
}) => (
  <button
    id={id}
    type="button"
    aria-haspopup="dialog"
    onClick={onSelect}
    onAnimationEnd={onAnimationEnd}
    className={cn(
      "focus-ring ease-hop relative flex w-full rounded-xl transition-transform duration-200 hover:-translate-y-1",
      stacked
        ? "items-center gap-3 py-0.5 pr-1.5 text-left"
        : "max-w-40 flex-col items-center gap-1.5 px-1.5 pt-1 pb-2 text-center",
    )}
  >
    <span
      data-route-node
      className={cn(
        "grid shrink-0 place-items-center",
        stacked ? "size-12" : "h-14.5",
      )}
    >
      <span
        className={cn(
          "grid place-items-center rounded-full transition-shadow duration-150",
          selected &&
            "ring-select-ink ring-offset-surface ring-[3px] ring-offset-[3px]",
        )}
      >
        {marker}
      </span>
    </span>
    <span
      className={cn("flex min-w-0 flex-col", stacked ? "gap-0.5" : "contents")}
    >
      <span
        className={cn(
          "text-14 line-clamp-2 leading-tight font-extrabold",
          state === "next" || selected
            ? "text-select-ink"
            : state === "todo"
              ? "text-ink-3 font-bold"
              : "text-ink",
        )}
      >
        {name}
      </span>
      {status ? (
        <span
          className={cn(
            "text-12",
            state === "next"
              ? "text-select-ink font-extrabold"
              : "text-ink-3 font-semibold",
          )}
        >
          {status}
        </span>
      ) : null}
    </span>
  </button>
);

/*
 * Where the route enters a named chapter (Pokémon League, Island
 * Challenge): a sign on the line with its name, and how far through it you
 * are under it. A finished chapter's sign is filled and checked.
 */
export const StoryRouteSign = ({
  count,
  finished,
  name,
  stacked = false,
}: {
  count: string;
  finished: boolean;
  name: string;
  /* In a lane: a small mark on the line, its name and count beside it. */
  stacked?: boolean;
}) =>
  stacked ? (
    <div className="flex w-full items-center gap-3 py-0.5">
      <span
        data-route-node
        className="grid size-12 shrink-0 place-items-center"
      >
        <span
          className={cn(
            "grid size-6 place-items-center rounded-full",
            finished
              ? "bg-progress text-surface"
              : "bg-surface inset-ring-progress/45 inset-ring-[3px]",
          )}
        >
          {finished ? (
            <AppIcon icon={appIcons.status.active} size="xs" />
          ) : null}
        </span>
      </span>
      <span className="flex min-w-0 flex-wrap items-baseline gap-x-2">
        <span className="title-card">{name}</span>
        <span className="text-ink-3 text-13 font-semibold">{count}</span>
      </span>
    </div>
  ) : (
    <div className="flex w-full max-w-44 flex-col items-center gap-1.5 px-1 pb-2 text-center">
      <span
        data-route-node
        className={cn(
          "text-12 sm:text-14 mt-3.75 flex min-h-9 items-center gap-1.5 rounded-[18px] px-2.5 py-1 leading-tight font-extrabold sm:px-3.5 sm:whitespace-nowrap",
          finished
            ? "bg-progress text-surface"
            : "bg-surface text-ink inset-ring-progress/45 inset-ring-2",
        )}
      >
        <AppIcon
          icon={finished ? appIcons.status.active : appIcons.product.journey}
          size="sm"
          className="shrink-0 max-sm:hidden"
        />
        <span>{name}</span>
      </span>
      <span className="text-ink-3 text-12 font-semibold">{count}</span>
    </div>
  );
