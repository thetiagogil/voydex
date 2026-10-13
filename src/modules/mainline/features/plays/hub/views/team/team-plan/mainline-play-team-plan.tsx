"use client";

import Link from "next/link";
import { useParams } from "next/navigation";
import { useState } from "react";

import type {
  MainlinePlayTeamPlanData,
  MainlinePlayTeamPlanMemberComparison,
} from "@/modules/mainline/features/plays/hub/types";
import { appRoutes } from "@/config/routes";
import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
import { Button } from "@/shared/components/ui/button";

import { TeamPlanCompareDialog } from "./sections/compare/team-plan-compare-dialog";
import { TeamPlanSharedTip } from "./sections/head/team-plan-head";
import { TeamPlanOffPlanSection } from "./sections/off-plan/team-plan-off-plan-section";
import { TeamPlanSummarySection } from "./sections/summary/team-plan-summary-section";
import { TeamPlanTargetsSection } from "./sections/targets/team-plan-targets-section";

type MainlinePlayTeamPlanProps = {
  data: MainlinePlayTeamPlanData;
};

/*
 * Team Plan: how this Play compares with the Plan it follows. Nothing here is
 * loud; the targets are lively (stickers once found, silhouettes until then)
 * and each one's detail opens in the compare dialog.
 */
export const MainlinePlayTeamPlan = ({ data }: MainlinePlayTeamPlanProps) => {
  const plan = data.teamPlan;
  const { playId } = useParams<{ playId: string }>();
  const [selectedComparison, setSelectedComparison] =
    useState<MainlinePlayTeamPlanMemberComparison | null>(null);
  const [isCompareOpen, setIsCompareOpen] = useState(false);

  if (!plan) {
    return (
      <div className="grid gap-5">
        <PageHeader
          headingLevel="h2"
          title="Plan"
          description="The team you're aiming for"
          className="pt-0 sm:pt-0"
        />
        <EmptyState
          title="No Plan yet"
          description="A Plan is the team you're aiming for in this Play. Once this Play follows one, this page shows how close your team is."
          action={
            <Button
              variant="outline"
              render={<Link href={appRoutes.mainlinePlayTeam(playId)} />}
              nativeButton={false}
            >
              Open your team
            </Button>
          }
        />
      </div>
    );
  }

  return (
    <div className="grid min-w-0 gap-8 sm:gap-10">
      <div className="grid gap-5">
        <PageHeader
          headingLevel="h2"
          title={plan.planName}
          className="pt-0 sm:pt-0"
          description={
            <>
              The Plan this Play follows ·{" "}
              <b className="text-ink font-extrabold tabular-nums">
                {plan.foundCount} of {plan.targetCount}
              </b>{" "}
              targets recorded ·{" "}
              <span className="tabular-nums">{plan.exactMatchCount}</span> exact{" "}
              <TeamPlanSharedTip linkedPlayCount={plan.linkedPlayCount} />
            </>
          }
        />
        <TeamPlanSummarySection plan={plan} />
      </div>

      <TeamPlanTargetsSection
        comparisons={plan.comparisons}
        mechanics={plan.mechanics}
        onSelect={(comparison) => {
          setSelectedComparison(comparison);
          setIsCompareOpen(true);
        }}
      />

      {plan.offPlanMemberNames.length ? (
        <TeamPlanOffPlanSection names={plan.offPlanMemberNames} />
      ) : null}

      <TeamPlanCompareDialog
        comparison={selectedComparison}
        mechanics={plan.mechanics}
        open={isCompareOpen}
        onOpenChange={setIsCompareOpen}
      />
    </div>
  );
};
