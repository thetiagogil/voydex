import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
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
  TeamAnalysisCoverageMove,
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

export const getTeamAnalysisMemberTypeSlugs = (
  member: MainlinePlayTeamMember,
): PokemonTypeSlug[] => {
  return [member.primaryType?.slug, member.secondaryType?.slug].filter(
    (slug): slug is PokemonTypeSlug =>
      typeof slug === "string" && isPokemonTypeSlug(slug),
  );
};

export const isTeamAnalysisDamagingMove = (move: MainlinePlayTeamMove) => {
  return Boolean(
    move.attributes &&
    move.attributes.damage_class !== "status" &&
    move.attributes.power !== null &&
    move.attributes.power > 0 &&
    move.type &&
    isPokemonTypeSlug(move.type.slug),
  );
};

const getAvailableTypes = (types: Type[], generationOrder: number) => {
  const typeBySlug = new Map(types.map((type) => [type.slug, type]));

  return getPokemonTypesForGeneration(generationOrder).flatMap((slug) => {
    const type = typeBySlug.get(slug);
    return type ? [type] : [];
  });
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
  return types.map((attackingType) => {
    const attackingTypeSlug = isPokemonTypeSlug(attackingType.slug)
      ? attackingType.slug
      : null;
    const cells = members.map((member) => {
      const memberId = member.play_pokemon_id ?? `slot-${member.slot ?? 0}`;
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
        memberId,
        multiplier,
        multiplierLabel: formatMultiplier(multiplier),
      };
    });

    return {
      attackingType,
      cells,
      immuneCount: cells.filter((cell) => cell.effectiveness === "immune")
        .length,
      resistCount: cells.filter((cell) => cell.effectiveness === "resistant")
        .length,
      weakCount: cells.filter((cell) => cell.effectiveness === "weak").length,
    };
  });
};

const toCoverageMove = (
  member: MainlinePlayTeamMember,
  move: MainlinePlayTeamMove,
): TeamAnalysisCoverageMove | null => {
  if (!move.attributes || !move.type || !isPokemonTypeSlug(move.type.slug)) {
    return null;
  }

  return {
    damageClass: move.attributes.damage_class,
    id: move.id,
    name: move.name,
    receivesStab: getTeamAnalysisMemberTypeSlugs(member).includes(
      move.type.slug,
    ),
    type: move.type,
  };
};

const buildCoverageRows = ({
  generationOrder,
  members,
  types,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  types: Type[];
}): TeamAnalysisCoverageRow[] => {
  return types.map((defendingType) => {
    const defendingTypeSlug = isPokemonTypeSlug(defendingType.slug)
      ? defendingType.slug
      : null;
    const cells = members.map((member) => {
      const memberId = member.play_pokemon_id ?? `slot-${member.slot ?? 0}`;
      const moves = defendingTypeSlug
        ? member.moves
            .filter(isTeamAnalysisDamagingMove)
            .filter((move) => {
              const moveTypeSlug = move.type?.slug;

              return (
                typeof moveTypeSlug === "string" &&
                isPokemonTypeSlug(moveTypeSlug) &&
                getTypeEffectiveness(
                  moveTypeSlug,
                  defendingTypeSlug,
                  generationOrder,
                ) > 1
              );
            })
            .flatMap((move) => {
              const coverageMove = toCoverageMove(member, move);
              return coverageMove ? [coverageMove] : [];
            })
        : [];

      return { memberId, moves };
    });

    return {
      cells,
      coveredByMemberCount: cells.filter((cell) => cell.moves.length).length,
      defendingType,
      moveCount: cells.reduce((count, cell) => count + cell.moves.length, 0),
      stabMoveCount: cells.reduce(
        (count, cell) =>
          count + cell.moves.filter((move) => move.receivesStab).length,
        0,
      ),
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
