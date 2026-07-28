export type StoryMilestoneRecordingActionVariant = "default" | "outline";

export const getStoryMilestoneRecordingActionVariant = (
  hasRecordedValue: boolean,
): StoryMilestoneRecordingActionVariant =>
  hasRecordedValue ? "outline" : "default";
