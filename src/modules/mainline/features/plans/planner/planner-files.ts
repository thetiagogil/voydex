import type {
  PlannerContext,
  PlannerVersionGroupOption,
} from "@/modules/mainline/features/plans/types";
import { getPrebuiltDataPath } from "@/platform/prebuilt-data/prebuilt-data";

/*
 * The Team Planner's pre-built files under /codex-data/planner/ (`npm run
 * codex:build` writes them from the game data files; the Planner reads
 * them). A game's Pokémon are game data, the same for everyone, so the
 * Planner reads them the way the Codex reads its pages; only a saved Plan
 * comes from the device database.
 */
export const plannerFiles = {
  /* The games a Plan can be for, and which game each address opens. */
  games: () => getPrebuiltDataPath("planner"),
  /* One base version group's Pokémon, with its expansions'. */
  game: (versionGroupSlug: string) =>
    getPrebuiltDataPath("planner", versionGroupSlug),
};

export type PlannerGamesFile = {
  /*
   * The base version group each version group's slug opens: its own, or
   * its base game's for an expansion. Only games a Plan can be for.
   */
  baseSlugBySlug: Record<string, string>;
  /* Newest generation first; the first is the Planner's default game. */
  versionGroups: PlannerVersionGroupOption[];
};

export type PlannerGameFile = {
  context: PlannerContext;
};
