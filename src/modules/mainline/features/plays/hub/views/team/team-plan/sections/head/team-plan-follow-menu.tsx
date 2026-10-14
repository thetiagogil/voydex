"use client";

import Link from "next/link";
import { useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayFollowablePlan } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { Spinner } from "@/shared/components/ui/spinner";

import { followMainlinePlayPlanAction } from "../../server/follow-plan-action";

/*
 * v3's "Follow a different Plan": your other Plans for this game in a quiet
 * menu. Picking one makes this Play follow it; the comparison redraws. With
 * no other Plan yet, it offers to make one in the Team Planner.
 */
export const TeamPlanFollowMenu = ({
  currentPlanId,
  label = "Follow a different Plan",
  plans,
  playId,
  versionGroupSlug,
}: {
  currentPlanId: string | null;
  label?: string;
  plans: MainlinePlayFollowablePlan[];
  playId: string;
  /* Starts a new Plan for this Play's game. */
  versionGroupSlug: string | null;
}) => {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const otherPlans = plans.filter((plan) => plan.planId !== currentPlanId);

  const follow = (plan: MainlinePlayFollowablePlan) => {
    startTransition(async () => {
      const result = await followMainlinePlayPlanAction({
        planId: plan.planId,
        planName: plan.name,
        playId,
      });

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(result.message);
      router.refresh();
    });
  };

  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        disabled={isPending}
        render={<Button type="button" variant="outline" size="sm" />}
      >
        {isPending ? <Spinner data-icon="inline-start" /> : null}
        {label}
        <AppIcon icon={appIcons.actions.expand} inline="end" />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" className="w-auto min-w-64">
        <DropdownMenuGroup>
          <DropdownMenuLabel>Your Plans for this game</DropdownMenuLabel>
          {otherPlans.length ? null : (
            <p className="text-ink-3 text-13 px-2.5 py-2 font-semibold">
              No other Plan for this game yet.
            </p>
          )}
          {otherPlans.map((plan) => (
            <DropdownMenuItem key={plan.planId} onClick={() => follow(plan)}>
              <span className="grid min-w-0">
                <span className="truncate">{plan.name}</span>
                <span className="text-ink-3 text-12 font-semibold">
                  {plan.memberCount}{" "}
                  {plan.memberCount === 1 ? "target" : "targets"}
                </span>
              </span>
            </DropdownMenuItem>
          ))}
          <DropdownMenuItem
            render={
              <Link
                href={appRoutes.mainlinePlanNew(versionGroupSlug ?? undefined)}
              />
            }
          >
            <AppIcon icon={appIcons.actions.create} inline="start" />
            Make a new Plan
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
