"use client";

import { Link } from "@/shared/components/link";
import { useRouter } from "next/navigation";
import { useState, type ReactNode } from "react";
import { preload } from "react-dom";

import { appRoutes } from "@/config/routes";
import { AddNoteDialog } from "@/modules/mainline/features/plays/hub/components/add-note-dialog";
import {
  OverviewRecordButton,
  useOverviewJustRecorded,
} from "@/modules/mainline/features/plays/hub/views/overview/client/overview-recording";
import { StampGrid } from "@/modules/mainline/features/plays/shared/components/stamp-grid";
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
  /* The Play's stamps, under the objective: recording one slaps it down there. */
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
 * The journey card, under the team: where the objective stands, its Fredoka
 * title, where it happens, then the page's one main button, which records it
 * in place (a choice opens Story's record form right here), and "Add a
 * note". In the same card, beside the words from 1024px and under them
 * below that, the game's stamp card: recording a gym, trial or
 * League objective slaps its stamp down there, the page's one badge moment,
 * before the words hand over to the next objective. A stamp opens its
 * milestone in Story.
 */
export const NextObjectiveSection = ({
  decisionRecord,
  nextMilestone: latestMilestone,
  nextMilestonePosition: latestPosition,
  playId,
  stamps,
}: NextObjectiveSectionProps) => {
  const router = useRouter();
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
  const earnedCount = stamps.filter(
    (stamp) =>
      stamp.state === "earned" ||
      (isJustRecorded && stamp.milestoneId === shownId),
  ).length;

  /* The badge it will slap down, fetched ahead so the slap lands with it. */
  if (savedStamp?.badge?.imageUrl) {
    preload(savedStamp.badge.imageUrl, { as: "image" });
  }

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
      hasStamp: savedStamp !== null,
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
      /* Two halves from 1024px: the objective, and the stamp card beside it. */
      className="lg:grid lg:grid-cols-[minmax(0,1fr)_26rem] lg:items-center"
      aside={
        stamps.length ? (
          <section
            aria-labelledby="overview-stamps"
            className="tile flex flex-col gap-1 p-0"
          >
            <p id="overview-stamps" className="text-ink-2 copy-label px-4 pt-3">
              Stamp card{" "}
              <span className="text-ink-3 font-semibold tabular-nums">
                {earnedCount} of {stamps.length}
              </span>
            </p>
            {/*
             * Each stamp in an equal share of the row, so they spread evenly
             * with the same room at both ends; a long row scrolls instead.
             * Beside the objective (from 1024px) they wrap, five to a row.
             * Room all round, so a lift, slap or focus ring is never cut.
             */}
            <StampGrid
              className="no-scrollbar auto-cols-[minmax(3.5rem,1fr)] grid-flow-col gap-x-3 overflow-x-auto px-4 pt-3 pb-4 sm:auto-cols-[minmax(4rem,1fr)] lg:grid-flow-row lg:grid-cols-5 lg:gap-y-4 lg:overflow-visible"
              earnedMilestoneId={isJustRecorded ? shownId : null}
              onSlapEnd={() =>
                applyStep(getObjectiveHandoverAfterAnimation(handover, "slap"))
              }
              onStampSelect={(milestoneId) =>
                router.push(
                  appRoutes.mainlinePlayProgressStoryRecord(
                    playId,
                    milestoneId,
                  ),
                )
              }
              scrollLabel="Stamps"
              slapMilestoneId={handover === "stamping" ? shownId : null}
              stamps={stamps}
            />
          </section>
        ) : null
      }
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
            <AddNoteDialog playId={playId} />
          </>
        ) : (
          <>
            <Link
              href={appRoutes.mainlinePlayProgressStory(playId)}
              className={buttonVariants({ variant: "secondary" })}
            >
              <AppIcon icon={appIcons.milestones.story} />
              See the Story
            </Link>
            <AddNoteDialog playId={playId} />
          </>
        )
      }
    >
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
    </ObjectiveCard>
  );
};
