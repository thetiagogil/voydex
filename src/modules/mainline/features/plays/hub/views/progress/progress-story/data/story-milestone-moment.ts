export type StoryMilestoneWriteIntent =
  | "complete"
  | "decision"
  | "note"
  | "story-moment";

/*
 * What a Story milestone save writes to History. Completing a milestone is a
 * moment wherever it happens (Overview's Record writes the same one); the team
 * snapshot is the optional extra, asked for on completing or added later.
 * Editing a completed milestone's note or decision is not a new moment.
 */
export const getStoryMilestoneMoment = ({
  intent,
  recordTeamSnapshot,
}: {
  intent: StoryMilestoneWriteIntent;
  recordTeamSnapshot: boolean;
}) => {
  const includeTeamSnapshot =
    intent === "story-moment" || (intent === "complete" && recordTeamSnapshot);

  return {
    createMoment: intent === "complete" || includeTeamSnapshot,
    includeTeamSnapshot,
  };
};
