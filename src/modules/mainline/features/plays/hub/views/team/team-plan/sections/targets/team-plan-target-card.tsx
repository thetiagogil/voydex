import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { PokemonCollectorCard } from "@/modules/reference/features/pokemon/components/pokemon-collector-card";
import { StatusBadge } from "@/shared/components/status-badge";

import { TeamPlanStatusPill } from "../../components/team-plan-pill";
import {
  getTeamPlanPlannedImageUrl,
  TeamPlanMatchLine,
} from "../../components/team-plan-pokemon";
import { getTeamPlanStatusLabel } from "../../team-plan-display";
import {
  countTeamPlanDifferences,
  getTeamPlanCompareLabel,
  getTeamPlanMatchText,
  getTeamPlanPlannedFormLabel,
  isTeamPlanTargetOwned,
} from "../../team-plan-model";

type TeamPlanTargetCardProps = {
  comparison: MainlinePlayTeamPlanMemberComparison;
  mechanics: GameMechanicsProfile;
  onSelect: (comparison: MainlinePlayTeamPlanMemberComparison) => void;
  /*
   * The other game that has this Pokémon to itself ("Shield"), when this
   * Play's game can't catch it; null otherwise.
   */
  otherVersionName: string | null;
};

/*
 * One planned target: the Plan's card for it, as the Team Planner draws
 * its team, then what this Play has for it. A target you own is the card
 * in its type's colour; one found but since retired or replaced is the card
 * in white; one not found yet is a dashed silhouette, marked when only the
 * version group's other game has it. Its detail opens in the compare
 * dialog.
 */
export const TeamPlanTargetCard = ({
  comparison,
  mechanics,
  onSelect,
  otherVersionName,
}: TeamPlanTargetCardProps) => {
  const owned = isTeamPlanTargetOwned(comparison);
  const found = comparison.playMember !== null;
  const formLabel = getTeamPlanPlannedFormLabel(comparison);
  const compareLabel = getTeamPlanCompareLabel(comparison, mechanics);
  /* Only a count of differences says more than the status beside it. */
  const differs = found && countTeamPlanDifferences(comparison, mechanics) > 0;

  return (
    <div className="flex h-full min-w-0 flex-col gap-2">
      <PokemonCollectorCard
        size="lg"
        absent={owned ? undefined : found ? "past" : "missing"}
        imageUrl={getTeamPlanPlannedImageUrl(comparison)}
        /* The species' name; a form's own shows on hover, as in the Planner. */
        name={comparison.plannedName}
        tip={formLabel}
        types={[
          comparison.plannedPrimaryType,
          comparison.plannedSecondaryType,
        ].filter((type) => type !== null)}
        detail={[
          formLabel,
          `target ${comparison.slot}`,
          getTeamPlanMatchText(comparison.playMember),
          getTeamPlanStatusLabel(comparison.status),
          compareLabel,
        ]
          .filter(Boolean)
          .join(". ")}
        onClick={() => onSelect(comparison)}
        className="h-auto"
      />
      {/* What the Play has for it, said by the card's button too. */}
      <div
        aria-hidden
        className="flex min-w-0 flex-col items-center gap-1.5 text-center"
      >
        <TeamPlanStatusPill status={comparison.status} />
        <TeamPlanMatchLine member={comparison.playMember} />
        {otherVersionName && !found ? (
          <StatusBadge size="sm" tone="warn">
            {`${otherVersionName} only: trade for it`}
          </StatusBadge>
        ) : null}
        {differs ? (
          <span className="text-ink-2 copy-meta">{compareLabel}</span>
        ) : null}
      </div>
    </div>
  );
};
