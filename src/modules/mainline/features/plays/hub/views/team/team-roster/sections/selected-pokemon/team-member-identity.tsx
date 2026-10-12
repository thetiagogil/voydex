import {
  getTeamMemberIdentity,
  getTeamMemberName,
} from "@/modules/mainline/features/plays/hub/views/team/team-roster/utils/team-member-display";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

const TeamMemberShinyMark = () => {
  return (
    <Tooltip>
      <TooltipTrigger
        render={
          <span
            tabIndex={0}
            aria-label="Shiny Pokémon"
            className="focus-visible:ring-ring/50 text-warn-ink inline-flex shrink-0 rounded-sm outline-none focus-visible:ring-2"
          />
        }
      >
        <AppIcon icon={appIcons.product.shiny} size="md" aria-hidden />
      </TooltipTrigger>
      <TooltipContent>Shiny Pokémon</TooltipContent>
    </Tooltip>
  );
};

export const TeamMemberIdentity = ({
  action,
  member,
}: {
  action?: React.ReactNode;
  member: MainlinePlayTeamMember;
}) => {
  const memberName = getTeamMemberName(member);
  const memberIdentity = member.nickname ? getTeamMemberIdentity(member) : null;

  return (
    <section
      aria-label="Pokémon identity"
      className="flex min-w-0 flex-col items-center gap-3 text-center sm:items-start sm:text-left lg:flex-row lg:items-center"
    >
      <div className="flex min-w-0 flex-1 flex-col gap-2.5 lg:flex-row lg:items-center lg:gap-4">
        <div className="flex min-w-0 flex-col gap-1 lg:flex-row lg:items-center lg:gap-3">
          <div className="flex min-w-0 items-center justify-center gap-2 sm:justify-start">
            <h3 className="text-primary font-display min-w-0 text-2xl leading-tight font-semibold">
              {memberName}
            </h3>
            {member.is_shiny ? <TeamMemberShinyMark /> : null}
          </div>
          {memberIdentity ? (
            <p className="text-muted-foreground text-sm">{memberIdentity}</p>
          ) : null}
        </div>

        <PokemonTypeList
          primaryType={member.primaryType}
          secondaryType={member.secondaryType}
          badgeDisplay="icon-label"
          badgeSize="md"
        />
      </div>

      {action ? <div className="shrink-0">{action}</div> : null}
    </section>
  );
};
