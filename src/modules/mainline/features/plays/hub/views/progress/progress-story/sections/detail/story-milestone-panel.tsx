import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone, StoryScope } from "../../types";
import { StoryMilestoneActions } from "./story-milestone-actions";
import { StoryMilestoneDetail } from "./story-milestone-detail";

/* The panel's heading, which takes focus when a closed row is out of view. */
export const storyPanelTitleId = "story-panel-title";

const titleClassName =
  "text-32 mt-2.5 mb-2 leading-[1.02] tracking-[-0.025em] outline-none lg:text-[36px]";

/*
 * The card beside the list: the scope's next objective, with the page's main
 * button, or the milestone you picked, read in full. Quiet: a Fredoka title on
 * a cream card.
 */
export const StoryMilestonePanel = ({
  chapterName,
  className,
  milestone,
  onAction,
  onClose,
  scope,
}: {
  chapterName: string | null;
  className?: string;
  milestone: StoryMilestone | null;
  onAction: (
    milestone: StoryMilestone,
    intent: StoryMilestoneActionIntent,
  ) => void;
  /* Given while a picked milestone replaces the next objective. */
  onClose?: () => void;
  scope: StoryScope;
}) => {
  if (!milestone) {
    return (
      <Card
        role="region"
        aria-labelledby={storyPanelTitleId}
        className={cn("px-5 sm:px-7", className)}
      >
        <div>
          <p className="text-game-deep text-13 flex items-center gap-2 font-extrabold">
            <AppIcon icon={appIcons.product.completion} size="md" />
            {scope.completedCount} of {scope.totalCount} recorded
          </p>
          <h2 id={storyPanelTitleId} tabIndex={-1} className={titleClassName}>
            Journey complete
          </h2>
          <p className="text-ink-2 mt-3">
            Every milestone of {scope.label} is recorded.
          </p>
        </div>
      </Card>
    );
  }

  const isNext = milestone.id === scope.nextMilestone?.id;

  return (
    <Card
      role="region"
      aria-labelledby={storyPanelTitleId}
      className={cn("relative px-5 sm:px-7", className)}
    >
      {onClose ? (
        <Button
          type="button"
          variant="ghost"
          size="icon"
          aria-label="Back to your next objective"
          onClick={onClose}
          className="bg-surface-2 text-ink-2 hover:bg-hover hover:text-ink absolute top-3.5 right-3.5 size-[38px] rounded-full"
        >
          <AppIcon icon={appIcons.actions.clear} />
        </Button>
      ) : null}
      <div>
        <StoryMilestoneDetail
          chapterName={chapterName}
          eyebrowClassName={onClose ? "pr-10" : undefined}
          isNext={isNext}
          milestone={milestone}
          milestoneCount={scope.milestoneCount}
          title={
            <h2
              id={storyPanelTitleId}
              tabIndex={-1}
              className={cn(titleClassName, onClose && "pr-10")}
            >
              {milestone.name}
            </h2>
          }
        />
        <div className="mt-6 flex flex-wrap gap-3">
          <StoryMilestoneActions
            isNext={isNext}
            milestone={milestone}
            onAction={(intent) => onAction(milestone, intent)}
          />
        </div>
      </div>
    </Card>
  );
};
