"use client";

import { useRef } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { SheetTitle } from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

import type { RuleWarning } from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";

import { RuleWarningsNote } from "../roster/rule-warnings-note";
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
  /* What the Play's rules say about it. */
  warnings: (RuleWarning & { key: string })[];
};

/*
 * On phones and tablets the selected Pokémon opens in a bottom sheet, Edit
 * and Open in Codex in its art's corner as on wide screens.
 */
export const TeamMemberDetailSheet = ({
  mechanics,
  member,
  onEdit,
  onOpenChange,
  open,
  versionGroupSlug,
  warnings,
}: TeamMemberDetailSheetProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const name = member ? getPlayTeamMemberName(member) : "Team member";

  return (
    <BottomSheet
      open={open && Boolean(member)}
      onOpenChange={onOpenChange}
      initialFocus={titleRef}
      label={name}
      bodyClassName="px-4.5 pt-1.5 sm:px-5"
    >
      {member ? (
        <TeamMemberProfile
          actions={
            <TeamMemberActions
              member={member}
              onEdit={onEdit}
              versionGroupSlug={versionGroupSlug}
            />
          }
          actionsBesideClose
          mechanics={mechanics}
          member={member}
          notice={
            <RuleWarningsNote
              title="Breaks this Play's rules"
              warnings={warnings}
              className="mt-4.5"
            />
          }
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
