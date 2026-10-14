import type { BadgeCase } from "@/modules/mainline/features/plays/hub/views/overview/data/badge-case-mapper";
import {
  getOverviewMilestoneWhere,
  type OverviewAheadMilestone,
} from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import { OverviewStampGrid } from "@/modules/mainline/features/plays/hub/views/overview/client/overview-recording";
import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";

type BadgeCaseSectionProps = {
  aheadMilestones: OverviewAheadMilestone[];
  badgeCase: BadgeCase;
  storyHref: string;
};

/*
 * The stamps, then what is ahead in the journey: the next objective and the
 * milestones after it, each with Story's marker and where it happens.
 */
export const BadgeCaseSection = ({
  aheadMilestones,
  badgeCase,
  storyHref,
}: BadgeCaseSectionProps) => {
  return (
    <DetailSectionCard
      title="Gym badges"
      aside={
        badgeCase.earnedGymCount === 0
          ? `${badgeCase.gymCount} to earn`
          : undefined
      }
      more={{ href: storyHref, label: "Story" }}
      contentClassName="pt-2"
    >
      <OverviewStampGrid
        className="grid-cols-5 gap-4 p-1 sm:grid-cols-9"
        stamps={badgeCase.stamps}
      />
      <div className="text-ink-2 mt-5 flex flex-wrap justify-between gap-x-3 gap-y-1 text-[13.5px] font-semibold">
        <span>
          <b className="text-ink font-extrabold">
            {badgeCase.earnedGymCount} of {badgeCase.gymCount}
          </b>{" "}
          badges
          {badgeCase.lastEarnedAt ? (
            <>
              {" · last on "}
              <PlayMomentTime value={badgeCase.lastEarnedAt} format="date" />
            </>
          ) : null}
        </span>
        <span>
          {badgeCase.nextName
            ? `${badgeCase.nextName} next`
            : "League complete"}
        </span>
      </div>
      {aheadMilestones.length ? (
        <ol aria-label="Ahead in the story" className="mt-4.5">
          {aheadMilestones.map(({ badgeType, milestone, sequence, state }) => (
            <li
              key={milestone.milestone_id}
              className="text-14 grid grid-cols-[28px_minmax(0,1fr)_auto] items-start gap-3 py-2.5"
            >
              <MilestoneMarker
                badgeType={badgeType}
                sequence={sequence}
                size="sm"
                state={state}
                typeSlug={milestone.milestone_type_slug}
              />
              {/* The name, then where it happens in full: nothing is cut. */}
              <span className="grid min-w-0 gap-0.5">
                <span
                  className={cn(
                    "font-extrabold",
                    state === "done" && "text-ink-3 line-through",
                  )}
                >
                  <span className="sr-only">
                    Milestone {sequence}
                    {state === "done" ? ", recorded" : null},{" "}
                  </span>
                  {milestone.milestone_name}
                </span>
                <span className="text-ink-3 text-13 font-semibold">
                  {getOverviewMilestoneWhere(milestone) ??
                    milestone.milestone_type_name}
                </span>
              </span>
              {state === "next" ? (
                <span className="text-ink-2 text-13 font-extrabold">Next</span>
              ) : null}
            </li>
          ))}
        </ol>
      ) : null}
    </DetailSectionCard>
  );
};
