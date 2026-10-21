import Link from "next/link";
import { useId } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { appRoutes } from "@/config/routes";
import { EmptyState } from "@/shared/components/empty-state";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

import type { RuleWarning } from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";

import { RuleWarningsNote } from "../roster/rule-warnings-note";
import { TeamMemberActions } from "./team-member-actions";
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
  mechanics,
  member,
  onAdd,
  onEdit,
  playId,
  versionGroupSlug,
  warnings,
}: {
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember | null;
  onAdd: () => void;
  onEdit: () => void;
  playId: string;
  versionGroupSlug: string | null;
  /* What the Play's rules say about it. */
  warnings: (RuleWarning & { key: string })[];
}) => {
  const titleId = useId();

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
    </Card>
  );
};
