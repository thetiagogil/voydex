import type { ReactNode } from "react";

import {
  formatJourneyPosition,
  formatMilestoneRange,
} from "@/modules/mainline/features/plays/shared/data/play-milestones";
import {
  formatPlayMoment,
  type ViewerClock,
} from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { StatusBadge } from "@/shared/components/status-badge";

import type { StoryMilestone } from "../../types";
import {
  hasRecordedStoryMilestoneDecision,
  hasRecordedStoryMilestoneNote,
  hasRecordedStoryMilestoneSnapshot,
} from "../../utils/story-milestone-recording";
import { StoryPokemonEvidence } from "./story-pokemon-evidence";
import { StoryTeamSnapshot } from "./story-team-snapshot";

const joinNames = (names: string[]) =>
  names.length > 1
    ? `${names.slice(0, -1).join(", ")} and ${names.at(-1)}`
    : (names[0] ?? "");

/* Where it stands, as one badge: recorded, next, locked; none while simply ahead. */
const getStatus = (
  milestone: StoryMilestone,
  isNext: boolean,
  clock: ViewerClock,
): { label: string; locked?: boolean; tone: "neutral" | "ok" } | null => {
  if (milestone.isCompleted) {
    const recordedOn = formatPlayMoment(milestone.completedAt, clock)?.date;

    return {
      label: recordedOn ? `Recorded ${recordedOn}` : "Recorded",
      tone: "ok",
    };
  }

  if (!milestone.isAvailable) {
    return { label: "Locked", locked: true, tone: "neutral" };
  }

  return isNext ? { label: "Next objective", tone: "neutral" } : null;
};

const DetailBlock = ({
  children,
  label,
}: {
  children: ReactNode;
  label: string;
}) => (
  <div className="mt-5">
    <p className="text-ink-2 text-13 mb-2 font-bold">{label}</p>
    {children}
  </div>
);

/*
 * One milestone read in full, under its sheet's title: where it stands, what
 * it asks, what has to come first (or, for side content, what opens it) and,
 * once recorded, the team then, the decision and the note.
 */
export const StoryMilestoneDetail = ({
  chapterName,
  isNext,
  milestone,
  totalCount,
}: {
  chapterName: string | null;
  isNext: boolean;
  milestone: StoryMilestone;
  /* The journey's required milestones, the count its sequence runs to. */
  totalCount: number;
}) => {
  const status = getStatus(milestone, isNext, useViewerClock());
  const selectedDecision =
    milestone.decisionOptions.find(
      (option) => option.id === milestone.selectedDecisionId,
    ) ?? null;
  const blockingNames = milestone.blockingPrerequisites
    .filter((prerequisite) => !prerequisite.completed)
    .map((prerequisite) => prerequisite.name);
  const prerequisiteNames = milestone.prerequisites
    .filter((prerequisite) => prerequisite.kindSlug !== "opens-after")
    .map((prerequisite) => prerequisite.name);
  const meta = [chapterName, milestone.typeName].filter(Boolean);

  return (
    <div className="min-w-0">
      {/* One line of where it sits, and one badge for where it stands. */}
      <p className="text-ink-2 font-semibold">
        {[
          ...meta,
          formatJourneyPosition({
            sequence: milestone.sequence,
            total: totalCount,
          }),
        ].join(" · ")}
      </p>
      {status ? (
        <StatusBadge tone={status.tone} dot={!status.locked} className="mt-2">
          {status.locked ? (
            <AppIcon icon={appIcons.status.locked} size="xs" />
          ) : null}
          {status.label}
        </StatusBadge>
      ) : null}
      {milestone.description ? (
        <p className="text-ink-2 mt-3 leading-relaxed">
          {milestone.description}
        </p>
      ) : null}

      {!milestone.isCompleted && blockingNames.length ? (
        <p className="text-ink-2 text-13 mt-3 flex items-start gap-1.5 font-semibold">
          <AppIcon
            icon={appIcons.status.locked}
            size="sm"
            className="mt-0.5 shrink-0"
          />
          <span>
            Record{" "}
            <b className="text-ink font-extrabold">
              {joinNames(blockingNames)}
            </b>{" "}
            first.
          </span>
        </p>
      ) : milestone.opensAfter ? (
        <p className="text-ink-2 text-13 mt-2.5 font-semibold">
          Opens after{" "}
          <b className="text-ink font-extrabold">{milestone.opensAfter.name}</b>
        </p>
      ) : !milestone.isCompleted && prerequisiteNames.length ? (
        <p className="text-ink-2 text-13 mt-2.5 font-semibold">
          After{" "}
          <b className="text-ink font-extrabold">
            {joinNames(prerequisiteNames)}
          </b>
        </p>
      ) : null}

      {!milestone.isCompleted && milestone.earlierToRecord.length ? (
        /* Record takes them too; the arrow offers "Record only this one". */
        <p className="text-ink-2 text-13 mt-2.5 font-semibold">
          Recording it also records{" "}
          {formatMilestoneRange(milestone.earlierToRecord.length, "before")}.
        </p>
      ) : null}

      {hasRecordedStoryMilestoneSnapshot(milestone) ? (
        <DetailBlock label="Your team then">
          {milestone.snapshotMembers.length ? (
            <StoryTeamSnapshot members={milestone.snapshotMembers} />
          ) : (
            <p className="text-ink-2 text-14 font-semibold">
              The saved team is no longer available.
            </p>
          )}
        </DetailBlock>
      ) : null}

      {hasRecordedStoryMilestoneDecision(milestone) ? (
        <DetailBlock label="Decision">
          {selectedDecision?.speciesName ? (
            <StoryPokemonEvidence
              imageUrl={selectedDecision.imageUrl}
              name={selectedDecision.speciesName}
            />
          ) : (
            <p className="text-15 font-extrabold">
              {milestone.selectedDecisionLabel ?? selectedDecision?.label}
            </p>
          )}
        </DetailBlock>
      ) : null}

      {hasRecordedStoryMilestoneNote(milestone) ? (
        <DetailBlock label="Note">
          <p className="text-ink-2 text-15 leading-relaxed whitespace-pre-wrap">
            {milestone.notes?.trim()}
          </p>
        </DetailBlock>
      ) : null}
    </div>
  );
};
