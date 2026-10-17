import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import { Badge } from "@/shared/components/ui/badge";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { cn } from "@/shared/utils/cn";

import { TeamPlanStatusPill } from "../../components/team-plan-pill";
import {
  getTeamPlanPlannedImageUrl,
  getTeamPlanTypeStyle,
  TeamPlanArt,
  TeamPlanMatchLine,
} from "../../components/team-plan-pokemon";
import {
  getTeamPlanCompareLabel,
  getTeamPlanPlannedFormLabel,
  isTeamPlanTargetOwned,
} from "../../team-plan-model";

type TeamPlanTargetCardProps = {
  comparison: MainlinePlayTeamPlanMemberComparison;
  mechanics: GameMechanicsProfile;
  onSelect: (comparison: MainlinePlayTeamPlanMemberComparison) => void;
};

/*
 * v3 `.ptarget`: one planned target with a fixed layout. A target you own is
 * a sticker; one found but since retired or replaced is a plain flat card;
 * one not found yet is a dashed silhouette. Its detail opens in the compare
 * dialog.
 */
export const TeamPlanTargetCard = ({
  comparison,
  mechanics,
  onSelect,
}: TeamPlanTargetCardProps) => {
  const owned = isTeamPlanTargetOwned(comparison);
  const found = comparison.playMember !== null;
  const formLabel = getTeamPlanPlannedFormLabel(comparison);
  const compareLabel = getTeamPlanCompareLabel(comparison, mechanics);
  return (
    <button
      type="button"
      aria-haspopup="dialog"
      onClick={() => onSelect(comparison)}
      style={getTeamPlanTypeStyle(comparison.plannedPrimaryType)}
      className={cn(
        "flex h-full w-full min-w-0 cursor-pointer flex-col items-center rounded-xl px-4 pt-3.5 pb-4.5 text-center transition-transform duration-150 hover:-translate-y-0.75",
        owned && "sticker [--sticker-shadow:var(--shadow-soft-value)]",
        !owned && found && "bg-surface border-line border",
        !found && "empty-slot",
      )}
    >
      <span className="flex min-h-6 w-full items-center justify-between gap-2">
        <span
          className={cn(
            "text-13 font-extrabold tabular-nums",
            owned ? "text-ink-tint" : "text-ink-3",
          )}
        >
          Target {comparison.slot}
        </span>
        {comparison.roleLabel ? (
          <Badge
            variant={owned ? "paper" : found ? "neutral" : "outline"}
            className="max-w-full truncate"
          >
            {comparison.roleLabel}
          </Badge>
        ) : null}
      </span>

      <TeamPlanArt
        imageUrl={getTeamPlanPlannedImageUrl(comparison)}
        silhouette={!found}
        className="mt-0.5 size-22.5 sm:size-31"
      />

      <span className="font-display text-20 w-full truncate leading-tight font-semibold">
        {comparison.plannedName}
      </span>
      {formLabel ? (
        <span
          className={cn(
            "text-13 w-full truncate font-bold",
            owned ? "text-ink-tint" : "text-ink-3",
          )}
        >
          {formLabel}
        </span>
      ) : null}

      <PokemonTypeList
        types={[
          comparison.plannedPrimaryType,
          comparison.plannedSecondaryType,
        ].filter((type) => type !== null)}
        badgeDisplay="icon"
        badgeSize="sm"
        className="mt-1.5 mb-3 min-h-5 justify-center gap-1"
      />

      <TeamPlanMatchLine
        member={comparison.playMember}
        onTint={owned}
        className="mb-3.5"
      />

      <span className="mt-auto flex w-full flex-wrap items-center justify-between gap-2 pt-3">
        <TeamPlanStatusPill status={comparison.status} />
        <span
          className={cn(
            "text-13 inline-flex items-center gap-1 font-extrabold",
            owned ? "text-ink-tint" : "text-ink-2",
          )}
        >
          {compareLabel}
        </span>
      </span>
    </button>
  );
};
