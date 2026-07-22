"use client";

import { useState } from "react";

import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { useTeamDetailSheetLayout } from "@/modules/mainline/features/plays/hub/tabs/team/client/use-team-detail-sheet-layout";
import { TeamPlanComparisonDetails } from "@/modules/mainline/features/plays/hub/tabs/team/sections/team-plan/team-plan-comparison-details";
import { TeamPlanComparisonRow } from "@/modules/mainline/features/plays/hub/tabs/team/sections/team-plan/team-plan-comparison-row";
import { TeamPlanComparisonSheet } from "@/modules/mainline/features/plays/hub/tabs/team/sections/team-plan/team-plan-comparison-sheet";
import { getTeamPlanFollowingLabel } from "@/modules/mainline/features/plays/hub/tabs/team/sections/team-plan/team-plan-display";
import type {
  MainlinePlayTeamPlanMemberComparison,
  MainlinePlayTeamPlanSummary,
} from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

const metricToneClassNames = {
  info: "text-info",
  neutral: "text-foreground",
  success: "text-success",
  warning: "text-warning",
} as const;

type PlanMetricProps = {
  label: string;
  tone?: keyof typeof metricToneClassNames;
  value: string | number;
};

const PlanMetric = ({ label, tone = "neutral", value }: PlanMetricProps) => {
  return (
    <div className="border-app-surface-border/60 bg-background/35 grid min-w-0 grid-cols-[auto_1fr] items-center gap-2 rounded-lg border px-3 py-2.5">
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
    </div>
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

type TeamPlanViewProps = {
  onBack: () => void;
  plan: MainlinePlayTeamPlanSummary;
};

export const TeamPlanView = ({ onBack, plan }: TeamPlanViewProps) => {
  const usesComparisonSheet = useTeamDetailSheetLayout();
  const [selectedComparisonId, setSelectedComparisonId] = useState(
    plan.comparisons[0]?.planMemberId ?? null,
  );
  const [isComparisonSheetOpen, setIsComparisonSheetOpen] = useState(false);
  const selectedComparison =
    plan.comparisons.find(
      (comparison) => comparison.planMemberId === selectedComparisonId,
    ) ??
    plan.comparisons[0] ??
    null;
  const changedCount = plan.foundCount - plan.exactMatchCount;
  const missingCount = plan.targetCount - plan.foundCount;

  const selectComparison = (
    comparison: MainlinePlayTeamPlanMemberComparison,
  ) => {
    setSelectedComparisonId(comparison.planMemberId);
    if (usesComparisonSheet) setIsComparisonSheetOpen(true);
  };

  return (
    <div className="grid gap-4">
      <Card className="bg-card ring-app-surface-border/80 gap-0 py-0 shadow-xs">
        <CardContent className="grid gap-4 p-4 2xl:grid-cols-[minmax(20rem,1fr)_auto_auto] 2xl:items-center">
          <div className="flex min-w-0 items-center gap-3">
            <span className="border-app-surface-border/60 bg-primary/8 text-primary flex size-11 shrink-0 items-center justify-center rounded-lg border">
              <AppIcon
                icon={appIcons.views.mainline.team}
                size="lg"
                aria-hidden
              />
            </span>
            <div className="grid min-w-0 gap-1">
              <span className="text-muted-foreground text-[0.6875rem] font-medium uppercase">
                Linked plan
              </span>
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

          <Button type="button" variant="outline" size="sm" onClick={onBack}>
            <AppIcon icon={appIcons.actions.back} inline="start" aria-hidden />
            Back to team
          </Button>

          <div className="grid grid-cols-2 gap-2 sm:grid-cols-5 2xl:grid-cols-[repeat(5,6.75rem)]">
            <PlanMetric
              value={`${plan.foundCount}/${plan.targetCount}`}
              label="Planned found"
              tone="info"
            />
            <PlanMetric
              value={plan.exactMatchCount}
              label="Exact matches"
              tone="success"
            />
            <PlanMetric
              value={changedCount}
              label="Changed"
              tone={changedCount ? "warning" : "neutral"}
            />
            <Tooltip>
              <TooltipTrigger
                render={
                  <button
                    type="button"
                    className="focus-visible:ring-ring/40 rounded-lg text-left outline-none focus-visible:ring-2"
                    aria-label={`${plan.offPlanCount} unplanned Play members`}
                  />
                }
              >
                <PlanMetric
                  value={plan.offPlanCount}
                  label="Unplanned"
                  tone={plan.offPlanCount ? "warning" : "neutral"}
                />
              </TooltipTrigger>
              <TooltipContent className="max-w-72 leading-5">
                {plan.offPlanMemberNames.length
                  ? plan.offPlanMemberNames.join(", ")
                  : "Every recorded Play member is represented by the Plan."}
              </TooltipContent>
            </Tooltip>
            <PlanMetric
              value={missingCount}
              label="Missing"
              tone={missingCount ? "warning" : "neutral"}
            />
          </div>
        </CardContent>
      </Card>

      <div
        className={cn(
          "grid gap-4 lg:items-start",
          selectedComparison &&
            "lg:grid-cols-[minmax(0,1.7fr)_minmax(22rem,1fr)]",
        )}
      >
        <MainlinePlaySectionCard
          title="Planned team comparison"
          description="Select a row to inspect identity and specified build fields."
          contentClassName="p-0!"
          showSeparator
        >
          <div className="text-muted-foreground hidden grid-cols-[minmax(0,1fr)_10.5rem_minmax(0,1fr)_1.25rem] gap-2.5 px-5 py-2 text-[0.625rem] font-medium uppercase md:grid">
            <span>Planned Pokémon</span>
            <span>Status</span>
            <span>In this Play</span>
            <span />
          </div>
          {plan.comparisons.length ? (
            <div
              role="list"
              aria-label="Team Plan comparisons"
              className="grid gap-1.5 p-2"
            >
              {plan.comparisons.map((comparison) => (
                <div role="listitem" key={comparison.planMemberId}>
                  <TeamPlanComparisonRow
                    comparison={comparison}
                    selected={
                      selectedComparison?.planMemberId ===
                      comparison.planMemberId
                    }
                    onSelect={selectComparison}
                  />
                </div>
              ))}
            </div>
          ) : (
            <p className="text-muted-foreground px-4 py-8 text-center text-sm">
              This Plan does not have any planned Pokémon yet.
            </p>
          )}
        </MainlinePlaySectionCard>

        {selectedComparison ? (
          <aside className="sticky top-4 hidden lg:block">
            <MainlinePlaySectionCard
              title={`Slot ${selectedComparison.slot}${selectedComparison.roleLabel ? ` · ${selectedComparison.roleLabel}` : ""}`}
              showSeparator
            >
              <TeamPlanComparisonDetails
                comparison={selectedComparison}
                idPrefix={`team-plan-panel-${selectedComparison.planMemberId}`}
              />
            </MainlinePlaySectionCard>
          </aside>
        ) : null}
      </div>

      {plan.notes ? (
        <MainlinePlaySectionCard title="Plan notes" showSeparator>
          <p className="text-muted-foreground max-w-4xl text-sm leading-6">
            {plan.notes}
          </p>
        </MainlinePlaySectionCard>
      ) : null}

      <TeamPlanComparisonSheet
        comparison={selectedComparison}
        open={isComparisonSheetOpen}
        onOpenChange={setIsComparisonSheetOpen}
      />
    </div>
  );
};
