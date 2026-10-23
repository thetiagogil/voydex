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
import { toTypeMatchupRows } from "@/modules/mainline/shared/data/type-matchup-rows";
import { isTypeEffectiveMove } from "@/modules/reference/features/moves/domain/move-hit-types";
import type { Type } from "@/modules/reference/types";

import type {
  TeamAnalysisCoverageRow,
  TeamAnalysisDefensiveRow,
} from "../types";

export const getTeamAnalysisMemberId = (member: MainlinePlayTeamMember) => {
  return member.play_pokemon_id ?? `slot-${member.slot ?? 0}`;
};

/*
 * A damaging move's type, varying power included (Low Kick, Gyro Ball);
 * fixed-damage, reactive and status moves claim no type coverage.
 */
export const getDamagingMoveTypeSlug = (move: MainlinePlayTeamMove) => {
  const isDamaging = isTypeEffectiveMove({
    damageClass: move.attributes?.damage_class,
    slug: move.slug,
  });

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
    defensiveRows: toTypeMatchupRows(
      buildTeamTypeMatchups({
        generationOrder,
        members: teamTypeMembers,
        types,
      }),
      members.map((member, index) => ({
        id: teamTypeMembers[index].id,
        name: getPlayTeamMemberName(member),
      })),
    ),
  };
};
