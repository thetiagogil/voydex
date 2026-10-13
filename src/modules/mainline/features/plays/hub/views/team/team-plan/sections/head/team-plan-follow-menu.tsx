"use client";

import { useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

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
 * menu. Picking one makes this Play follow it; the comparison redraws.
 */
export const TeamPlanFollowMenu = ({
  currentPlanId,
  label = "Follow a different Plan",
  plans,
  playId,
}: {
  currentPlanId: string | null;
  label?: string;
  plans: MainlinePlayFollowablePlan[];
  playId: string;
}) => {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const otherPlans = plans.filter((plan) => plan.planId !== currentPlanId);

  if (!otherPlans.length) {
    return null;
  }

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
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
