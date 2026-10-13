import {
  ObjectiveCard,
  ObjectiveEyebrow,
  objectiveTitleClassNames,
} from "@/modules/mainline/features/plays/shared/components/objective-card";
import { appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone, StoryScope } from "../../types";
import { StoryMilestoneActions } from "./story-milestone-actions";
import { StoryMilestoneDetail } from "./story-milestone-detail";

/* The panel's heading, which takes focus when a closed row is out of view. */
export const storyPanelTitleId = "story-panel-title";

/*
 * The card beside the list: the scope's next objective, with the page's main
 * button, or the milestone you picked, read in full. The same objective card
 * as Overview's next objective.
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
      <ObjectiveCard titleId={storyPanelTitleId} className={className}>
        <ObjectiveEyebrow icon={appIcons.product.completion}>
          {scope.completedCount} of {scope.totalCount} recorded
        </ObjectiveEyebrow>
        <h2
          id={storyPanelTitleId}
          tabIndex={-1}
          className={objectiveTitleClassNames.md}
        >
          Journey complete
        </h2>
        <p className="text-ink-2 mt-1">
          Every milestone of {scope.label} is recorded.
        </p>
      </ObjectiveCard>
    );
  }

  const isNext = milestone.id === scope.nextMilestone?.id;

  return (
    <ObjectiveCard
      titleId={storyPanelTitleId}
      className={className}
      onClose={onClose}
      closeLabel="Back to your next objective"
      actions={
        <StoryMilestoneActions
          isNext={isNext}
          milestone={milestone}
          onAction={(intent) => onAction(milestone, intent)}
        />
      }
    >
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
            className={cn(objectiveTitleClassNames.md, onClose && "pr-10")}
          >
            {milestone.name}
          </h2>
        }
      />
    </ObjectiveCard>
  );
};
