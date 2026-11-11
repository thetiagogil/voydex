import { Link } from "@/shared/components/link";
import { useId } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import type { MemberBattle } from "@/modules/reference/features/pokemon/data/battle-mechanics";
import { appRoutes } from "@/config/routes";
import { EmptyState } from "@/shared/components/empty-state";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

import type { RuleWarning } from "@/modules/mainline/features/plays/shared/data/rule-checks";

import { RuleWarningsNote } from "@/modules/mainline/features/plays/shared/components/rule-warnings-note";
import { TeamMemberActions } from "./team-member-actions";
import {
  TeamMemberMoments,
  type TeamMemberMomentsData,
} from "./team-member-moments";
import { useBattleFormPick } from "./use-battle-form-pick";
import {
  TeamMemberProfile,
  teamMemberNameClassName,
} from "./team-member-profile";

/*
 * A brand-new Play's empty roster (v3 `.ro-start`): the team starts with
 * your partner, then the Pokémon you catch.
 */
export const TeamRosterStart = ({
  onAdd,
  playId,
}: {
  onAdd: () => void;
  playId: string;
}) => (
  <EmptyState
    title="Your team starts with your partner"
    description="Record the Pokémon you chose, then add the ones you catch along the way."
    action={
      <>
        <Button
          nativeButton={false}
          render={<Link href={appRoutes.mainlinePlay(playId)} />}
        >
          Choose your partner
        </Button>
        <Button type="button" variant="secondary" onClick={onAdd}>
          Add Pokémon
        </Button>
      </>
    }
  />
);

/* Beside the roster on wide screens: the selected Pokémon, in a quiet card. */
export const TeamMemberDetail = ({
  battle,
  mechanics,
  member,
  onAdd,
  onEdit,
  moments,
  playId,
  versionGroupSlug,
  warnings,
}: {
  /* Its battle forms and Z-Moves in this game. */
  battle: MemberBattle | null;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember | null;
  onAdd: () => void;
  onEdit: () => void;
  /* Its latest moments; null for a member the Roster read none for. */
  moments: TeamMemberMomentsData | null;
  playId: string;
  versionGroupSlug: string | null;
  /* What the Play's rules say about it. */
  warnings: (RuleWarning & { key: string })[];
}) => {
  const titleId = useId();
  const { battleForm, renderFormMenu } = useBattleFormPick(member, battle);

  if (!member) {
    return <TeamRosterStart onAdd={onAdd} playId={playId} />;
  }

  return (
    <Card
      role="region"
      aria-labelledby={titleId}
      className="gap-0 px-5 py-5 sm:px-7 sm:py-6.5"
    >
      <TeamMemberProfile
        actions={
          <TeamMemberActions
            member={member}
            onEdit={onEdit}
            versionGroupSlug={versionGroupSlug}
          />
        }
        battle={battle}
        battleForm={battleForm}
        formMenu={renderFormMenu()}
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
          <h3 id={titleId} className={teamMemberNameClassName}>
            {getPlayTeamMemberName(member)}
          </h3>
        }
      />
      {moments ? <TeamMemberMoments {...moments} member={member} /> : null}
    </Card>
  );
};
