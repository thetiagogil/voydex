import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import { teamPlanComparisonGridClassName } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-comparison-layout";
import { getTeamPlanStatusLabel } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-display";
import { TeamPlanPokemonIdentity } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-pokemon-identity";
import { TeamPlanStatus } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-status";
import { TeamSlotLabel } from "@/modules/mainline/features/plays/hub/views/team/sections/team-slot-label";
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
  const actualName = member
    ? `${member.species_name ?? "Unknown Pokémon"}${member.nickname ? ` (${member.nickname})` : ""}`
    : "no matched Pokémon";
  const statusLabel = getTeamPlanStatusLabel(comparison.status);

  return (
    <SelectableItem
      selected={selected}
      onSelect={() => onSelect(comparison)}
      ariaLabel={`Compare slot ${comparison.slot}, planned ${comparison.plannedName}, ${statusLabel}, with ${actualName}`}
      buttonClassName={cn(
        "grid w-full min-w-0 grid-cols-[1.5rem_minmax(0,1fr)] gap-2.5 px-3 py-2.5 lg:items-center",
        teamPlanComparisonGridClassName,
      )}
    >
      <TeamSlotLabel label={comparison.slot} />
      <TeamPlanPokemonIdentity
        comparison={comparison}
        side="planned"
        showTypes={false}
      />

      <span className="col-start-2 flex lg:col-start-auto">
        <TeamPlanStatus status={comparison.status} />
      </span>

      <span className="col-start-2 min-w-0 lg:col-start-auto">
        <TeamPlanPokemonIdentity
          comparison={comparison}
          side="play"
          showTypes={false}
        />
      </span>

      <AppIcon
        icon={appIcons.actions.continue}
        size="xs"
        className="text-muted-foreground/70 hidden justify-self-end lg:block"
        aria-hidden
      />
    </SelectableItem>
  );
};
