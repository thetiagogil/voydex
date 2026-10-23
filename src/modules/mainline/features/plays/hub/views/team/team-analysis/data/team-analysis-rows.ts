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
import {
  getMoveHitTypeSlug,
  isTypeEffectiveMove,
} from "@/modules/reference/features/moves/domain/move-hit-types";
import { getTypeEffectiveness } from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";

import type {
  TeamAnalysisCoverageHit,
  TeamAnalysisCoverageRow,
  TeamAnalysisDefensiveRow,
} from "../types";

export const getTeamAnalysisMemberId = (member: MainlinePlayTeamMember) => {
  return member.play_pokemon_id ?? `slot-${member.slot ?? 0}`;
};

/*
 * The type a damaging move hits with when this Pokémon uses it, varying power
 * included (Low Kick, Gyro Ball): Judgment and its kind take its type, Tera
 * Blast its Tera Type. Fixed-damage, reactive and status moves claim no type
 * coverage, and neither does Hidden Power, whose type isn't recorded.
 */
export const getDamagingMoveTypeSlug = (
  move: MainlinePlayTeamMove,
  user: Pick<
    MainlinePlayTeamMember,
    "primaryType" | "secondaryType" | "tera_type_slug"
  >,
) =>
  isTypeEffectiveMove({
    damageClass: move.attributes?.damage_class,
    slug: move.slug,
  })
    ? getMoveHitTypeSlug({
        moveTypeSlug: move.type?.slug ?? null,
        slug: move.slug,
        teraTypeSlug: user.tera_type_slug,
        userTypeSlugs: [
          user.primaryType?.slug,
          user.secondaryType?.slug,
        ].filter((slug): slug is string => Boolean(slug)),
      })
    : null;

/* The team as the shared type reading takes it: its types and recorded damaging moves. */
const toTeamTypeMember = (member: MainlinePlayTeamMember): TeamTypeMember => ({
  attackingTypeSlugs: toPokemonTypeSlugs(
    member.moves.map((move) => getDamagingMoveTypeSlug(move, member)),
  ),
  defendingTypeSlugs: toPokemonTypeSlugs([
    member.primaryType?.slug,
    member.secondaryType?.slug,
  ]),
  id: getTeamAnalysisMemberId(member),
});

/* The recorded moves of each of yours that hit a type super effectively. */
const getCoverageHits = ({
  generationOrder,
  members,
  row,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  row: { defendingType: Type };
}): TeamAnalysisCoverageHit[] =>
  members.flatMap((member) => {
    const moves = member.moves.flatMap((move) => {
      const typeSlug = getDamagingMoveTypeSlug(move, member);

      return typeSlug &&
        isPokemonTypeSlug(typeSlug) &&
        isPokemonTypeSlug(row.defendingType.slug) &&
        getTypeEffectiveness(
          typeSlug,
          row.defendingType.slug,
          generationOrder,
        ) > 1
        ? [{ name: move.name, typeSlug }]
        : [];
    });

    return moves.length
      ? [
          {
            memberId: getTeamAnalysisMemberId(member),
            memberName: getPlayTeamMemberName(member),
            moves,
          },
        ]
      : [];
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
      hits: getCoverageHits({ generationOrder, members, row }),
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
