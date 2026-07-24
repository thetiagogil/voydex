import { getTeamPlanFollowingLabel } from "@/modules/mainline/features/plays/hub/views/team/shared/team-plan-display";
import type { MainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { Card, CardContent } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

const metricToneClassNames = {
  info: "text-info",
  neutral: "text-foreground",
  success: "text-success",
  warning: "text-warning",
} as const;

type PlanMetricProps = {
  description: string;
  label: string;
  tone?: keyof typeof metricToneClassNames;
  value: string | number;
};

const PlanMetric = ({
  description,
  label,
  tone = "neutral",
  value,
}: PlanMetricProps) => {
  return (
    <ExplanatoryTip
      content={description}
      contentClassName="max-w-72"
      trigger={
        <button
          type="button"
          className="border-app-surface-border/60 bg-background/35 focus-visible:ring-ring/40 grid h-full w-full min-w-0 cursor-help grid-cols-[auto_1fr] items-center gap-2 rounded-lg border px-3 py-2.5 text-left outline-none focus-visible:ring-2 xl:w-auto"
          aria-label={description}
        />
      }
    >
      <span
        className={cn(
          "font-serif text-lg leading-none font-semibold tabular-nums",
          metricToneClassNames[tone],
        )}
      >
        {value}
      </span>
      <span className="text-muted-foreground text-[0.6875rem] leading-4">
        {label}
      </span>
    </ExplanatoryTip>
  );
};

const getPlanStatusTone = (statusName: string): StatusBadgeTone => {
  switch (statusName.toLowerCase()) {
    case "active":
      return "success";
    case "archived":
      return "info";
    default:
      return "neutral";
  }
};

export const TeamPlanSummarySection = ({
  plan,
}: {
  plan: MainlinePlayTeamPlanSummary;
}) => {
  return (
    <Card className="bg-card ring-app-surface-border/80 gap-0 py-0 shadow-xs">
      <CardContent className="grid gap-4 p-4 xl:grid-cols-[minmax(20rem,1fr)_auto] xl:items-stretch">
        <div className="flex min-w-0 items-center gap-3">
          <span className="border-app-surface-border/60 bg-primary/8 text-primary flex size-11 shrink-0 items-center justify-center rounded-lg border">
            <AppIcon
              icon={appIcons.views.mainline.team}
              size="lg"
              aria-hidden
            />
          </span>
          <div className="grid min-w-0 gap-1">
            <div className="flex min-w-0 flex-wrap items-center gap-2">
              <h2 className="text-primary font-serif text-sm leading-5 font-semibold">
                {plan.planName}
              </h2>
              <StatusBadge
                tone={getPlanStatusTone(plan.statusName)}
                className="normal-case"
              >
                {plan.statusName}
              </StatusBadge>
            </div>
            <p className="text-muted-foreground text-xs">
              {getTeamPlanFollowingLabel(plan.followingState)}
            </p>
          </div>
        </div>

        <div className="grid grid-cols-3 items-stretch gap-2 xl:flex xl:flex-wrap xl:justify-end">
          <PlanMetric
            value={`${plan.foundCount}/${plan.targetCount}`}
            label="Planned found"
            tone="info"
            description={`${plan.foundCount} of ${plan.targetCount} planned Pokémon have been found in this Play.`}
          />
          <PlanMetric
            value={plan.exactMatchCount}
            label="Exact matches"
            tone="success"
            description={`${plan.exactMatchCount} planned Pokémon exactly match their tracked Pokémon and every specified build field.`}
          />
          <PlanMetric
            value={plan.offPlanCount}
            label="Unplanned"
            tone={plan.offPlanCount ? "warning" : "neutral"}
            description={
              plan.offPlanMemberNames.length
                ? `Tracked outside the Plan: ${plan.offPlanMemberNames.join(", ")}.`
                : "Every tracked Pokémon is represented by the Plan."
            }
          />
        </div>
      </CardContent>
    </Card>
  );
};
