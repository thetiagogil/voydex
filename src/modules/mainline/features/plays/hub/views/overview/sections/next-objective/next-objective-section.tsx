import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { AddNoteDialog } from "@/modules/mainline/features/plays/hub/components/add-note-dialog";
import { OverviewRecordButton } from "@/modules/mainline/features/plays/hub/views/overview/client/overview-recording";
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
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { PlayTeamParty } from "@/modules/mainline/features/plays/shared/components/play-team-party";
import type { PlayTeamSnapshotMember } from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type NextObjectiveSectionProps = {
  lastCompletedMilestone: OverviewMilestone | null;
  /* The team saved with the last milestone recorded. */
  lastRecordedTeam: PlayTeamSnapshotMember[];
  nextMilestone: OverviewMilestone | null;
  nextMilestonePosition: { sequence: number; total: number } | null;
  playId: string;
};

const titleId = "next-objective-title";

/* A choice milestone needs its choice, so it records from Story's form. */
const hasDecision = (milestone: OverviewMilestone) =>
  Array.isArray(milestone.decision_options) &&
  milestone.decision_options.length > 0;

/*
 * The next objective is quiet: a Fredoka title and the page's one main
 * button, which records it in place (a choice opens Story's form), then
 * "Add a note". Under a rule, the last thing recorded and, from `sm` up, the
 * team you had then.
 */
export const NextObjectiveSection = ({
  lastCompletedMilestone,
  lastRecordedTeam,
  nextMilestone,
  nextMilestonePosition,
  playId,
}: NextObjectiveSectionProps) => {
  /* Numbered within its journey, as Story numbers it. */
  const position = nextMilestonePosition
    ? `Milestone ${nextMilestonePosition.sequence} of ${nextMilestonePosition.total}`
    : null;
  const where = nextMilestone ? getOverviewMilestoneWhere(nextMilestone) : null;

  return (
    <ObjectiveCard
      titleId={titleId}
      actions={
        nextMilestone?.milestone_id != null ? (
          <>
            {hasDecision(nextMilestone) ? (
              <Link
                href={appRoutes.mainlinePlayProgressStoryRecord(
                  playId,
                  nextMilestone.milestone_id,
                )}
                className={cn(
                  buttonVariants({ size: "lg" }),
                  "h-auto min-h-13 py-3 text-left whitespace-normal sm:whitespace-nowrap",
                )}
              >
                <AppIcon icon={appIcons.status.active} />
                Record {nextMilestone.milestone_name}
              </Link>
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
              className={buttonVariants({ size: "lg", variant: "outline" })}
            >
              <AppIcon icon={appIcons.milestones.story} />
              See the Story
            </Link>
            <AddNoteDialog playId={playId} size="lg" />
          </>
        )
      }
      footer={
        lastCompletedMilestone ? (
          <>
            <span className="min-w-0">
              Last recorded{" "}
              <b className="text-ink font-extrabold">
                {lastCompletedMilestone.milestone_name}
              </b>
              {lastCompletedMilestone.completed_at ? (
                <>
                  {" · "}
                  <PlayMomentTime
                    value={lastCompletedMilestone.completed_at}
                    format="date"
                  />
                </>
              ) : null}
            </span>
            <PlayTeamParty members={lastRecordedTeam} className="ml-auto" />
          </>
        ) : (
          "Nothing recorded yet."
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
