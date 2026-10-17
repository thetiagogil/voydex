import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  buildGameDetailData,
  pickGameDetailVersion,
} from "@/modules/codex/features/games/detail/data/game-detail-mappers";
import { loadGameDetailRows } from "@/modules/codex/features/games/detail/server/game-detail-loaders";
import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import { getCodexVersionGroupRouteRows } from "@/modules/codex/shared/server/version-group-route-query";
import { resolveVersionGroupRoute } from "@/modules/reference/features/games/domain/version-groups";
import { readGameStarters } from "@/modules/reference/features/games/server/game-shelf-reader";

/*
 * A base version group's page from its address; `versionSlug` picks the
 * game. Null when the slug names no base group: the layout has already
 * answered an unknown slug with a 404 and a game's or an expansion's with a
 * redirect.
 */
export const getGameDetailPage = async (
  slug: string,
  versionSlug?: string,
): Promise<CodexGameDetailData | null> => {
  const [supabase, routeRows] = await Promise.all([
    createServerSupabaseClient(),
    getCodexVersionGroupRouteRows(),
  ]);
  const route = resolveVersionGroupRoute(slug, routeRows);

  if (!route?.isCanonical) {
    return null;
  }

  const rows = await loadGameDetailRows(
    supabase,
    route.versionGroup,
    routeRows.versionGroups,
  );

  // The Let's Go games each have their own partner, so the picked game's.
  const pickedGame = pickGameDetailVersion(rows.versions, versionSlug);
  const starters = pickedGame
    ? await readGameStarters(supabase, pickedGame.slug)
    : null;

  return buildGameDetailData(rows, versionSlug, starters);
};
