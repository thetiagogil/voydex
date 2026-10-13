import { Medallion } from "@/modules/mainline/features/plays/shared/components/medallion";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestone } from "../../types";
import { getStoryMilestoneIcon } from "../../utils/story-milestone-icon";

export type StoryMilestoneRowState = "done" | "next" | "todo";

export const getStoryMilestoneRowState = (
  milestone: StoryMilestone,
  nextMilestoneId: number | null,
): StoryMilestoneRowState =>
  milestone.isCompleted
    ? "done"
    : milestone.id === nextMilestoneId
      ? "next"
      : "todo";

/*
 * A recorded milestone wears its medallion: the badge in its type, anything
 * else in gold, a little smaller on phones so it fits the 30px column. The
 * next one is a game-coloured ring around the objective flag, an accent and
 * not a fill; the rest show their number in a quiet ring.
 */
export const StoryMilestoneMarker = ({
  className,
  milestone,
  state,
}: {
  className?: string;
  milestone: StoryMilestone;
  state: StoryMilestoneRowState;
}) => {
  if (state === "done") {
    return (
      <Medallion
        className={cn("max-sm:size-7", className)}
        size="sm"
        content={
          milestone.badgeType
            ? { kind: "badge", type: milestone.badgeType }
            : { icon: getStoryMilestoneIcon(milestone.typeSlug), kind: "gold" }
        }
      />
    );
  }

  return (
    <span
      aria-hidden
      className={cn(
        "text-13 grid size-[30px] shrink-0 place-items-center rounded-full font-extrabold tabular-nums sm:size-[34px]",
        state === "next"
          ? "bg-surface text-game-deep shadow-[inset_0_0_0_2px_var(--game)]"
          : "text-ink-3 shadow-[inset_0_0_0_1.5px_var(--line)]",
        className,
      )}
    >
      {state === "next" ? (
        <AppIcon icon={appIcons.milestones.story} size="sm" />
      ) : (
        milestone.sequence
      )}
    </span>
  );
};
