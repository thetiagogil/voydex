"use client";

import { useRef } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import type { MemberBattle } from "@/modules/reference/features/pokemon/data/battle-mechanics";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { SheetTitle } from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

import type { RuleWarning } from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";

import { RuleWarningsNote } from "../roster/rule-warnings-note";
import { TeamMemberActions } from "./team-member-actions";
import { useBattleFormPick } from "./use-battle-form-pick";
import {
  TeamMemberProfile,
  teamMemberNameClassName,
} from "./team-member-profile";

type TeamMemberDetailSheetProps = {
  /* Its battle forms and Z-Moves in this game. */
  battle: MemberBattle | null;
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
 * On phones and tablets the selected Pokémon opens in a bottom sheet. Its
 * form menu, Edit and Open in Codex sit in a row under the art, clear of the
 * sheet's close button in the art's corner.
 */
export const TeamMemberDetailSheet = ({
  battle,
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
  const { battleForm, renderFormMenu } = useBattleFormPick(member, battle);

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
          battle={battle}
          battleForm={battleForm}
          toolbar={
            <>
              {renderFormMenu() ?? <span />}
              <TeamMemberActions
                member={member}
                onEdit={onEdit}
                versionGroupSlug={versionGroupSlug}
              />
            </>
          }
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
