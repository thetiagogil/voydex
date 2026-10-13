"use client";

import { useRef } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { Sheet, SheetContent, SheetTitle } from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";

import { getTeamMemberName } from "../../utils/team-member-display";
import {
  TeamMemberActions,
  TeamMemberMoreActions,
} from "./team-member-actions";
import {
  TeamMemberProfile,
  teamMemberNameClassName,
} from "./team-member-profile";

type TeamMemberDetailSheetProps = {
  gameSlug: string | null;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember | null;
  onOpenChange: (open: boolean) => void;
  open: boolean;
};

/*
 * On phones and tablets the selected Pokémon opens in a bottom sheet: Edit and
 * Open in Codex pinned to the foot, the editor's actions beside the close
 * button.
 */
export const TeamMemberDetailSheet = ({
  gameSlug,
  mechanics,
  member,
  onOpenChange,
  open,
}: TeamMemberDetailSheetProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);

  return (
    <Sheet open={open && Boolean(member)} onOpenChange={onOpenChange}>
      <SheetContent
        side="bottom"
        initialFocus={titleRef}
        className="mx-auto max-h-[88dvh] w-full max-w-[560px] gap-0 p-0 data-[side=bottom]:rounded-t-xl"
      >
        <span
          aria-hidden
          className="bg-line mx-auto mt-2.5 mb-0.5 h-[5px] w-11 shrink-0 rounded-full"
        />
        {member ? (
          <>
            <TeamMemberMoreActions
              member={member}
              variant="ghost"
              className="bg-surface-2 text-ink-2 hover:bg-hover hover:text-ink absolute top-3 right-[3.75rem] z-10 size-10 rounded-full"
            />
            <div className="min-h-0 flex-1 overflow-y-auto px-[18px] pt-1.5 pb-5 sm:px-5">
              <TeamMemberProfile
                mechanics={mechanics}
                member={member}
                shinyTagSide="left"
                title={
                  <SheetTitle
                    ref={titleRef}
                    tabIndex={-1}
                    className={cn(teamMemberNameClassName, "outline-none")}
                  >
                    {getTeamMemberName(member)}
                  </SheetTitle>
                }
              />
            </div>
            <div className="border-line bg-surface shrink-0 border-t px-[18px] pt-3 pb-[calc(0.75rem+env(safe-area-inset-bottom))] sm:px-5">
              <TeamMemberActions gameSlug={gameSlug} member={member} stretch />
            </div>
          </>
        ) : null}
      </SheetContent>
    </Sheet>
  );
};
