import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import {
  getTeamPlanActiveTargetSummary,
  getTeamPlanChangeSummary,
  getTeamPlanFollowingLabel,
  getTeamPlanTargetProgressLabel,
} from "@/modules/mainline/features/plays/hub/views/team/shared/team-plan-display";
import type {
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanPreview,
} from "@/modules/mainline/features/plays/hub/types";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { Progress } from "@/shared/components/ui/progress";

const followingStateTones = {
  following: "ok",
  "following-with-changes": "warn",
  "not-following": "danger",
  "not-started": "neutral",
} satisfies Record<MainlinePlayTeamPlanFollowingState, StatusBadgeTone>;

type LinkedPlanSummarySectionProps = {
  href: string;
  plan: MainlinePlayTeamPlanPreview;
};

/* The Plan this Play follows: how much of it you've found, and what differs. */
export const LinkedPlanSummarySection = ({
  href,
  plan,
}: LinkedPlanSummarySectionProps) => {
  const foundPercent = plan.targetCount
    ? Math.round((plan.foundCount / plan.targetCount) * 100)
    : null;
  const notes = [
    getTeamPlanActiveTargetSummary(plan),
    getTeamPlanChangeSummary(plan),
  ].filter(Boolean);

  return (
    <DetailSectionCard
      title="Plan"
      headingLevel={3}
      action={<MainlinePlaySectionDestination href={href} label="Open Plan" />}
      contentClassName="grid gap-4 pt-1"
    >
      <div className="flex min-w-0 flex-wrap items-center justify-between gap-x-3 gap-y-2">
        <p className="text-16 min-w-0 font-extrabold break-words">
          {plan.planName}
        </p>
        <StatusBadge tone={followingStateTones[plan.followingState]}>
          {getTeamPlanFollowingLabel(plan.followingState)}
        </StatusBadge>
      </div>

      {foundPercent === null ? null : (
        <Progress
          value={foundPercent}
          aria-label="Planned Pokémon found"
          className="gap-y-2"
        >
          <span className="text-ink-2 text-14 font-bold">
            {getTeamPlanTargetProgressLabel(plan)}
          </span>
          <span className="text-14 ml-auto font-extrabold tabular-nums">
            {foundPercent}%
          </span>
        </Progress>
      )}

      {notes.length ? (
        <p className="text-ink-2 text-13 border-line border-t pt-3 font-semibold">
          {notes.join(" · ")}
        </p>
      ) : null}
    </DetailSectionCard>
  );
};
