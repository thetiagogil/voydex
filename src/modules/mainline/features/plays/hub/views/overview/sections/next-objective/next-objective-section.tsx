import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import type { OverviewMilestone } from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type NextObjectiveSectionProps = {
  lastCompletedMilestone: OverviewMilestone | null;
  nextMilestone: OverviewMilestone | null;
  overview: MainlinePlayOverview | null;
  playId: string;
};

const getPosition = (
  milestone: OverviewMilestone,
  overview: MainlinePlayOverview | null,
) => {
  const completed = overview?.completed_required_milestone_count;
  const total = overview?.required_milestone_count;

  if (!milestone.is_required_for_completion || !total || completed == null) {
    return null;
  }

  return `Milestone ${completed + 1} of ${total}`;
};

/*
 * The next objective is quiet: a Fredoka title and the page's one main
 * button, which opens Story ready to record it.
 */
export const NextObjectiveSection = ({
  lastCompletedMilestone,
  nextMilestone,
  overview,
  playId,
}: NextObjectiveSectionProps) => {
  const position = nextMilestone ? getPosition(nextMilestone, overview) : null;
  const where =
    nextMilestone?.description ?? nextMilestone?.category_name ?? null;

  return (
    <Card aria-labelledby="next-objective-title" className="px-5 sm:px-7">
      <div className="flex h-full flex-col">
        <p className="text-game-deep text-13 flex items-center gap-2 font-extrabold">
          <AppIcon
            icon={
              nextMilestone ? appIcons.milestones.story : appIcons.status.active
            }
            size="md"
          />
          {nextMilestone
            ? ["Next objective", position].filter(Boolean).join(" · ")
            : "Main story complete"}
        </p>
        <h2
          id="next-objective-title"
          className="sm:text-44 mt-2.5 mb-2 text-[34px] leading-[1.02] tracking-[-0.025em]"
        >
          {nextMilestone?.milestone_name ?? "Every milestone recorded"}
        </h2>
        {where ? (
          <p className="text-ink-2 flex items-start gap-1.5 font-semibold">
            <AppIcon
              icon={appIcons.product.location}
              size="md"
              className="mt-0.5 shrink-0"
            />
            <span className="line-clamp-2">{where}</span>
          </p>
        ) : null}
        <div className="my-6 flex flex-col gap-3 sm:flex-row sm:flex-wrap sm:items-center">
          {nextMilestone?.milestone_id != null ? (
            <Link
              href={appRoutes.mainlinePlayProgressStoryRecord(
                playId,
                nextMilestone.milestone_id,
              )}
              className={cn(
                buttonVariants({ size: "lg" }),
                "h-auto min-h-13 py-3 text-left whitespace-normal sm:whitespace-nowrap",
              )}
            >
              <AppIcon icon={appIcons.status.active} />
              Record {nextMilestone.milestone_name}
            </Link>
          ) : null}
          <Link
            href={appRoutes.mainlinePlayProgressStory(playId)}
            className={buttonVariants({ size: "lg", variant: "outline" })}
          >
            <AppIcon icon={appIcons.milestones.story} />
            See the Story
          </Link>
        </div>
        <p className="border-line text-ink-2 text-14 mt-auto border-t pt-4 font-semibold">
          {lastCompletedMilestone ? (
            <>
              Last recorded{" "}
              <b className="text-ink font-extrabold">
                {lastCompletedMilestone.milestone_name}
              </b>
              {lastCompletedMilestone.completed_at
                ? ` · ${formatPlayDate(lastCompletedMilestone.completed_at)}`
                : null}
            </>
          ) : (
            "Nothing recorded yet."
          )}
        </p>
      </div>
    </Card>
  );
};
