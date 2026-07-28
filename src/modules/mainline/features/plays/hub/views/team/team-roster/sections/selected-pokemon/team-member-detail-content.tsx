import { formatTeamMemberGender } from "../../utils/team-member-display";
import { TeamMemberActions } from "./team-member-actions";
import { TeamMemberIdentity } from "./team-member-identity";
import { TeamMemberMoves } from "./team-member-moves";
import { TeamMemberPortrait } from "./team-member-portrait";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/shared/components/ui/empty";
import { Separator } from "@/shared/components/ui/separator";

const TeamMemberDetailFact = ({
  label,
  value,
}: {
  label: string;
  value: string | null;
}) => {
  return (
    <div className="grid min-w-0 gap-1">
      <dt className="text-muted-foreground text-[0.6875rem] font-medium tracking-wide uppercase">
        {label}
      </dt>
      <dd className="text-foreground min-w-0 text-sm font-medium break-words">
        {value ?? "Not recorded"}
      </dd>
    </div>
  );
};

const TeamMemberEmptyDetail = () => {
  return (
    <Empty className="min-h-80">
      <EmptyHeader>
        <EmptyMedia variant="icon">
          <AppIcon icon={appIcons.product.team} aria-hidden />
        </EmptyMedia>
        <EmptyTitle>No Pokémon selected</EmptyTitle>
        <EmptyDescription>
          Select a recorded Active or Reserve member to inspect its Play record.
        </EmptyDescription>
      </EmptyHeader>
    </Empty>
  );
};

export const TeamMemberDetailContent = ({
  gameSlug,
  identityAction,
  mechanics,
  member,
}: {
  gameSlug: string | null;
  identityAction?: React.ReactNode;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember | null;
}) => {
  if (!member) {
    return <TeamMemberEmptyDetail />;
  }

  return (
    <div className="grid gap-4">
      <TeamMemberIdentity action={identityAction} member={member} />

      <Separator className="bg-app-surface-border/60" />

      <section
        aria-label="Selected Pokémon details"
        className="grid items-stretch gap-5 lg:grid-cols-3"
      >
        <div className="grid min-w-0 place-items-center">
          <TeamMemberPortrait member={member} />
        </div>

        <section
          aria-labelledby="team-member-build-heading"
          className="border-app-surface-border/60 grid min-w-0 content-start gap-2 border-t pt-4 lg:border-t-0 lg:border-l lg:pt-1 lg:pl-5"
        >
          <h3
            id="team-member-build-heading"
            className="text-primary font-serif text-base font-semibold"
          >
            Build
          </h3>
          <dl className="grid min-w-0 gap-3">
            <TeamMemberDetailFact
              label="Level"
              value={member.level ? `Lv. ${member.level}` : null}
            />
            {supportsGameMechanic(mechanics, gameMechanics.abilities) ? (
              <TeamMemberDetailFact
                label="Ability"
                value={member.ability_name}
              />
            ) : null}
            {supportsGameMechanic(mechanics, gameMechanics.natures) ? (
              <TeamMemberDetailFact label="Nature" value={member.nature_name} />
            ) : null}
            {supportsGameMechanic(mechanics, gameMechanics.heldItems) ? (
              <TeamMemberDetailFact
                label="Held item"
                value={member.held_item_name}
              />
            ) : null}
          </dl>
        </section>

        <section
          aria-labelledby="team-member-origin-heading"
          className="border-app-surface-border/60 grid min-w-0 content-start gap-2 border-t pt-4 lg:border-t-0 lg:border-l lg:pt-1 lg:pl-5"
        >
          <h3
            id="team-member-origin-heading"
            className="text-primary font-serif text-base font-semibold"
          >
            Origin
          </h3>
          <dl className="grid min-w-0 gap-3">
            {supportsGameMechanic(mechanics, gameMechanics.pokemonGender) ? (
              <TeamMemberDetailFact
                label="Gender"
                value={formatTeamMemberGender(member.gender)}
              />
            ) : null}
            <TeamMemberDetailFact label="Ball" value={member.ball_item_name} />
            <TeamMemberDetailFact
              label="Met location"
              value={member.met_location_label}
            />
            <TeamMemberDetailFact
              label="Met level"
              value={member.met_level ? `Lv. ${member.met_level}` : null}
            />
          </dl>
        </section>
      </section>

      <Separator className="bg-app-surface-border/60" />

      <TeamMemberMoves moves={member.moves} />

      {member.personal_notes ? (
        <>
          <Separator className="bg-app-surface-border/60" />
          <section
            aria-labelledby="team-member-notes-heading"
            className="grid gap-2"
          >
            <h3
              id="team-member-notes-heading"
              className="text-primary font-serif text-base font-semibold"
            >
              Notes
            </h3>
            <p className="text-muted-foreground text-sm leading-6">
              {member.personal_notes}
            </p>
          </section>
        </>
      ) : null}

      <Separator className="bg-app-surface-border/60" />

      <TeamMemberActions gameSlug={gameSlug} member={member} />
    </div>
  );
};
