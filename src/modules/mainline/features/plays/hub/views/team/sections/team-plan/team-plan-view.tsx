"use client";

import { useState } from "react";

import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { useTeamDetailSheetLayout } from "@/modules/mainline/features/plays/hub/views/team/client/use-team-detail-sheet-layout";
import { TeamPlanComparisonDetails } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-comparison-details";
import { teamPlanComparisonGridClassName } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-comparison-layout";
import { TeamPlanComparisonRow } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-comparison-row";
import { TeamPlanComparisonSheet } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-comparison-sheet";
import { getTeamPlanFollowingLabel } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-display";
import type {
  MainlinePlayTeamPlanMemberComparison,
  MainlinePlayTeamPlanSummary,
} from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
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

type TeamPlanViewProps = {
  plan: MainlinePlayTeamPlanSummary;
};

export const TeamPlanView = ({ plan }: TeamPlanViewProps) => {
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
  const selectComparison = (
    comparison: MainlinePlayTeamPlanMemberComparison,
  ) => {
    setSelectedComparisonId(comparison.planMemberId);
    if (usesComparisonSheet) setIsComparisonSheetOpen(true);
  };

  return (
    <div className="grid gap-4">
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

      <div
        className={cn(
          "grid gap-4",
          selectedComparison &&
            "lg:grid-cols-[minmax(0,1.7fr)_minmax(22rem,1fr)]",
        )}
      >
        <div
          className={cn(
            "grid h-full gap-4",
            plan.notes && "lg:grid-rows-[auto_minmax(0,1fr)]",
          )}
        >
          <MainlinePlaySectionCard
            title="Planned team comparison"
            contentClassName="p-0!"
            className={cn(!plan.notes && "lg:h-full")}
            showSeparator
          >
            <div
              className={cn(
                "text-muted-foreground hidden gap-2.5 px-5 py-2 text-[0.625rem] font-medium uppercase lg:grid",
                teamPlanComparisonGridClassName,
              )}
            >
              <span />
              <span>Planned Pokémon</span>
              <span />
              <span>Tracked</span>
              <span />
            </div>
            {plan.comparisons.length ? (
              <div
                role="list"
                aria-label="Team Plan comparisons"
                className="grid gap-1.5 p-2"
              >
                {plan.comparisons.map((comparison) => (
                  <TeamPlanComparisonRow
                    key={comparison.planMemberId}
                    comparison={comparison}
                    selected={
                      selectedComparison?.planMemberId ===
                        comparison.planMemberId &&
                      (!usesComparisonSheet || isComparisonSheetOpen)
                    }
                    onSelect={selectComparison}
                  />
                ))}
              </div>
            ) : (
              <p className="text-muted-foreground px-4 py-8 text-center text-sm">
                This Plan does not have any planned Pokémon yet.
              </p>
            )}
          </MainlinePlaySectionCard>

          {plan.notes ? (
            <MainlinePlaySectionCard
              title="Planned notes"
              className="lg:h-full"
              showSeparator
            >
              <p className="text-muted-foreground text-sm leading-6">
                {plan.notes}
              </p>
            </MainlinePlaySectionCard>
          ) : null}
        </div>

        {selectedComparison ? (
          <aside className="hidden h-full lg:block">
            <Card className="bg-card ring-app-surface-border/80 h-full gap-0 py-0 shadow-xs">
              <CardContent className="p-4">
                <h2 className="sr-only">
                  Slot {selectedComparison.slot} comparison
                </h2>
                <TeamPlanComparisonDetails
                  comparison={selectedComparison}
                  idPrefix={`team-plan-panel-${selectedComparison.planMemberId}`}
                  mechanics={plan.mechanics}
                />
              </CardContent>
            </Card>
          </aside>
        ) : null}
      </div>

      <TeamPlanComparisonSheet
        comparison={selectedComparison}
        mechanics={plan.mechanics}
        open={usesComparisonSheet && isComparisonSheetOpen}
        onOpenChange={setIsComparisonSheetOpen}
      />
    </div>
  );
};
