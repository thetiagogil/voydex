"use client";

import { TeamPlanComparisonDetails } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-comparison-details";
import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
} from "@/shared/components/ui/sheet";

type TeamPlanComparisonSheetProps = {
  comparison: MainlinePlayTeamPlanMemberComparison | null;
  open: boolean;
  onOpenChange: (open: boolean) => void;
};

export const TeamPlanComparisonSheet = ({
  comparison,
  open,
  onOpenChange,
}: TeamPlanComparisonSheetProps) => {
  return (
    <Sheet open={open && Boolean(comparison)} onOpenChange={onOpenChange}>
      <SheetContent
        side="right"
        className="overflow-y-auto data-[side=right]:w-full data-[side=right]:sm:max-w-2xl"
      >
        <SheetHeader className="border-app-surface-border/60 border-b pr-12">
          <SheetTitle className="font-serif text-lg font-semibold">
            {comparison
              ? `Slot ${comparison.slot}${comparison.roleLabel ? ` · ${comparison.roleLabel}` : ""}`
              : "Plan comparison"}
          </SheetTitle>
          <SheetDescription>
            Planned requirements compared with the automatically matched Play
            Pokémon.
          </SheetDescription>
        </SheetHeader>

        {comparison ? (
          <div className="px-4 pb-6">
            <TeamPlanComparisonDetails
              comparison={comparison}
              idPrefix={`team-plan-sheet-${comparison.planMemberId}`}
            />
          </div>
        ) : null}
      </SheetContent>
    </Sheet>
  );
};
