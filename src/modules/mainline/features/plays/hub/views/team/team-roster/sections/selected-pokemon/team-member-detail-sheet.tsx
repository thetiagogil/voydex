"use client";

import { useRef } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { SheetTitle } from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

import {
  TeamMemberActions,
  TeamMemberMoreActions,
} from "./team-member-actions";
import {
  TeamMemberProfile,
  teamMemberNameClassName,
} from "./team-member-profile";

type TeamMemberDetailSheetProps = {
  versionGroupSlug: string | null;
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
  versionGroupSlug,
  mechanics,
  member,
  onOpenChange,
  open,
}: TeamMemberDetailSheetProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const name = member ? getPlayTeamMemberName(member) : "Team member";

  return (
    <BottomSheet
      open={open && Boolean(member)}
      onOpenChange={onOpenChange}
      initialFocus={titleRef}
      label={name}
      bodyClassName="px-[18px] pt-1.5 sm:px-5"
      actions={
        member ? (
          <TeamMemberMoreActions
            member={member}
            variant="ghost"
            className="bg-surface-2 text-ink-2 hover:bg-hover hover:text-ink size-10 rounded-full"
          />
        ) : undefined
      }
      footer={
        member ? (
          <TeamMemberActions
            versionGroupSlug={versionGroupSlug}
            member={member}
            stretch
          />
        ) : undefined
      }
    >
      {member ? (
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
              {name}
            </SheetTitle>
          }
        />
      ) : null}
    </BottomSheet>
  );
};
