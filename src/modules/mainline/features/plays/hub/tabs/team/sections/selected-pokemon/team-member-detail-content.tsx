import { TeamMemberActions } from "@/modules/mainline/features/plays/hub/tabs/team/sections/selected-pokemon/team-member-actions";
import { TeamMemberMoves } from "@/modules/mainline/features/plays/hub/tabs/team/sections/selected-pokemon/team-member-moves";
import { TeamMemberProfile } from "@/modules/mainline/features/plays/hub/tabs/team/sections/selected-pokemon/team-member-profile";
import { getTeamNatureEffectSummary } from "@/modules/mainline/features/plays/hub/tabs/team/sections/selected-pokemon/team-member-model";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/shared/components/ui/empty";
import { Separator } from "@/shared/components/ui/separator";

const TeamMemberBattleFact = ({
  description,
  label,
  value,
}: {
  description?: string | null;
  label: string;
  value: string | null;
}) => {
  return (
    <dl className="grid min-w-0 content-start gap-1">
      <dt className="text-muted-foreground text-[0.6875rem] font-medium tracking-wide uppercase">
        {label}
      </dt>
      <dd className="text-foreground min-w-0 text-sm font-semibold break-words">
        {value ?? "Not recorded"}
      </dd>
      {description ? (
        <dd className="text-muted-foreground line-clamp-2 text-xs leading-5">
          {description}
        </dd>
      ) : null}
    </dl>
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
  member,
}: {
  gameSlug: string | null;
  member: MainlinePlayTeamMember | null;
}) => {
  if (!member) {
    return <TeamMemberEmptyDetail />;
  }

  const natureEffectSummary = getTeamNatureEffectSummary(member);

  return (
    <div className="grid gap-4">
      <TeamMemberProfile member={member} />

      <Separator className="bg-app-surface-border/60" />

      <section
        aria-label="Battle characteristics and moves"
        className="grid gap-4 md:grid-cols-[minmax(0,3fr)_auto_minmax(0,2fr)]"
      >
        <TeamMemberMoves moves={member.moves} />
        <Separator className="bg-app-surface-border/60 md:hidden" />
        <Separator
          orientation="vertical"
          className="bg-app-surface-border/60 hidden md:block"
        />
        <div className="grid content-start gap-4">
          <TeamMemberBattleFact
            label="Ability"
            value={member.ability_name}
            description={member.abilityEffectSummary}
          />
          <Separator className="bg-app-surface-border/60" />
          <TeamMemberBattleFact
            label="Nature"
            value={member.nature_name}
            description={natureEffectSummary}
          />
        </div>
      </section>

      {member.personal_notes ? (
        <>
          <Separator className="bg-app-surface-border/60" />
          <section
            aria-labelledby="team-member-notes-heading"
            className="grid gap-2"
          >
            <h3
              id="team-member-notes-heading"
              className="text-foreground font-serif text-base font-semibold"
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
