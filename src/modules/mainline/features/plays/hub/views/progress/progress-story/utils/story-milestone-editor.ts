import type { StoryMilestoneActionIntent } from "../server/story-milestone-action";
import type { StoryMilestone } from "../types";
import {
  hasRecordedStoryMilestoneDecision,
  hasRecordedStoryMilestoneNote,
  hasRecordedStoryMilestoneSnapshot,
} from "./story-milestone-recording";

export type StoryMilestoneEditorCopy = {
  description: string;
  submitLabel: string;
  submittingLabel: string;
  title: string;
};

const editorCopyByIntent = {
  complete: {
    description:
      "Mark this milestone as done; it becomes a moment in History. Add any details from this Play.",
    submitLabel: "Record milestone",
    submittingLabel: "Recording...",
    title: "Record milestone",
  },
  decision: {
    description: "Update the decision recorded for this completed milestone.",
    submitLabel: "Save decision",
    submittingLabel: "Saving...",
    title: "Update decision",
  },
  note: {
    description: "Add context that should remain attached to this milestone.",
    submitLabel: "Save note",
    submittingLabel: "Saving...",
    title: "Update note",
  },
  incomplete: {
    description:
      "Remove this milestone from completed Story progress so it can be recorded again.",
    submitLabel: "Mark incomplete",
    submittingLabel: "Updating...",
    title: "Mark milestone incomplete",
  },
  "story-moment": {
    description:
      "Save the current Active Team as this milestone's snapshot in History. Your live team doesn't change.",
    submitLabel: "Record snapshot",
    submittingLabel: "Recording...",
    title: "Record team snapshot",
  },
} satisfies Record<StoryMilestoneActionIntent, StoryMilestoneEditorCopy>;

export const getStoryMilestoneEditorCopy = (
  intent: StoryMilestoneActionIntent,
  milestone?: StoryMilestone | null,
): StoryMilestoneEditorCopy => {
  if (!milestone) {
    return editorCopyByIntent[intent];
  }

  if (intent === "complete") {
    return {
      ...editorCopyByIntent.complete,
      title: `Record ${milestone.name}`,
    };
  }

  if (intent === "incomplete") {
    const affectedCount =
      milestone.incompletionImpact.affectedMilestones.length || 1;
    const dependentCount = Math.max(affectedCount - 1, 0);

    return {
      description:
        dependentCount > 0
          ? `Remove this milestone and ${dependentCount} completed ${dependentCount === 1 ? "milestone that depends" : "milestones that depend"} on it, including their recorded details.`
          : "Remove this milestone and its recorded details from the Play.",
      submitLabel:
        affectedCount > 1
          ? `Mark ${affectedCount} milestones incomplete`
          : "Mark incomplete",
      submittingLabel: "Updating...",
      title:
        affectedCount > 1
          ? "Mark milestones incomplete"
          : "Mark milestone incomplete",
    };
  }

  if (
    intent === "story-moment" &&
    hasRecordedStoryMilestoneSnapshot(milestone)
  ) {
    return {
      description:
        "Replace the recorded snapshot with the current Active Team. The existing History event remains in place.",
      submitLabel: "Update snapshot",
      submittingLabel: "Updating...",
      title: "Update team snapshot",
    };
  }

  if (intent === "decision" && !hasRecordedStoryMilestoneDecision(milestone)) {
    return {
      description: "Record the decision made for this completed milestone.",
      submitLabel: "Add decision",
      submittingLabel: "Adding...",
      title: "Add decision",
    };
  }

  if (intent === "note" && !hasRecordedStoryMilestoneNote(milestone)) {
    return {
      description: "Add context that should remain attached to this milestone.",
      submitLabel: "Add note",
      submittingLabel: "Adding...",
      title: "Add note",
    };
  }

  return editorCopyByIntent[intent];
};
