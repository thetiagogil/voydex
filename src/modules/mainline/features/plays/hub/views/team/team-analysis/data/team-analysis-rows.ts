import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import {
  getDefensiveTypeMultiplier,
  getPokemonTypesForGeneration,
  getTypeEffectiveness,
} from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
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

const getTeamAnalysisMemberTypeSlugs = (
  member: MainlinePlayTeamMember,
): PokemonTypeSlug[] => {
  return [member.primaryType?.slug, member.secondaryType?.slug].filter(
    (slug): slug is PokemonTypeSlug =>
      typeof slug === "string" && isPokemonTypeSlug(slug),
  );
};

/* A damaging move's type; fixed-damage, reactive and status moves claim no type coverage. */
const getDamagingMoveTypeSlug = (
  move: MainlinePlayTeamMove,
): PokemonTypeSlug | null => {
  const moveTypeSlug = move.type?.slug;
  const isDamaging =
    move.attributes &&
    move.attributes.damage_class !== "status" &&
    move.attributes.power !== null &&
    move.attributes.power > 0;

  return isDamaging &&
    typeof moveTypeSlug === "string" &&
    isPokemonTypeSlug(moveTypeSlug)
    ? moveTypeSlug
    : null;
};

const getAvailableTypes = (types: Type[], generationOrder: number) => {
  const typeBySlug = new Map(types.map((type) => [type.slug, type]));

  return getPokemonTypesForGeneration(generationOrder).flatMap((slug) => {
    const type = typeBySlug.get(slug);
    return type ? [type] : [];
  });
};

const getHighestMultiplier = (row: TeamAnalysisDefensiveRow) => {
  return Math.max(0, ...row.cells.map((cell) => cell.multiplier ?? 0));
};

/* The types that hit the team hardest first; ties keep the type chart's order. */
const sortByThreat = (rows: TeamAnalysisDefensiveRow[]) => {
  return [...rows].sort(
    (left, right) =>
      right.weakCount - left.weakCount ||
      getHighestMultiplier(right) - getHighestMultiplier(left),
  );
};

const buildDefensiveRows = ({
  generationOrder,
  members,
  types,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  types: Type[];
}): TeamAnalysisDefensiveRow[] => {
  const rows = types.map((attackingType) => {
    const attackingTypeSlug = isPokemonTypeSlug(attackingType.slug)
      ? attackingType.slug
      : null;
    const cells = members.map((member) => {
      const defendingTypes = getTeamAnalysisMemberTypeSlugs(member);
      const multiplier =
        attackingTypeSlug && defendingTypes.length
          ? getDefensiveTypeMultiplier(
              attackingTypeSlug,
              defendingTypes,
              generationOrder,
            )
          : null;

      return {
        effectiveness: getEffectiveness(multiplier),
        memberId: getTeamAnalysisMemberId(member),
        memberName: getPlayTeamMemberName(member),
        multiplier,
        multiplierLabel: formatMultiplier(multiplier),
      };
    });
    const weakCount = cells.filter(
      (cell) => cell.effectiveness === "weak",
    ).length;

    return {
      attackingType,
      cells,
      immuneCount: cells.filter((cell) => cell.effectiveness === "immune")
        .length,
      isPressure:
        weakCount >= 2 ||
        cells.some((cell) => cell.multiplier !== null && cell.multiplier >= 4),
      resistCount: cells.filter((cell) => cell.effectiveness === "resistant")
        .length,
      weakCount,
    };
  });

  return sortByThreat(rows);
};

/* Per type: how many of the team's recorded damaging moves hit it super effectively. */
const buildCoverageRows = ({
  generationOrder,
  members,
  types,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  types: Type[];
}): TeamAnalysisCoverageRow[] => {
  const damagingMoveTypes = members.flatMap((member) =>
    member.moves.flatMap((move) => getDamagingMoveTypeSlug(move) ?? []),
  );

  return types.map((defendingType) => {
    const defendingTypeSlug = isPokemonTypeSlug(defendingType.slug)
      ? defendingType.slug
      : null;

    return {
      defendingType,
      moveCount: defendingTypeSlug
        ? damagingMoveTypes.filter(
            (moveTypeSlug) =>
              getTypeEffectiveness(
                moveTypeSlug,
                defendingTypeSlug,
                generationOrder,
              ) > 1,
          ).length
        : 0,
    };
  });
};

export const buildTeamAnalysisRows = ({
  generationOrder,
  members,
  types,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  types: Type[];
}) => {
  const availableTypes = getAvailableTypes(types, generationOrder);

  return {
    coverageRows: buildCoverageRows({
      generationOrder,
      members,
      types: availableTypes,
    }),
    defensiveRows: buildDefensiveRows({
      generationOrder,
      members,
      types: availableTypes,
    }),
  };
};
