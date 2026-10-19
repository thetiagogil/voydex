import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { AddNoteDialog } from "@/modules/mainline/features/plays/hub/components/add-note-dialog";
import { OverviewRecordButton } from "@/modules/mainline/features/plays/hub/views/overview/client/overview-recording";
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

type NextObjectiveSectionProps = {
  /* The page's main button when the next milestone is a choice: it records in place. */
  decisionRecord?: ReactNode;
  nextMilestone: OverviewMilestone | null;
  nextMilestonePosition: JourneyPosition | null;
  playId: string;
};

const titleId = "next-objective-title";

/* A choice milestone needs its choice, so it records through Story's form. */
const hasDecision = (milestone: OverviewMilestone) =>
  Array.isArray(milestone.decision_options) &&
  milestone.decision_options.length > 0;

/*
 * The next objective is quiet: a Fredoka title and the page's one main
 * button, which records it in place (a choice opens Story's record form
 * right here), then "Add a note".
 */
export const NextObjectiveSection = ({
  decisionRecord,
  nextMilestone,
  nextMilestonePosition,
  playId,
}: NextObjectiveSectionProps) => {
  /* Numbered within its journey, as Story numbers it. */
  const position = nextMilestonePosition
    ? formatJourneyPosition(nextMilestonePosition)
    : null;
  const where = nextMilestone ? getOverviewMilestoneWhere(nextMilestone) : null;

  return (
    <ObjectiveCard
      titleId={titleId}
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
