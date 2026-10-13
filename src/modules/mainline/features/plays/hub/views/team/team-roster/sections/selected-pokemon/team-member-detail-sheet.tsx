"use client";

import { useRef } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { SheetTitle } from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

import { TeamMemberActions } from "./team-member-actions";
import {
  TeamMemberProfile,
  teamMemberNameClassName,
} from "./team-member-profile";

type TeamMemberDetailSheetProps = {
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember | null;
  onEdit: () => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  versionGroupSlug: string | null;
};

/*
 * On phones and tablets the selected Pokémon opens in a bottom sheet, Edit
 * and Open in Codex pinned to the foot.
 */
export const TeamMemberDetailSheet = ({
  mechanics,
  member,
  onEdit,
  onOpenChange,
  open,
  versionGroupSlug,
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
      footer={
        member ? (
          <TeamMemberActions
            member={member}
            onEdit={onEdit}
            stretch
            versionGroupSlug={versionGroupSlug}
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
