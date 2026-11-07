import { useId, type ReactNode } from "react";

import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestone } from "../../types";
import { getStoryRouteStopId } from "./story-route-stop";

/*
 * One chapter of the Story, a section of the route's card (#199): its name and how far
 * through it you are in a head that stays in view while you scroll, with
 * Expand / Collapse. The chapter you're in wears a ring. Folded, it shows
 * its milestones as a strip of small medallions, each opening its milestone,
 * so the whole game reads at a glance; open, its route of milestones and
 * places.
 */
export const StoryChapterCard = ({
  children,
  count,
  current,
  finished,
  milestones,
  name,
  nextMilestoneId,
  onMilestoneSelect,
  onToggle,
  open,
  opensSheet,
  selectedMilestoneId,
}: {
  /* Its route, shown while it's open. */
  children: ReactNode;
  count: string;
  /* The chapter holding your next objective. */
  current: boolean;
  finished: boolean;
  /* Its milestones in route order, for the folded strip. */
  milestones: StoryMilestone[];
  name: string;
  nextMilestoneId: number | null;
  /* A medallion in the folded strip opens its milestone. */
  onMilestoneSelect: (milestone: StoryMilestone) => void;
  onToggle: () => void;
  open: boolean;
  /* Below 1024px a milestone opens a sheet; beside the route, the panel. */
  opensSheet: boolean;
  /* The milestone open in the detail, ringed in the strip. */
  selectedMilestoneId: number | null;
}) => {
  const bodyId = useId();

  return (
    <section
      aria-label={name}
      className={cn(
        "rounded-2xl pb-3",
        /* The chapter you're in wears a ring inside the route's card. */
        current && "inset-ring-select-ink/25 inset-ring-2",
      )}
    >
      {/*
       * Its head stays in view while you scroll its route, to fold it at
       * will: pinned a little higher than the dock's offset so nothing shows
       * between them, and from 1024px at the top of the route card's own
       * scroll. It sits inside the ring, so it never covers it.
       */}
      <div className="bg-surface sticky top-[calc(var(--play-dock-offset,0px)-1rem)] z-10 mx-0.5 flex items-center gap-3 rounded-t-2xl pt-3.5 pr-2 pb-1 lg:top-0">
        <span className="grid w-14 shrink-0 place-items-center pl-1.5">
          <span
            className={cn(
              "grid size-8 place-items-center rounded-full",
              finished
                ? "bg-progress text-surface"
                : "bg-surface text-ink-3 inset-ring-progress inset-ring-[3px]",
            )}
          >
            <AppIcon
              icon={
                finished ? appIcons.status.active : appIcons.product.journey
              }
              size="sm"
            />
          </span>
        </span>
        <span className="flex min-w-0 flex-wrap items-baseline gap-x-2">
          <h3 className="title-card">{name}</h3>
          <span className="text-ink-3 text-13 font-semibold">{count}</span>
        </span>
        <Button
          type="button"
          variant="ghost"
          size="sm"
          aria-controls={bodyId}
          aria-expanded={open}
          aria-label={`${open ? "Collapse" : "Expand"} ${name}`}
          onClick={onToggle}
          className="ml-auto shrink-0"
        >
          {open ? "Collapse" : "Expand"}
          <AppIcon
            icon={appIcons.actions.expand}
            inline="end"
            className={cn(open && "rotate-180")}
          />
        </Button>
      </div>

      <div id={bodyId} className="mt-3">
        {open ? (
          children
        ) : milestones.length ? (
          <ul
            aria-label={`${name} milestones`}
            className="flex flex-wrap gap-1.5 px-1.5 sm:pl-17.5"
          >
            {milestones.map((milestone) => (
              <li key={milestone.id}>
                {/* Opens its milestone, as its stop would; the chapter stays folded. */}
                <button
                  type="button"
                  id={getStoryRouteStopId(milestone.id)}
                  aria-current={
                    milestone.id === selectedMilestoneId ? "true" : undefined
                  }
                  aria-haspopup={opensSheet ? "dialog" : undefined}
                  onClick={() => onMilestoneSelect(milestone)}
                  className={cn(
                    "focus-ring grid place-items-center rounded-full transition-shadow duration-150",
                    milestone.id === selectedMilestoneId &&
                      "ring-select-ink ring-offset-surface ring-2 ring-offset-2",
                  )}
                >
                  <MilestoneMarker
                    ahead="art"
                    badge={milestone.badge}
                    sequence={milestone.sequence}
                    size="sm"
                    state={
                      milestone.isCompleted
                        ? "done"
                        : milestone.id === nextMilestoneId
                          ? "next"
                          : "todo"
                    }
                    className={
                      !milestone.isCompleted && milestone.id !== nextMilestoneId
                        ? "bg-surface-2 inset-ring-dash"
                        : undefined
                    }
                    typeSlug={milestone.typeSlug}
                  />
                  <span className="sr-only">
                    {milestone.name}
                    {milestone.isCompleted ? ", recorded" : ""}
                  </span>
                </button>
              </li>
            ))}
          </ul>
        ) : null}
      </div>
    </section>
  );
};
