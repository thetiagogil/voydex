import type {
  MainlinePlayLevelCap,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/hub/types";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type { Generation, Type } from "@/modules/reference/types";

import type { TeamAnalysisModel } from "../types";
import {
  buildTeamAnalysisHealth,
  getTeamFieldRoughNote,
} from "./team-analysis-health";
import { buildTeamAnalysisRows } from "./team-analysis-rows";
import { readTeamField } from "./team-field-reading";

const getLineupLabel = (statusSlug: string | null) => {
  if (statusSlug === "completed") return "Final team";
  if (statusSlug === "abandoned") return "Last known team";
  return "Active team";
};

export const buildTeamAnalysisModel = ({
  generation,
  levelCap,
  mechanics,
  members,
  play,
  types,
}: {
  generation: Generation;
  /* The next leader battle the field reads at; null when it isn't read. */
  levelCap: MainlinePlayLevelCap | null;
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
    activeCount: activeMembers.length,
    possibleMoveCount: activeMembers.length * 4,
    recordedMoveCount: activeMembers.reduce(
      (count, member) => count + member.moves.length,
      0,
    ),
    typedMemberCount: activeMembers.filter((member) => member.primaryType)
      .length,
  };

  const field = readTeamField({
    generationOrder: generation.sort_order,
    levelCap,
    members: activeMembers,
    types,
  });

  const healthMetrics = buildTeamAnalysisHealth({ evidence, field });

  return {
    abilitiesApply: supportsGameMechanic(mechanics, gameMechanics.abilities),
    coverageRows,
    defensiveRows,
    evidence,
    generation,
    healthMetrics,
    heldItemsApply: supportsGameMechanic(mechanics, gameMechanics.heldItems),
    lineupLabel: getLineupLabel(play.status_slug),
    members: activeMembers,
    /* Only beside cards it grades. */
    roughNote: healthMetrics.some((metric) => metric.status !== "limited-data")
      ? getTeamFieldRoughNote(field)
      : null,
  };
};
