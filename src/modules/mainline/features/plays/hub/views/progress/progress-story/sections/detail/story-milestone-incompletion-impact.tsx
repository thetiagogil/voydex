import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

import type {
  StoryMilestone,
  StoryMilestoneIncompletionImpact as IncompletionImpact,
} from "../../types";

const countLabel = (count: number, singular: string, plural = `${singular}s`) =>
  `${count} ${count === 1 ? singular : plural}`;

/*
 * What marking a milestone incomplete removes, as the database will: the
 * milestone, any cleared with it, and what depends on them. Its hidden list
 * is the preview the database checks before it deletes anything.
 */
export const StoryMilestoneIncompletionImpact = ({
  impact: incompletionImpact,
  milestone,
}: {
  impact: IncompletionImpact;
  milestone: StoryMilestone;
}) => {
  const affectedMilestones = incompletionImpact.affectedMilestones.length
    ? incompletionImpact.affectedMilestones
    : [{ id: milestone.id, name: milestone.name }];
  const dependentMilestones = affectedMilestones.filter(
    (affectedMilestone) => affectedMilestone.id !== milestone.id,
  );
  const completionCount = affectedMilestones.length;
  /* Losing more than the records themselves warns in the danger tone. */
  const losesDetails =
    incompletionImpact.noteCount +
      incompletionImpact.decisionCount +
      incompletionImpact.snapshotCount >
    0;

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

      <Alert variant={losesDetails ? "destructive" : "default"}>
        <AppIcon
          icon={losesDetails ? appIcons.status.warning : appIcons.actions.retry}
        />
        <AlertTitle>
          {completionCount === 1
            ? "This recorded completion will be removed."
            : `${completionCount} recorded milestones will be marked incomplete.`}
        </AlertTitle>
        <AlertDescription>
          {dependentMilestones.length ? (
            <div className="mt-2">
              <p className="text-ink font-extrabold">Also marked incomplete</p>
              <ul className="mt-1 list-disc space-y-1 pl-4">
                {dependentMilestones.map((dependentMilestone) => (
                  <li key={dependentMilestone.id}>{dependentMilestone.name}</li>
                ))}
              </ul>
            </div>
          ) : null}

          <div className="mt-3">
            <p className="text-ink font-extrabold">Recorded data removed</p>
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
            Everything else stays recorded. This action cannot be undone.
          </p>
        </AlertDescription>
      </Alert>
    </>
  );
};
