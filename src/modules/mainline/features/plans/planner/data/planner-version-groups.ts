import type { PlannerCatalogueRows } from "@/modules/mainline/features/plans/planner/server/planner-pool-reader";
import type {
  PlannerVersionGroup,
  PlannerVersionGroupOption,
} from "@/modules/mainline/features/plans/types";
import {
  getChildVersionGroups,
  getVersionGroupFamilyIds,
} from "@/modules/reference/features/games/domain/version-groups";
import {
  getGameShortName,
  getGenerationNumeral,
} from "@/modules/reference/features/games/utils/game-display";
import type { Game, VersionGroup } from "@/modules/reference/types";

/* The base version groups a Plan can be for, newest generation first. */
export const buildPlannerVersionGroupOptions = (
  catalogue: PlannerCatalogueRows,
): PlannerVersionGroupOption[] => {
  const generationById = new Map(
    catalogue.generations.map((generation) => [generation.id, generation]),
  );
  const regionById = new Map(
    catalogue.regions.map((region) => [region.id, region.name]),
  );

  return catalogue.versionGroups
    .filter((group) => group.parent_version_group_id === null)
    .flatMap((group) => {
      const games = catalogue.games.filter(
        (game) => game.version_group_id === group.id,
      );
      const generation = generationById.get(group.generation_id);

      return games.length && generation
        ? [
            {
              gameSlugs: games.map((game) => game.slug),
              generationNumeral: getGenerationNumeral(generation.name),
              generationOrder: generation.sort_order,
              name: group.name,
              regionName: regionById.get(games[0].region_id ?? -1) ?? null,
              slug: group.slug,
              sortOrder: group.sort_order,
            },
          ]
        : [];
    })
    .toSorted(
      (left, right) =>
        right.generationOrder - left.generationOrder ||
        right.sortOrder - left.sortOrder,
    )
    .map(({ gameSlugs, generationNumeral, name, regionName, slug }) => ({
      gameSlugs,
      generationNumeral,
      name,
      regionName,
      slug,
    }));
};

/* The asked-for base version group, else the newest one with games. */
export const resolvePlannerVersionGroup = (
  catalogue: PlannerCatalogueRows,
  slug: string | null,
  options: PlannerVersionGroupOption[],
): VersionGroup | null => {
  const asked = catalogue.versionGroups.find((group) => group.slug === slug);
  const base =
    asked && asked.parent_version_group_id !== null
      ? catalogue.versionGroups.find(
          (group) => group.id === asked.parent_version_group_id,
        )
      : asked;
  const fallbackSlug = options[0]?.slug;

  return (
    base ??
    catalogue.versionGroups.find((group) => group.slug === fallbackSlug) ??
    null
  );
};

export const getPlannerFamilyIds = (
  catalogue: PlannerCatalogueRows,
  versionGroup: VersionGroup,
) => getVersionGroupFamilyIds(versionGroup, catalogue.versionGroups);

export const toPlannerVersionGroup = (
  catalogue: PlannerCatalogueRows,
  versionGroup: VersionGroup,
  games: Game[],
): PlannerVersionGroup => {
  const generation = catalogue.generations.find(
    (candidate) => candidate.id === versionGroup.generation_id,
  );

  return {
    availabilityGroups: [],
    expansions: getChildVersionGroups(
      versionGroup,
      catalogue.versionGroups,
    ).map((child) => ({ name: child.name, versionGroupId: child.id })),
    games: games.map((game) => ({
      id: game.id,
      name: game.name,
      shortName: getGameShortName(game.name),
      slug: game.slug,
    })),
    generationNumeral: getGenerationNumeral(generation?.name ?? ""),
    generationOrder: generation?.sort_order ?? versionGroup.generation_id,
    id: versionGroup.id,
    name: versionGroup.name,
    regionName:
      catalogue.regions.find((region) => region.id === games[0]?.region_id)
        ?.name ?? null,
    slug: versionGroup.slug,
  };
};
