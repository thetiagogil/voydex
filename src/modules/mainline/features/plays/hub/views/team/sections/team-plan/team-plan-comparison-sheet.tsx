"use client";

import { useRef } from "react";

import { TeamPlanComparisonDetails } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-comparison-details";
import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
} from "@/shared/components/ui/sheet";

type TeamPlanComparisonSheetProps = {
  comparison: MainlinePlayTeamPlanMemberComparison | null;
  mechanics: GameMechanicsProfile;
  open: boolean;
  onOpenChange: (open: boolean) => void;
};

export const TeamPlanComparisonSheet = ({
  comparison,
  mechanics,
  open,
  onOpenChange,
}: TeamPlanComparisonSheetProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);

  return (
    <Sheet open={open && Boolean(comparison)} onOpenChange={onOpenChange}>
      <SheetContent
        side="bottom"
        className="border-app-surface-border bg-popover max-h-[82dvh] gap-0 rounded-t-xl p-0 lg:hidden"
        initialFocus={titleRef}
      >
        <SheetHeader className="border-app-surface-border/60 border-b pr-12">
          <SheetTitle
            ref={titleRef}
            tabIndex={-1}
            className="font-serif text-lg font-semibold outline-none"
          >
            {comparison
              ? `Slot ${comparison.slot} comparison`
              : "Plan comparison"}
          </SheetTitle>
          <SheetDescription>
            Planned requirements compared with the automatically matched Play
            Pokémon.
          </SheetDescription>
        </SheetHeader>

        {comparison ? (
          <div className="min-h-0 flex-1 overflow-y-auto px-4 py-4 pb-6">
            <TeamPlanComparisonDetails
              comparison={comparison}
              idPrefix={`team-plan-sheet-${comparison.planMemberId}`}
              mechanics={mechanics}
              variant="sheet"
            />
          </div>
        ) : null}
      </SheetContent>
    </Sheet>
  );
};
