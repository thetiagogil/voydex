"use client";

import { useRef } from "react";

import { getTeamMemberName } from "../../utils/team-member-display";
import { TeamMemberDetailContent } from "./team-member-detail-content";
import { TeamMemberEditAction } from "./team-member-edit-action";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
} from "@/shared/components/ui/sheet";

type TeamMemberDetailSheetProps = {
  gameSlug: string | null;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember | null;
  onOpenChange: (open: boolean) => void;
  open: boolean;
};

export const TeamMemberDetailSheet = ({
  gameSlug,
  mechanics,
  member,
  onOpenChange,
  open,
}: TeamMemberDetailSheetProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);

  return (
    <Sheet open={open} onOpenChange={onOpenChange}>
      <SheetContent
        side="right"
        className="overflow-y-auto data-[side=right]:w-full sm:max-w-xl"
        initialFocus={titleRef}
      >
        <SheetHeader className="border-app-surface-border/60 border-b pr-12">
          <div className="flex items-start justify-between gap-3">
            <div className="grid min-w-0 gap-0.5">
              <SheetTitle
                ref={titleRef}
                tabIndex={-1}
                className="font-serif text-lg font-semibold outline-none"
              >
                {member ? getTeamMemberName(member) : "Team member"}
              </SheetTitle>
              <SheetDescription>
                Current Play-owned Pokémon record
              </SheetDescription>
            </div>
            {member ? <TeamMemberEditAction /> : null}
          </div>
        </SheetHeader>
        <div className="px-4 pb-6">
          <TeamMemberDetailContent
            gameSlug={gameSlug}
            mechanics={mechanics}
            member={member}
          />
        </div>
      </SheetContent>
    </Sheet>
  );
};
