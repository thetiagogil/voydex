import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";

export type TeamMoveSlot = {
  name: string | null;
  position: number;
  type: MainlinePlayTeamMove["type"];
};

const teamStatLabels: Record<string, string> = {
  attack: "Attack",
  defense: "Defense",
  special_attack: "Sp. Atk",
  special_defense: "Sp. Def",
  speed: "Speed",
};

export const getTeamNatureEffectSummary = (
  member: MainlinePlayTeamMember,
): string | null => {
  if (!member.nature_name) {
    return null;
  }

  if (!member.natureIncreasedStat || !member.natureDecreasedStat) {
    return "No stat changes";
  }

  const increasedStat =
    teamStatLabels[member.natureIncreasedStat] ?? member.natureIncreasedStat;
  const decreasedStat =
    teamStatLabels[member.natureDecreasedStat] ?? member.natureDecreasedStat;

  return `Raises ${increasedStat} · lowers ${decreasedStat}`;
};

export const getTeamMoveSlots = (
  moves: MainlinePlayTeamMove[],
): TeamMoveSlot[] => {
  const moveByPosition = new Map(moves.map((move) => [move.slot, move]));

  return Array.from({ length: 4 }, (_, index) => {
    const position = index + 1;
    const move = moveByPosition.get(position);

    return {
      name: move?.name ?? null,
      position,
      type: move?.type ?? null,
    };
  });
};
