import { RotateCcw } from "lucide-react";

import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

import type { StoryMilestone } from "../../types";

const countLabel = (count: number, singular: string, plural = `${singular}s`) =>
  `${count} ${count === 1 ? singular : plural}`;

export const StoryMilestoneIncompletionImpact = ({
  milestone,
}: {
  milestone: StoryMilestone;
}) => {
  const { incompletionImpact } = milestone;
  const affectedMilestones = incompletionImpact.affectedMilestones.length
    ? incompletionImpact.affectedMilestones
    : [{ id: milestone.id, name: milestone.name }];
  const dependentMilestones = affectedMilestones.filter(
    (affectedMilestone) => affectedMilestone.id !== milestone.id,
  );
  const completionCount = affectedMilestones.length;

  return (
    <>
      {affectedMilestones.map((affectedMilestone) => (
        <input
          key={affectedMilestone.id}
          type="hidden"
          name="affectedMilestoneId"
          value={affectedMilestone.id}
        />
      ))}

      <Alert>
        <RotateCcw aria-hidden />
        <AlertTitle>
          {completionCount === 1
            ? "This recorded completion will be removed."
            : `${completionCount} recorded milestones will be marked incomplete.`}
        </AlertTitle>
        <AlertDescription>
          {dependentMilestones.length ? (
            <div className="mt-2">
              <p className="font-medium text-current">
                Completed milestones that depend on this one
              </p>
              <ul className="mt-1 list-disc space-y-1 pl-4">
                {dependentMilestones.map((dependentMilestone) => (
                  <li key={dependentMilestone.id}>{dependentMilestone.name}</li>
                ))}
              </ul>
            </div>
          ) : null}

          <div className="mt-3">
            <p className="font-medium text-current">Recorded data removed</p>
            <ul className="mt-1 list-disc space-y-1 pl-4">
              <li>
                {countLabel(completionCount, "completion record")} will be
                deleted.
              </li>
              {incompletionImpact.noteCount ? (
                <li>
                  {countLabel(incompletionImpact.noteCount, "note")} will be
                  deleted.
                </li>
              ) : null}
              {incompletionImpact.decisionCount ? (
                <li>
                  {countLabel(incompletionImpact.decisionCount, "decision")}{" "}
                  will be deleted.
                </li>
              ) : null}
              {incompletionImpact.historyEventCount ? (
                <li>
                  {countLabel(
                    incompletionImpact.historyEventCount,
                    "History event",
                  )}{" "}
                  will be deleted.
                </li>
              ) : null}
              {incompletionImpact.snapshotCount ? (
                <li>
                  {countLabel(
                    incompletionImpact.snapshotCount,
                    "team snapshot",
                  )}{" "}
                  will be deleted.
                </li>
              ) : null}
            </ul>
          </div>

          <p className="mt-3">
            Suggested and unrelated progress or History will not change. This
            action cannot be undone.
          </p>
        </AlertDescription>
      </Alert>
    </>
  );
};
