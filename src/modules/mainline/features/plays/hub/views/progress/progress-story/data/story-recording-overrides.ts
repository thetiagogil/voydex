import type { MainlinePlayProgressStoryData } from "../types";

/* Milestones shown recorded (true) or not (false) while their save runs. */
export type StoryRecordingOverrides = ReadonlyMap<number, boolean>;

/*
 * Story's data as the page should show it while a Record or Undo saves:
 * each overridden milestone recorded or not, and its chapter's count moved
 * with it. A milestone shown recorded is recorded now; one shown cleared
 * loses what its record held.
 */
export const applyStoryRecordingOverrides = (
  data: MainlinePlayProgressStoryData,
  overrides: StoryRecordingOverrides,
  now: string,
): MainlinePlayProgressStoryData => {
  if (!overrides.size) {
    return data;
  }

  const countChangeByCategory = new Map<string, number>();
  const milestones = data.milestones.map((milestone) => {
    const recorded =
      milestone.milestone_id === null
        ? undefined
        : overrides.get(milestone.milestone_id);

    if (recorded === undefined || recorded === milestone.is_completed) {
      return milestone;
    }

    if (milestone.is_required_for_completion) {
      const key = `${milestone.version_group_id}:${milestone.category_id}`;
      countChangeByCategory.set(
        key,
        (countChangeByCategory.get(key) ?? 0) + (recorded ? 1 : -1),
      );
    }

    return recorded
      ? { ...milestone, completed_at: now, is_completed: true }
      : {
          ...milestone,
          completed_at: null,
          completion_event_id: null,
          completion_event_team_snapshot_count: 0,
          is_completed: false,
          progress_notes: null,
          selected_decision_option_id: null,
          selected_decision_option_label: null,
        };
  });
  const categories = data.categories.map((category) => {
    const change = countChangeByCategory.get(
      `${category.version_group_id}:${category.category_id}`,
    );

    return change
      ? {
          ...category,
          completed_required_milestone_count:
            (category.completed_required_milestone_count ?? 0) + change,
        }
      : category;
  });

  return { ...data, categories, milestones };
};

/*
 * The overrides the page still needs once fresh data arrives: only those the
 * data doesn't show yet, so a later save's override survives an earlier
 * save's redraw.
 */
export const keepPendingOverrides = (
  data: MainlinePlayProgressStoryData,
  overrides: StoryRecordingOverrides,
): StoryRecordingOverrides => {
  const completedById = new Map(
    data.milestones.map((milestone) => [
      milestone.milestone_id,
      Boolean(milestone.is_completed),
    ]),
  );

  return new Map(
    [...overrides].filter(
      ([milestoneId, recorded]) => completedById.get(milestoneId) !== recorded,
    ),
  );
};
