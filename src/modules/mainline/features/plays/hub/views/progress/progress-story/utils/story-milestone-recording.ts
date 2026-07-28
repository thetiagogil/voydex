import type { StoryMilestone } from "../types";

type StoryMilestoneRecording = Pick<
  StoryMilestone,
  "notes" | "selectedDecisionId" | "selectedDecisionLabel" | "snapshotCount"
>;

export const hasRecordedStoryMilestoneDecision = (
  milestone: StoryMilestoneRecording,
) => {
  return (
    milestone.selectedDecisionId !== null ||
    Boolean(milestone.selectedDecisionLabel?.trim())
  );
};

export const hasRecordedStoryMilestoneNote = (
  milestone: StoryMilestoneRecording,
) => {
  return Boolean(milestone.notes?.trim());
};

export const hasRecordedStoryMilestoneSnapshot = (
  milestone: StoryMilestoneRecording,
) => {
  return milestone.snapshotCount > 0;
};
