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

/*
 * Recording the objective here hands over to the next one: its stamp slaps
 * down (a gym or League milestone), then it slides away and the next one
 * slides in. Anything else that changes it just shows the new one.
 */
type Handover = "entering" | "idle" | "leaving" | "stamping";

const titleId = "next-objective-title";

/* A choice milestone needs its choice, so it records through Story's form. */
const hasDecision = (milestone: OverviewMilestone) =>
  Array.isArray(milestone.decision_options) &&
  milestone.decision_options.length > 0;

/*
 * The next objective is quiet: a Fredoka title and the page's one main
 * button, which records it in place (a choice opens Story's record form
 * right here), then "Add a note". A gym or League objective shows its stamp
 * waiting beside the title.
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
  const [handover, setHandover] = useState<Handover>("idle");
  const latestId = latestMilestone?.milestone_id ?? null;
  const shownId = shown.milestone?.milestone_id ?? null;
  const shownStamp =
    stamps.find((stamp) => stamp.milestoneId === shownId) ?? null;

  /* A new objective arrives with the page: hand over to it, or just show it. */
  if (handover === "idle" && latestId !== shownId) {
    if (justRecordedId !== null && justRecordedId === shownId) {
      setHandover(shownStamp?.state === "earned" ? "stamping" : "leaving");
    } else {
      setShown({ milestone: latestMilestone, position: latestPosition });
    }
  } else if (handover === "idle" && shown.milestone !== latestMilestone) {
    setShown({ milestone: latestMilestone, position: latestPosition });
  }

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
        "relative",
        handover !== "idle" && "pointer-events-none",
        handover === "leaving" && "animate-objective-out",
        handover === "entering" && "animate-objective-in",
      )}
      bodyProps={{
        onAnimationEnd: (event) => {
          if (event.target !== event.currentTarget) {
            return;
          }

          if (handover === "leaving") {
            setShown({ milestone: latestMilestone, position: latestPosition });
            setHandover("entering");
          } else if (handover === "entering") {
            setHandover("idle");
          }
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
      {shownStamp ? (
        <BadgeStamp
          className="absolute top-0 right-0 w-14 sm:w-18"
          label={shownStamp.name}
          onSlapEnd={() => setHandover("leaving")}
          slap={handover === "stamping"}
          state={getBadgeStampState(shownStamp)}
          tilt={-6}
        />
      ) : null}
      <div className={cn(shownStamp && "pr-18 sm:pr-24")}>
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
    </ObjectiveCard>
  );
};
