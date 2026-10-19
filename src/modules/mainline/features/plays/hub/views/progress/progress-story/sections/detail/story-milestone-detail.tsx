import type { ReactNode } from "react";

import {
  formatJourneyPosition,
  formatMilestoneRange,
} from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { ObjectiveEyebrow } from "@/modules/mainline/features/plays/shared/components/objective-card";
import {
  formatPlayMoment,
  type ViewerClock,
} from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

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

const getStatus = (
  milestone: StoryMilestone,
  isNext: boolean,
  clock: ViewerClock,
) => {
  if (milestone.isCompleted) {
    const recordedOn = formatPlayMoment(milestone.completedAt, clock)?.date;

    return {
      icon: appIcons.product.completion,
      label: recordedOn ? `Recorded ${recordedOn}` : "Recorded",
    };
  }

  if (!milestone.isAvailable) {
    return { icon: appIcons.status.locked, label: "Locked" };
  }

  return {
    icon: appIcons.milestones.story,
    label: isNext ? "Next objective" : "Not recorded yet",
  };
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
 * One milestone read in full: where it stands, what it asks, what has to come
 * first and, once recorded, the team then, the decision and the note.
 */
export const StoryMilestoneDetail = ({
  chapterName,
  eyebrowClassName,
  isNext,
  milestone,
  title,
  totalCount,
}: {
  chapterName: string | null;
  /* Room the surface keeps clear beside the line, such as for a close button. */
  eyebrowClassName?: string;
  isNext: boolean;
  milestone: StoryMilestone;
  /* The milestone's name, as the heading its surface needs. */
  title: ReactNode;
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
  const prerequisiteNames = milestone.prerequisites.map(
    (prerequisite) => prerequisite.name,
  );
  const meta = [chapterName, milestone.typeName].filter(Boolean);

  return (
    <div className="min-w-0">
      <ObjectiveEyebrow icon={status.icon} className={eyebrowClassName}>
        {status.label} ·{" "}
        {formatJourneyPosition({
          sequence: milestone.sequence,
          total: totalCount,
        })}
      </ObjectiveEyebrow>
      {title}
      <p className="text-ink-2 font-semibold">{meta.join(" · ")}</p>
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
