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
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

import { TeamPlanFollowingPill } from "./components/team-plan-pill";
import { TeamPlanCompareDialog } from "./sections/compare/team-plan-compare-dialog";
import { TeamPlanFollowMenu } from "./sections/head/team-plan-follow-menu";
import { TeamPlanSharedTip } from "./sections/head/team-plan-head";
import { TeamPlanOffPlanSection } from "./sections/off-plan/team-plan-off-plan-section";
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
          action={
            <TeamPlanFollowMenu
              currentPlanId={null}
              label="Follow a Plan"
              plans={data.followablePlans}
              playId={playId}
              versionGroupSlug={data.versionGroupSlug}
            />
          }
        />
        <EmptyState
          headingLevel="h2"
          title="No Plan yet"
          description="A Plan is the team you're aiming for in this Play. Make one in the Team Planner and follow it here to see how close your team is."
          action={
            <>
              <Button
                render={
                  <Link
                    href={appRoutes.mainlinePlanNew(
                      data.versionGroupSlug ?? undefined,
                    )}
                  />
                }
                nativeButton={false}
              >
                Plan a team
              </Button>
              <Button
                variant="secondary"
                render={<Link href={appRoutes.mainlinePlayTeam(playId)} />}
                nativeButton={false}
              >
                Open your team
              </Button>
            </>
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
            /*
             * One line, as Story's and Pokédex's: how this Play follows the
             * Plan, then how much of it is found. The card that repeated
             * both as a pill and a bar is gone.
             */
            <span className="inline-flex flex-wrap items-center gap-x-2 gap-y-1">
              <TeamPlanFollowingPill state={plan.followingState} />
              <span>
                <b className="text-ink font-extrabold tabular-nums">
                  {plan.foundCount} of {plan.targetCount}
                </b>{" "}
                targets found ·{" "}
                <span className="tabular-nums">{plan.exactMatchCount}</span>{" "}
                exact
              </span>
            </span>
          }
          action={
            <div className="flex flex-wrap items-center gap-2.5 sm:justify-end">
              <TeamPlanFollowMenu
                currentPlanId={plan.planId}
                plans={data.followablePlans}
                playId={playId}
                versionGroupSlug={data.versionGroupSlug}
              />
              <span className="inline-flex items-center gap-2">
                <Button
                  render={<Link href={appRoutes.mainlinePlan(plan.planId)} />}
                  nativeButton={false}
                >
                  <AppIcon icon={appIcons.actions.edit} inline="start" />
                  Edit in Team Planner
                </Button>
                <TeamPlanSharedTip linkedPlayCount={plan.linkedPlayCount} />
              </span>
            </div>
          }
        />
        {plan.notes ? (
          <p className="text-ink-2 text-15 max-w-prose leading-relaxed whitespace-pre-line">
            {plan.notes}
          </p>
        ) : null}
      </div>

      <TeamPlanTargetsSection
        comparisons={plan.comparisons}
        mechanics={plan.mechanics}
        otherVersionExclusives={plan.otherVersionExclusives}
        onSelect={(comparison) => {
          setSelectedComparison(comparison);
          setIsCompareOpen(true);
        }}
      />

      {plan.offPlanMembers.some(
        (member) =>
          member.roster_state_slug === "active" ||
          member.roster_state_slug === "reserve",
      ) ? (
        <TeamPlanOffPlanSection members={plan.offPlanMembers} />
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
