import { Camera } from "lucide-react";

import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

import type { StoryMilestone } from "../../types";
import { hasRecordedStoryMilestoneSnapshot } from "../../utils/story-milestone-recording";
import { StoryTeamSnapshot } from "./story-team-snapshot";

export const StoryMilestoneSnapshotPreview = ({
  milestone,
}: {
  milestone: StoryMilestone;
}) => {
  const hasRecordedSnapshot = hasRecordedStoryMilestoneSnapshot(milestone);

  return (
    <Alert>
      <Camera aria-hidden />
      <AlertTitle>
        {hasRecordedSnapshot
          ? "Recorded team snapshot"
          : "No snapshot recorded"}
      </AlertTitle>
      <AlertDescription>
        {hasRecordedSnapshot ? (
          <>
            <StoryTeamSnapshot members={milestone.snapshotMembers} />
            <p className="mt-3">
              Updating replaces this saved team with the current Active Team.
              The existing History event remains in place.
            </p>
          </>
        ) : (
          <p>
            Recording creates a milestone entry in History and saves the current
            Active Team without changing the live roster.
          </p>
        )}
      </AlertDescription>
    </Alert>
  );
};
