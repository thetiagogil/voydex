import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import { getTeamPlanStatusLabel } from "@/modules/mainline/features/plays/hub/views/team/shared/team-plan-display";
import { TeamSlotLabel } from "@/modules/mainline/features/plays/hub/views/team/shared/team-slot-label";
import { teamPlanComparisonGridClassName } from "./team-plan-comparison-layout";
import { TeamPlanPokemonIdentity } from "./team-plan-pokemon-identity";
import { TeamPlanStatus } from "./team-plan-status";
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
        "grid w-full min-w-0 grid-cols-[1.5rem_minmax(0,1fr)] gap-2.5 px-3 py-2.5 md:items-center",
        teamPlanComparisonGridClassName,
      )}
    >
      <TeamSlotLabel label={comparison.slot} />
      <TeamPlanPokemonIdentity
        comparison={comparison}
        side="planned"
        showTypes={false}
      />

      <span className="col-start-2 flex md:col-start-auto">
        <TeamPlanStatus status={comparison.status} />
      </span>

      <span className="col-start-2 min-w-0 md:col-start-auto">
        <TeamPlanPokemonIdentity
          comparison={comparison}
          side="play"
          showTypes={false}
        />
      </span>

      <AppIcon
        icon={appIcons.actions.continue}
        size="xs"
        className="text-muted-foreground/70 hidden justify-self-end md:block"
        aria-hidden
      />
    </SelectableItem>
  );
};
