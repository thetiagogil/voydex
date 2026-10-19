"use client";

import Link from "next/link";
import { useState, type ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { AddNoteDialog } from "@/modules/mainline/features/plays/hub/components/add-note-dialog";
import {
  OverviewRecordButton,
  useOverviewJustRecorded,
} from "@/modules/mainline/features/plays/hub/views/overview/client/overview-recording";
import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import { getBadgeStampState } from "@/modules/mainline/features/plays/shared/components/stamp-grid";
import type { PlayStamp } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import {
  formatJourneyPosition,
  type JourneyPosition,
} from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { RecordMilestoneButton } from "@/modules/mainline/features/plays/shared/components/record-milestone-button";
import {
  getObjectiveHandoverAfterAnimation,
  getObjectiveHandoverStep,
  type ObjectiveHandover,
} from "@/modules/mainline/features/plays/hub/views/overview/data/next-objective-handover";
import {
  getOverviewMilestoneWhere,
  type OverviewMilestone,
} from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import {
  ObjectiveCard,
  ObjectiveEyebrow,
  ObjectiveWhere,
  objectiveTitleClassNames,
} from "@/modules/mainline/features/plays/shared/components/objective-card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type NextObjectiveSectionProps = {
  /* The page's main button when the next milestone is a choice: it records in place. */
  decisionRecord?: ReactNode;
  nextMilestone: OverviewMilestone | null;
  nextMilestonePosition: JourneyPosition | null;
  playId: string;
  /* The Play's stamps: a gym or League objective shows its own, waiting. */
  stamps: PlayStamp[];
};

type ShownObjective = {
  milestone: OverviewMilestone | null;
  position: JourneyPosition | null;
};

const titleId = "next-objective-title";

/* A choice milestone needs its choice, so it records through Story's form. */
const hasDecision = (milestone: OverviewMilestone) =>
  Array.isArray(milestone.decision_options) &&
  milestone.decision_options.length > 0;

/*
 * The next objective is quiet: a Fredoka title and the page's one main
 * button, which records it in place (a choice opens Story's record form
 * right here), then "Add a note". A gym or League objective shows its stamp
 * waiting at the end of its words.
 */
export const NextObjectiveSection = ({
  decisionRecord,
  nextMilestone: latestMilestone,
  nextMilestonePosition: latestPosition,
  playId,
  stamps,
}: NextObjectiveSectionProps) => {
  const justRecordedId = useOverviewJustRecorded();
  const [shown, setShown] = useState<ShownObjective>({
    milestone: latestMilestone,
    position: latestPosition,
  });
  const [handover, setHandover] = useState<ObjectiveHandover>("idle");
  const latestId = latestMilestone?.milestone_id ?? null;
  const shownId = shown.milestone?.milestone_id ?? null;
  const isJustRecorded = justRecordedId !== null && justRecordedId === shownId;
  const savedStamp =
    stamps.find((stamp) => stamp.milestoneId === shownId) ?? null;
  /* Recorded here a moment ago: earned at once, before the save comes back. */
  const shownStamp =
    savedStamp && isJustRecorded
      ? { ...savedStamp, state: "earned" as const }
      : savedStamp;

  const applyStep = (step: ReturnType<typeof getObjectiveHandoverStep>) => {
    if (step?.handover) {
      setHandover(step.handover);
    }

    if (step?.showLatest) {
      setShown({ milestone: latestMilestone, position: latestPosition });
    }
  };

  applyStep(
    getObjectiveHandoverStep({
      handover,
      hasStamp: shownStamp !== null,
      isJustRecorded,
      isLatestShown: latestId === shownId,
      isShownCurrent: shown.milestone === latestMilestone,
    }),
  );

  const nextMilestone = shown.milestone;
  /* Numbered within its journey, as Story numbers it. */
  const position = shown.position
    ? formatJourneyPosition(shown.position)
    : null;
  const where = nextMilestone ? getOverviewMilestoneWhere(nextMilestone) : null;

  return (
    <ObjectiveCard
      titleId={titleId}
      bodyClassName={cn(
        handover === "leaving" && "animate-objective-out",
        handover === "entering" && "animate-objective-in",
      )}
      bodyProps={{
        /* Mid hand-over nothing in it can be pressed, by pointer or keyboard. */
        inert: handover !== "idle",
        onAnimationEnd: (event) => {
          if (event.target !== event.currentTarget) {
            return;
          }

          applyStep(getObjectiveHandoverAfterAnimation(handover, "slide"));
        },
      }}
      actions={
        nextMilestone?.milestone_id != null ? (
          <>
            {hasDecision(nextMilestone) ? (
              (decisionRecord ?? (
                <RecordMilestoneButton
                  href={appRoutes.mainlinePlayProgressStoryRecord(
                    playId,
                    nextMilestone.milestone_id,
                  )}
                  label={`Record ${nextMilestone.milestone_name}`}
                />
              ))
            ) : (
              <OverviewRecordButton
                instant={{
                  keepsSnapshot: nextMilestone.snapshot_policy_slug !== "none",
                  toastMessage: [
                    `${nextMilestone.milestone_name ?? "Milestone"} recorded`,
                    shown.position?.sequence
                      ? `${shown.position.sequence} of ${shown.position.total}`
                      : null,
                  ]
                    .filter(Boolean)
                    .join(" · "),
                }}
                milestoneId={nextMilestone.milestone_id}
                milestoneName={nextMilestone.milestone_name ?? "Milestone"}
              />
            )}
            <AddNoteDialog playId={playId} size="lg" />
          </>
        ) : (
          <>
            <Link
              href={appRoutes.mainlinePlayProgressStory(playId)}
              className={buttonVariants({ size: "lg", variant: "secondary" })}
            >
              <AppIcon icon={appIcons.milestones.story} />
              See the Story
            </Link>
            <AddNoteDialog playId={playId} size="lg" />
          </>
        )
      }
    >
      {/* The stamp waits at the end of the objective's words, on their last line. */}
      <div className="flex items-end gap-4">
        <div className="min-w-0 flex-1">
          <ObjectiveEyebrow
            icon={
              nextMilestone ? appIcons.milestones.story : appIcons.status.active
            }
          >
            {nextMilestone
              ? ["Next objective", position].filter(Boolean).join(" · ")
              : "Main story complete"}
          </ObjectiveEyebrow>
          <h2 id={titleId} className={objectiveTitleClassNames.lg}>
            {nextMilestone?.milestone_name ?? "Every milestone recorded"}
          </h2>
          {where ? <ObjectiveWhere>{where}</ObjectiveWhere> : null}
        </div>
        {shownStamp ? (
          <BadgeStamp
            className="mb-0.5 w-11 shrink-0 sm:w-13"
            label={shownStamp.name}
            onSlapEnd={() =>
              applyStep(getObjectiveHandoverAfterAnimation(handover, "slap"))
            }
            slap={handover === "stamping"}
            state={getBadgeStampState(shownStamp)}
            tilt={-6}
          />
        ) : null}
      </div>
    </ObjectiveCard>
  );
};
