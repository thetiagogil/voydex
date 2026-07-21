import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import {
  getTeamPlanActiveTargetSummary,
  getTeamPlanChangeSummary,
  getTeamPlanFollowingLabel,
  getTeamPlanTargetProgressLabel,
} from "@/modules/mainline/features/plays/hub/tabs/team/sections/team-plan/team-plan-display";
import type {
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanSummary,
} from "@/modules/mainline/features/plays/hub/types";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";

const followingStateTones = {
  following: "success",
  "following-with-changes": "warning",
  "not-following": "destructive",
  "not-started": "neutral",
} satisfies Record<MainlinePlayTeamPlanFollowingState, StatusBadgeTone>;

type TeamPlanPanelProps = {
  plan: MainlinePlayTeamPlanSummary;
};

export const TeamPlanPanel = ({ plan }: TeamPlanPanelProps) => {
  const activeTargetSummary = getTeamPlanActiveTargetSummary(plan);
  const changeSummary = getTeamPlanChangeSummary(plan);

  return (
    <MainlinePlaySectionCard
      title="Team Plan"
      action={
        <MainlinePlaySectionDestination
          label="View plan"
          unavailableLabel="Plan detail is not available yet"
        />
      }
      contentClassName="grid gap-3 py-3"
      showSeparator
    >
      <div className="grid justify-items-start gap-1.5">
        <p className="text-foreground text-sm leading-5 font-semibold">
          {plan.planName}
        </p>
        <StatusBadge
          tone={followingStateTones[plan.followingState]}
          className="normal-case"
        >
          {getTeamPlanFollowingLabel(plan.followingState)}
        </StatusBadge>
      </div>

      <dl className="border-app-surface-border/60 grid gap-3 border-t pt-3">
        <div className="grid gap-0.5">
          <dt className="text-muted-foreground text-[0.6875rem] font-medium tracking-wide uppercase">
            Target progress
          </dt>
          <dd className="text-foreground text-sm font-medium">
            {getTeamPlanTargetProgressLabel(plan)}
          </dd>
          {activeTargetSummary ? (
            <dd className="text-muted-foreground text-xs leading-5">
              {activeTargetSummary}
            </dd>
          ) : null}
        </div>

        {changeSummary ? (
          <div className="grid gap-0.5">
            <dt className="text-muted-foreground text-[0.6875rem] font-medium tracking-wide uppercase">
              Changes from plan
            </dt>
            <dd className="text-foreground/80 text-xs leading-5">
              {changeSummary}
            </dd>
          </div>
        ) : null}
      </dl>
    </MainlinePlaySectionCard>
  );
};
