import { useId, type ReactNode } from "react";

import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";
import { Progress } from "@/shared/components/ui/progress";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestone } from "../../types";

/*
 * One chapter of the Story as its own card (#199): its name and how far
 * through it you are, folding and opening from its head. The chapter you're
 * in says so and shows a bar of how far along it you are. Folded, it shows
 * its milestones as a strip of small medallions, so the whole game reads at
 * a glance; open, its route of milestones and places.
 */
export const StoryChapterCard = ({
  children,
  completed,
  count,
  current,
  finished,
  milestones,
  name,
  nextMilestoneId,
  onToggle,
  open,
  total,
}: {
  /* Its route, shown while it's open. */
  children: ReactNode;
  completed: number;
  count: string;
  /* The chapter holding your next objective. */
  current: boolean;
  finished: boolean;
  /* Its milestones in route order, for the folded strip. */
  milestones: StoryMilestone[];
  name: string;
  nextMilestoneId: number | null;
  onToggle: () => void;
  open: boolean;
  total: number;
}) => {
  const bodyId = useId();

  return (
    <Card
      role="region"
      aria-label={name}
      className={cn(
        "gap-0 px-3 py-3 sm:px-5 sm:py-4",
        current && "inset-ring-select-ink/25 inset-ring-2",
      )}
    >
      <button
        type="button"
        aria-controls={bodyId}
        aria-expanded={open}
        onClick={onToggle}
        className="focus-ring hover:bg-hover flex w-full items-center gap-3 rounded-xl py-1 pr-2 pl-1.5 text-left transition-colors"
      >
        <span className="grid w-14 shrink-0 place-items-center">
          <span
            className={cn(
              "grid size-8 place-items-center rounded-full",
              finished
                ? "bg-progress text-surface"
                : "bg-surface text-ink-3 inset-ring-progress/45 inset-ring-[3px]",
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
          <span className="title-card">{name}</span>
          <span className="text-ink-3 text-13 font-semibold">{count}</span>
          {current ? (
            <span className="text-select-ink text-13 font-extrabold">
              You&rsquo;re here
            </span>
          ) : null}
        </span>
        <span className="text-ink-2 text-13 ml-auto inline-flex shrink-0 items-center gap-1 font-bold">
          {open ? "Fold" : "Show"}
          <AppIcon
            icon={appIcons.actions.expand}
            size="xs"
            className={cn(open && "rotate-180")}
          />
        </span>
      </button>

      {current && total ? (
        <Progress
          aria-label={`${name} progress`}
          value={(completed / total) * 100}
          className="mt-2 px-1.5 sm:pl-17.5"
        />
      ) : null}

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
                <MilestoneMarker
                  badgeType={milestone.badgeType}
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
              </li>
            ))}
          </ul>
        ) : null}
      </div>
    </Card>
  );
};
