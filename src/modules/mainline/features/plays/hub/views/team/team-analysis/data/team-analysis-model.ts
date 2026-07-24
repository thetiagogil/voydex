import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type { Generation, Type } from "@/modules/reference/types";

import type { TeamAnalysisModel } from "../types";
import { buildTeamAnalysisHealth } from "./team-analysis-health";
import { buildTeamAnalysisRows } from "./team-analysis-rows";

const activeTeamCapacity = 6;

const getLineupLabel = (statusSlug: string | null) => {
  if (statusSlug === "completed") return "Recorded Final Team";
  if (statusSlug === "abandoned") return "Last Known Team";
  return "Current recorded lineup";
};

export const buildTeamAnalysisModel = ({
  generation,
  mechanics,
  members,
  play,
  types,
}: {
  generation: Generation;
  mechanics: GameMechanicsProfile;
  members: MainlinePlayTeamMember[];
  play: MainlinePlaySummary;
  types: Type[];
}): TeamAnalysisModel => {
  const activeMembers = members
    .filter((member) => member.roster_state_slug === "active")
    .sort((left, right) => (left.slot ?? 0) - (right.slot ?? 0));
  const { coverageRows, defensiveRows } = buildTeamAnalysisRows({
    generationOrder: generation.sort_order,
    members: activeMembers,
    types,
  });

  const evidence = {
    abilityRecordedCount: supportsGameMechanic(
      mechanics,
      gameMechanics.abilities,
    )
      ? activeMembers.filter((member) => member.ability_id).length
      : null,
    activeCount: activeMembers.length,
    heldItemRecordedCount: supportsGameMechanic(
      mechanics,
      gameMechanics.heldItems,
    )
      ? activeMembers.filter((member) => member.held_item_id).length
      : null,
    possibleActiveCount: activeTeamCapacity,
    possibleMoveCount: activeMembers.length * 4,
    recordedMoveCount: activeMembers.reduce(
      (count, member) => count + member.moves.length,
      0,
    ),
    typedMemberCount: activeMembers.filter((member) => member.primaryType)
      .length,
  };

  return {
    coverageRows,
    defensiveRows,
    evidence,
    generation,
    healthMetrics: buildTeamAnalysisHealth({
      coverageRows,
      defensiveRows,
      evidence,
    }),
    lineupLabel: getLineupLabel(play.status_slug),
    mechanics,
    members: activeMembers,
  };
};
