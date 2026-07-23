import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/display/play-team-member-display";
import { getTeamMemberName } from "@/modules/mainline/features/plays/hub/views/team/display/team-member-display";
import { TeamPlanStatus } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-status";
import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SelectableItem } from "@/shared/components/selectable-item";
import { cn } from "@/shared/utils/cn";

type TeamPlanComparisonRowProps = {
  comparison: MainlinePlayTeamPlanMemberComparison;
  onSelect: (comparison: MainlinePlayTeamPlanMemberComparison) => void;
  selected: boolean;
};

export const TeamPlanComparisonRow = ({
  comparison,
  onSelect,
  selected,
}: TeamPlanComparisonRowProps) => {
  const member = comparison.playMember;
  const plannedImageUrl = getPokemonFormImageUrl({
    name: comparison.plannedName,
    sprite_slug: comparison.plannedSpriteSlug,
  });

  return (
    <SelectableItem
      selected={selected}
      onSelect={() => onSelect(comparison)}
      ariaLabel={`Compare planned ${comparison.plannedName}`}
      buttonClassName="grid w-full min-w-0 gap-2.5 px-3 py-2.5 md:grid-cols-[minmax(0,1fr)_10.5rem_minmax(0,1fr)_1.25rem] md:items-center"
    >
      <span className="flex min-w-0 items-center gap-3">
        <span
          className={cn(
            "border-app-surface-border/60 text-muted-foreground flex size-7 shrink-0 items-center justify-center rounded-md border text-xs font-semibold tabular-nums",
            selected && "border-primary/30 bg-primary text-primary-foreground",
          )}
        >
          {comparison.slot}
        </span>
        <PokemonPortrait
          alt={`${comparison.plannedName} portrait`}
          imageUrl={plannedImageUrl}
          fallbackOnError
          sizes="2.75rem"
          className="border-app-surface-border/50 bg-background/45 size-11 rounded-md"
          glowClassName="opacity-0"
          imageClassName="p-1"
        />
        <span className="grid min-w-0 gap-0.5">
          <span className="text-foreground truncate text-sm font-semibold">
            {comparison.plannedName}
          </span>
          <span className="text-muted-foreground truncate text-xs">
            {comparison.roleLabel ?? comparison.plannedFormName}
          </span>
        </span>
      </span>

      <span className="flex md:justify-center">
        <TeamPlanStatus status={comparison.status} />
      </span>

      {member ? (
        <span className="flex min-w-0 items-center gap-3">
          <PokemonPortrait
            alt={`${getTeamMemberName(member)} portrait`}
            imageUrl={getPlayTeamMemberImageUrl(member)}
            fallbackOnError
            sizes="2.75rem"
            className="border-app-surface-border/50 bg-background/45 size-11 rounded-md"
            glowClassName="opacity-0"
            imageClassName="p-1"
          />
          <span className="grid min-w-0 gap-1">
            <span className="text-foreground truncate text-sm font-semibold">
              {getTeamMemberName(member)}
            </span>
            <span className="flex items-center gap-2">
              <span className="text-muted-foreground text-xs capitalize">
                {member.roster_state_name}
              </span>
              <PokemonTypeList
                primaryType={member.primaryType}
                secondaryType={member.secondaryType}
                badgeDisplay="icon"
                badgeSize="sm"
                className="gap-1"
              />
            </span>
          </span>
        </span>
      ) : (
        <span className="text-muted-foreground text-sm">
          No family match in this Play
        </span>
      )}

      <AppIcon
        icon={appIcons.actions.continue}
        className="text-muted-foreground hidden justify-self-end md:block"
        aria-hidden
      />
    </SelectableItem>
  );
};
