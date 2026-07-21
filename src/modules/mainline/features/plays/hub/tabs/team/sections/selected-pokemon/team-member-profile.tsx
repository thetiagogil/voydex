import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/display/play-team-member-display";
import {
  formatTeamMemberGender,
  getTeamMemberIdentity,
  getTeamMemberName,
} from "@/modules/mainline/features/plays/hub/tabs/team/display/team-member-display";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Badge } from "@/shared/components/ui/badge";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

const TeamMemberFact = ({
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

const TeamMemberShinyMark = () => {
  return (
    <Tooltip>
      <TooltipTrigger
        render={
          <span
            tabIndex={0}
            aria-label="Shiny Pokémon"
            className="focus-visible:ring-ring/50 text-warning inline-flex shrink-0 rounded-sm outline-none focus-visible:ring-2"
          />
        }
      >
        <AppIcon icon={appIcons.product.shiny} size="md" aria-hidden />
      </TooltipTrigger>
      <TooltipContent>Shiny Pokémon</TooltipContent>
    </Tooltip>
  );
};

const getTeamMemberGenderIcon = (gender: string | null) => {
  if (gender === "female") {
    return appIcons.product.genderFemale;
  }

  if (gender === "male") {
    return appIcons.product.genderMale;
  }

  if (gender === "genderless") {
    return appIcons.product.genderless;
  }

  return appIcons.status.unknown;
};

export const TeamMemberProfile = ({
  member,
}: {
  member: MainlinePlayTeamMember;
}) => {
  const memberName = getTeamMemberName(member);
  const memberIdentity = member.nickname ? getTeamMemberIdentity(member) : null;
  const gender = formatTeamMemberGender(member.gender);

  return (
    <section
      aria-label="Pokémon identity and caught information"
      className="grid gap-5 lg:grid-cols-[minmax(0,3fr)_minmax(0,2fr)]"
    >
      <div className="grid items-center gap-5 sm:grid-cols-[14rem_minmax(0,1fr)]">
        <PokemonPortrait
          alt={`${memberName} portrait`}
          imageUrl={getPlayTeamMemberImageUrl(member)}
          fallbackOnError
          sizes="14rem"
          className="border-app-surface-border/70 bg-background/45 size-56 justify-self-center rounded-lg"
          glowClassName="opacity-0"
          imageClassName="p-2"
        />

        <div className="grid min-w-0 justify-items-center gap-2.5 text-center sm:justify-items-start sm:text-left">
          <div className="grid min-w-0 gap-1">
            <div className="flex min-w-0 items-center justify-center gap-2 sm:justify-start">
              <h3 className="text-primary min-w-0 font-serif text-2xl leading-tight font-semibold">
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
            badgeSize="sm"
            badgeVariant="field-guide"
          />

          <div className="text-muted-foreground flex flex-wrap items-center justify-center gap-2 text-sm sm:justify-start">
            <Badge variant="outline">
              {member.level ? `Lv. ${member.level}` : "Level not recorded"}
            </Badge>
            <Badge variant="outline" aria-label={`Gender: ${gender}`}>
              <AppIcon
                icon={getTeamMemberGenderIcon(member.gender)}
                inline="start"
                aria-hidden
              />
              {gender}
            </Badge>
          </div>

          <dl>
            <TeamMemberFact label="Held item" value={member.held_item_name} />
          </dl>
        </div>
      </div>

      <dl className="border-app-surface-border/60 grid content-center gap-3 self-center border-t pt-4 lg:border-t-0 lg:border-l lg:pt-0 lg:pl-5">
        <TeamMemberFact label="Ball" value={member.ball_item_name} />
        <TeamMemberFact
          label="Met location"
          value={member.met_location_label}
        />
        <TeamMemberFact
          label="Met level"
          value={member.met_level ? `Lv. ${member.met_level}` : null}
        />
      </dl>
    </section>
  );
};
