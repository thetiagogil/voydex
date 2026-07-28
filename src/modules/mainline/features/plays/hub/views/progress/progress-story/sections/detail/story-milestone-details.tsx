import { Camera, GitFork, NotebookPen } from "lucide-react";

import { Separator } from "@/shared/components/ui/separator";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone } from "../../types";
import {
  hasRecordedStoryMilestoneDecision,
  hasRecordedStoryMilestoneNote,
  hasRecordedStoryMilestoneSnapshot,
} from "../../utils/story-milestone-recording";
import { StoryMilestoneActions } from "./story-milestone-actions";
import { StoryPokemonEvidence } from "./story-pokemon-evidence";
import { StoryMilestoneStateRow } from "./story-milestone-state-row";
import { StoryTeamSnapshot } from "./story-team-snapshot";

const formatCompletionDate = (value: string | null) => {
  if (!value) {
    return "Completion date not recorded";
  }

  const date = new Date(value);

  return Number.isNaN(date.getTime())
    ? "Completion date not recorded"
    : new Intl.DateTimeFormat("en", {
        dateStyle: "medium",
        timeStyle: "short",
      }).format(date);
};

const DetailSection = ({
  children,
  showSeparator = false,
  title,
}: {
  children: React.ReactNode;
  showSeparator?: boolean;
  title: string;
}) => {
  return (
    <section className="grid gap-2">
      {showSeparator ? <Separator className="mb-2" /> : null}
      <h3 className="font-serif text-sm font-semibold">{title}</h3>
      {children}
    </section>
  );
};

export const StoryMilestoneDetails = ({
  milestone,
  onAction,
}: {
  milestone: StoryMilestone;
  onAction: (intent: StoryMilestoneActionIntent) => void;
}) => {
  const hasRecordedDecision = hasRecordedStoryMilestoneDecision(milestone);
  const hasRecordedSnapshot = hasRecordedStoryMilestoneSnapshot(milestone);
  const hasRecordedNote = hasRecordedStoryMilestoneNote(milestone);
  const hasRecordedDetails =
    hasRecordedDecision || hasRecordedSnapshot || hasRecordedNote;
  const selectedDecision =
    milestone.decisionOptions.find(
      (option) => option.id === milestone.selectedDecisionId,
    ) ?? null;
  const isLocked = !milestone.isCompleted && !milestone.isAvailable;
  const incompleteBlockingCount = milestone.blockingPrerequisites.filter(
    (prerequisite) => !prerequisite.completed,
  ).length;

  return (
    <div className="grid gap-5">
      <DetailSection title="Objective">
        <p className="text-muted-foreground text-sm leading-6">
          {milestone.description ?? "No milestone description is available."}
        </p>
      </DetailSection>

      <DetailSection title="Status" showSeparator>
        <StoryMilestoneStateRow
          state={
            milestone.isCompleted
              ? "completed"
              : isLocked
                ? "blocked"
                : "pending"
          }
          title={
            milestone.isCompleted
              ? "Completed"
              : isLocked
                ? "Prerequisites required"
                : "Not completed"
          }
          description={
            milestone.isCompleted
              ? formatCompletionDate(milestone.completedAt)
              : isLocked
                ? `${incompleteBlockingCount} required ${incompleteBlockingCount === 1 ? "milestone is" : "milestones are"} not completed.`
                : "This milestone has not been recorded for the Play."
          }
        />
      </DetailSection>

      <DetailSection title="Prerequisites" showSeparator>
        {milestone.prerequisites.length ? (
          <ul className="grid gap-2">
            {milestone.prerequisites.map((prerequisite) => (
              <li key={`${prerequisite.id}-${prerequisite.kindSlug}`}>
                <StoryMilestoneStateRow
                  state={prerequisite.completed ? "completed" : "pending"}
                  title={prerequisite.name}
                  description={`${prerequisite.kindName} · ${
                    prerequisite.completed ? "Completed" : "Not recorded"
                  }`}
                />
              </li>
            ))}
          </ul>
        ) : (
          <p className="text-muted-foreground text-sm">
            No prerequisites for this milestone.
          </p>
        )}
      </DetailSection>

      {hasRecordedDetails ? (
        <DetailSection title="Recorded details" showSeparator>
          <dl className="grid gap-3">
            {hasRecordedDecision ? (
              <div className="grid grid-cols-[auto_minmax(0,1fr)] gap-2">
                <GitFork
                  className="text-muted-foreground mt-0.5 size-4"
                  aria-hidden
                />
                <div>
                  <dt className="text-xs font-semibold">Decision</dt>
                  <dd className="text-xs leading-5">
                    {selectedDecision?.speciesName ? (
                      <span className="mt-2 block">
                        <StoryPokemonEvidence
                          imageUrl={selectedDecision.imageUrl}
                          name={selectedDecision.speciesName}
                        />
                      </span>
                    ) : (
                      <span className="text-muted-foreground">
                        {milestone.selectedDecisionLabel ?? "Not recorded"}
                      </span>
                    )}
                  </dd>
                </div>
              </div>
            ) : null}

            {hasRecordedSnapshot ? (
              <div className="grid grid-cols-[auto_minmax(0,1fr)] gap-2">
                <Camera
                  className="text-muted-foreground mt-0.5 size-4"
                  aria-hidden
                />
                <div>
                  <dt className="text-xs font-semibold">Team snapshot</dt>
                  <dd className="text-xs leading-5">
                    {milestone.snapshotMembers.length ? (
                      <StoryTeamSnapshot members={milestone.snapshotMembers} />
                    ) : (
                      <span className="text-muted-foreground">
                        The saved Team details are unavailable.
                      </span>
                    )}
                  </dd>
                </div>
              </div>
            ) : null}

            {hasRecordedNote ? (
              <div
                className={
                  hasRecordedDecision || hasRecordedSnapshot
                    ? "mt-3 grid grid-cols-[auto_minmax(0,1fr)] gap-2"
                    : "grid grid-cols-[auto_minmax(0,1fr)] gap-2"
                }
              >
                <NotebookPen
                  className="text-muted-foreground mt-0.5 size-4"
                  aria-hidden
                />
                <div>
                  <dt className="text-xs font-semibold">Notes</dt>
                  <dd className="text-muted-foreground text-xs leading-5 whitespace-pre-wrap">
                    {milestone.notes?.trim()}
                  </dd>
                </div>
              </div>
            ) : null}
          </dl>
        </DetailSection>
      ) : null}

      <DetailSection title="Actions" showSeparator>
        <StoryMilestoneActions milestone={milestone} onAction={onAction} />
      </DetailSection>
    </div>
  );
};
