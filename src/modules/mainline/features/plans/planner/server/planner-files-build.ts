import { buildPlannerContext } from "@/modules/mainline/features/plans/planner/data/planner-pool-model";
import {
  buildPlannerVersionGroupOptions,
  getPlannerFamilyIds,
  resolvePlannerVersionGroup,
} from "@/modules/mainline/features/plans/planner/data/planner-version-groups";
import {
  plannerFiles,
  type PlannerGameFile,
  type PlannerGamesFile,
} from "@/modules/mainline/features/plans/planner/planner-files";
import {
  readPlannerCatalogue,
  readPlannerPoolRows,
} from "@/modules/mainline/features/plans/planner/server/planner-pool-reader";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/* Writes one pre-built file; the build script owns where and how. */
type WritePlannerFile = (path: string, data: unknown) => Promise<void>;

const requirePath = (path: string | null, what: string) => {
  if (path === null) {
    throw new Error(`${what} has a slug that can't name a file.`);
  }

  return path;
};

/*
 * The Team Planner's files: the game list, then one file per game a Plan
 * can be for, read through the readers the Planner used to run on the
 * device, from a database holding every game data file. Build only
 * (`npm run codex:build`).
 */
export const buildPlannerFiles = async (
  supabase: ServerSupabaseClient,
  write: WritePlannerFile,
) => {
  const catalogue = await readPlannerCatalogue(supabase);
  const versionGroups = buildPlannerVersionGroupOptions(catalogue);
  const planned = new Set(versionGroups.map((option) => option.slug));
  const baseSlugBySlug: Record<string, string> = {};

  for (const group of catalogue.versionGroups) {
    const base = resolvePlannerVersionGroup(
      catalogue,
      group.slug,
      versionGroups,
    );

    if (base && planned.has(base.slug)) baseSlugBySlug[group.slug] = base.slug;
  }

  await write(requirePath(plannerFiles.games(), "The Planner's games"), {
    baseSlugBySlug,
    versionGroups,
  } satisfies PlannerGamesFile);

  for (const option of versionGroups) {
    const versionGroup = catalogue.versionGroups.find(
      (group) => group.slug === option.slug,
    );

    if (!versionGroup) {
      throw new Error(
        `The Planner's game ${option.slug} has no version group.`,
      );
    }

    const pool = await readPlannerPoolRows(
      supabase,
      getPlannerFamilyIds(catalogue, versionGroup),
    );

    await write(
      requirePath(plannerFiles.game(option.slug), `Planner ${option.slug}`),
      {
        context: buildPlannerContext({ catalogue, pool, versionGroup }),
      } satisfies PlannerGameFile,
    );
  }
};
