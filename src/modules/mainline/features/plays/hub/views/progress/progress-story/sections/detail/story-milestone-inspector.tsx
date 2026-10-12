import { MainlinePlayInspectorCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-inspector-card";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone } from "../../types";
import { StoryMilestoneDetails } from "./story-milestone-details";
import { StoryMilestoneIdentity } from "./story-milestone-identity";

export const StoryMilestoneInspector = ({
  milestone,
  onAction,
}: {
  milestone: StoryMilestone;
  onAction: (intent: StoryMilestoneActionIntent) => void;
}) => {
  return (
    <aside className="sticky top-4 hidden self-start lg:block">
      <MainlinePlayInspectorCard
        accessibilityTitle={`${milestone.name} details`}
      >
        <div className="grid gap-4">
          <StoryMilestoneIdentity
            milestone={milestone}
            title={
              <h2 className="text-primary font-display text-xl font-semibold">
                {milestone.name}
              </h2>
            }
          />

          <StoryMilestoneDetails milestone={milestone} onAction={onAction} />
        </div>
      </MainlinePlayInspectorCard>
    </aside>
  );
};
