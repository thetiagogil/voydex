import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import {
  buildTeamTypeCoverage,
  buildTeamTypeMatchups,
  toPokemonTypeSlugs,
  type TeamTypeMember,
} from "@/modules/mainline/shared/data/team-type-analysis";
import type { Type } from "@/modules/reference/types";

import type {
  TeamAnalysisCoverageRow,
  TeamAnalysisDefensiveRow,
  TeamAnalysisEffectiveness,
} from "../types";

const formatMultiplier = (multiplier: number | null) => {
  if (multiplier === null) return "Unknown";
  if (multiplier === 0.25) return "¼×";
  if (multiplier === 0.5) return "½×";
  return `${multiplier}×`;
};

const getEffectiveness = (
  multiplier: number | null,
): TeamAnalysisEffectiveness => {
  if (multiplier === null) return "unknown";
  if (multiplier === 0) return "immune";
  if (multiplier < 1) return "resistant";
  if (multiplier > 1) return "weak";
  return "neutral";
};

export const getTeamAnalysisMemberId = (member: MainlinePlayTeamMember) => {
  return member.play_pokemon_id ?? `slot-${member.slot ?? 0}`;
};

/* A damaging move's type; fixed-damage, reactive and status moves claim no type coverage. */
const getDamagingMoveTypeSlug = (move: MainlinePlayTeamMove) => {
  const isDamaging =
    move.attributes &&
    move.attributes.damage_class !== "status" &&
    move.attributes.power !== null &&
    move.attributes.power > 0;

  return isDamaging ? move.type?.slug : null;
};

/* The team as the shared type reading takes it: its types and recorded damaging moves. */
const toTeamTypeMember = (member: MainlinePlayTeamMember): TeamTypeMember => ({
  attackingTypeSlugs: toPokemonTypeSlugs(
    member.moves.map(getDamagingMoveTypeSlug),
  ),
  defendingTypeSlugs: toPokemonTypeSlugs([
    member.primaryType?.slug,
    member.secondaryType?.slug,
  ]),
  id: getTeamAnalysisMemberId(member),
});

export const buildTeamAnalysisRows = ({
  generationOrder,
  members,
  types,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  types: Type[];
}): {
  coverageRows: TeamAnalysisCoverageRow[];
  defensiveRows: TeamAnalysisDefensiveRow[];
} => {
  const teamTypeMembers = members.map(toTeamTypeMember);

  return {
    coverageRows: buildTeamTypeCoverage({
      generationOrder,
      members: teamTypeMembers,
      types,
    }).map((row) => ({
      defendingType: row.defendingType,
      moveCount: row.superEffectiveCount,
    })),
    defensiveRows: buildTeamTypeMatchups({
      generationOrder,
      members: teamTypeMembers,
      types,
    }).map(({ cells, ...row }) => ({
      ...row,
      cells: cells.map((multiplier, index) => ({
        effectiveness: getEffectiveness(multiplier),
        memberId: teamTypeMembers[index].id,
        memberName: getPlayTeamMemberName(members[index]),
        multiplier,
        multiplierLabel: formatMultiplier(multiplier),
      })),
    })),
  };
};
