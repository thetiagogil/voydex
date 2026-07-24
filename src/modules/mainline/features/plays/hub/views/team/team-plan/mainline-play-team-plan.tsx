"use client";

import { useState } from "react";

import type {
  MainlinePlayTeamPlanData,
  MainlinePlayTeamPlanMemberComparison,
} from "@/modules/mainline/features/plays/hub/types";
import { EmptyState } from "@/shared/components/empty-state";
import { cn } from "@/shared/utils/cn";

import { useTeamDetailSheetLayout } from "../shared/use-team-detail-sheet-layout";
import { TeamPlanComparisonInspector } from "./sections/comparison/team-plan-comparison-inspector";
import { TeamPlanComparisonSection } from "./sections/comparison/team-plan-comparison-section";
import { TeamPlanComparisonSheet } from "./sections/comparison/team-plan-comparison-sheet";
import { TeamPlanNotesSection } from "./sections/notes/team-plan-notes-section";
import { TeamPlanSummarySection } from "./sections/summary/team-plan-summary-section";

type MainlinePlayTeamPlanProps = {
  data: MainlinePlayTeamPlanData;
};

export const MainlinePlayTeamPlan = ({ data }: MainlinePlayTeamPlanProps) => {
  const plan = data.teamPlan;
  const usesComparisonSheet = useTeamDetailSheetLayout();
  const [selectedComparisonId, setSelectedComparisonId] = useState(
    plan?.comparisons[0]?.planMemberId ?? null,
  );
  const [isComparisonSheetOpen, setIsComparisonSheetOpen] = useState(false);

  const selectedComparison =
    plan?.comparisons.find(
      (comparison) => comparison.planMemberId === selectedComparisonId,
    ) ??
    plan?.comparisons[0] ??
    null;

  const selectComparison = (
    comparison: MainlinePlayTeamPlanMemberComparison,
  ) => {
    setSelectedComparisonId(comparison.planMemberId);

    if (usesComparisonSheet) {
      setIsComparisonSheetOpen(true);
    }
  };

  if (!plan) {
    return (
      <EmptyState
        title="No Team Plan linked"
        description="This Play does not have a linked Team Plan to compare with its recorded team."
      />
    );
  }

  return (
    <div className="grid gap-4">
      <TeamPlanSummarySection plan={plan} />

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
          <TeamPlanComparisonSection
            comparisons={plan.comparisons}
            fillHeight={!plan.notes}
            onSelect={selectComparison}
            selectedComparisonId={selectedComparison?.planMemberId ?? null}
            showSelection={!usesComparisonSheet || isComparisonSheetOpen}
          />

          {plan.notes ? <TeamPlanNotesSection notes={plan.notes} /> : null}
        </div>

        {selectedComparison ? (
          <TeamPlanComparisonInspector
            comparison={selectedComparison}
            mechanics={plan.mechanics}
          />
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
