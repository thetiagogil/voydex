import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

import type { StoryMilestone } from "../../types";
import { hasRecordedStoryMilestoneSnapshot } from "../../utils/story-milestone-recording";
import { StoryTeamSnapshot } from "./story-team-snapshot";

/* The team already saved with the milestone, which an update replaces. */
export const StoryMilestoneSnapshotPreview = ({
  milestone,
}: {
  milestone: StoryMilestone;
}) => {
  if (!hasRecordedStoryMilestoneSnapshot(milestone)) {
    return null;
  }

  return (
    <Alert>
      <AppIcon icon={appIcons.product.team} />
      <AlertTitle>Saved team</AlertTitle>
      <AlertDescription>
        {milestone.snapshotMembers.length ? (
          <div className="mt-2">
            <StoryTeamSnapshot members={milestone.snapshotMembers} />
          </div>
        ) : (
          <p>The saved team is no longer available.</p>
        )}
      </AlertDescription>
    </Alert>
  );
};
