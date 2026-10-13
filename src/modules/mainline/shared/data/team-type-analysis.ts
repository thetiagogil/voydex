import {
  getDefensiveTypeMultiplier,
  getPokemonTypesForGeneration,
  getTypeEffectiveness,
} from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";

/*
 * Mainline's one reading of a team by type, shared by a Play's Team analysis
 * and the Team Planner. It knows nothing about where a member came from:
 * each caller says which types it defends with and which types it attacks
 * with (a Play's recorded damaging moves, a Plan's own types).
 */

export type TeamTypeMember = {
  /* The types it attacks with; repeats count, as two Fire moves do. */
  attackingTypeSlugs: readonly PokemonTypeSlug[];
  /* Its own types; empty when they aren't known. */
  defendingTypeSlugs: readonly PokemonTypeSlug[];
  id: string;
};

export type TeamTypeMatchupRow<TType> = {
  attackingType: TType;
  /* One multiplier per member, in team order; null when its types are unknown. */
  cells: (number | null)[];
  immuneCount: number;
  /* Hits two or more of the team super effectively, or one of them 4×. */
  isPressure: boolean;
  resistCount: number;
  weakCount: number;
};

export type TeamTypeCoverageRow<TType> = {
  /* The members with at least one super-effective attacking type. */
  coveringMemberIds: string[];
  defendingType: TType;
  /* Every super-effective attacking type across the team, repeats counted. */
  superEffectiveCount: number;
};

/* The given types that exist in this generation, in the type chart's order. */
const getGenerationTypeEntries = <TType extends { slug: string }>(
  types: readonly TType[],
  generationOrder: number,
) => {
  const typeBySlug = new Map(types.map((type) => [type.slug, type]));

  return getPokemonTypesForGeneration(generationOrder).flatMap((slug) => {
    const type = typeBySlug.get(slug);
    return type ? [{ slug, type }] : [];
  });
};

const getHighestMultiplier = (cells: (number | null)[]) =>
  Math.max(0, ...cells.map((cell) => cell ?? 0));

/* Every attacking type against the team, the ones hitting most members first. */
export const buildTeamTypeMatchups = <TType extends { slug: string }>({
  generationOrder,
  members,
  types,
}: {
  generationOrder: number;
  members: readonly TeamTypeMember[];
  types: readonly TType[];
}): TeamTypeMatchupRow<TType>[] => {
  const rows = getGenerationTypeEntries(types, generationOrder).map(
    ({ slug: attacking, type: attackingType }) => {
      const cells = members.map((member) =>
        member.defendingTypeSlugs.length
          ? getDefensiveTypeMultiplier(
              attacking,
              [...member.defendingTypeSlugs],
              generationOrder,
            )
          : null,
      );
      const weakCount = cells.filter(
        (cell) => cell !== null && cell > 1,
      ).length;

      return {
        attackingType,
        cells,
        immuneCount: cells.filter((cell) => cell === 0).length,
        isPressure:
          weakCount >= 2 || cells.some((cell) => cell !== null && cell >= 4),
        resistCount: cells.filter(
          (cell) => cell !== null && cell > 0 && cell < 1,
        ).length,
        weakCount,
      };
    },
  );

  /* Ties keep the type chart's order. */
  return rows.toSorted(
    (left, right) =>
      right.weakCount - left.weakCount ||
      getHighestMultiplier(right.cells) - getHighestMultiplier(left.cells),
  );
};

/* Per defending type: who on the team hits it super effectively, and how often. */
export const buildTeamTypeCoverage = <TType extends { slug: string }>({
  generationOrder,
  members,
  types,
}: {
  generationOrder: number;
  members: readonly TeamTypeMember[];
  types: readonly TType[];
}): TeamTypeCoverageRow<TType>[] =>
  getGenerationTypeEntries(types, generationOrder).map(
    ({ slug: defending, type: defendingType }) => {
      const hitsByMember = members.map(
        (member) =>
          member.attackingTypeSlugs.filter(
            (attacking) =>
              getTypeEffectiveness(attacking, defending, generationOrder) > 1,
          ).length,
      );

      return {
        coveringMemberIds: members.flatMap((member, index) =>
          hitsByMember[index] ? [member.id] : [],
        ),
        defendingType,
        superEffectiveCount: hitsByMember.reduce((sum, hits) => sum + hits, 0),
      };
    },
  );

/* Type slugs a caller holds as loose strings, without the unknown ones. */
export const toPokemonTypeSlugs = (
  slugs: readonly (string | null | undefined)[],
): PokemonTypeSlug[] =>
  slugs.filter(
    (slug): slug is PokemonTypeSlug =>
      typeof slug === "string" && isPokemonTypeSlug(slug),
  );
