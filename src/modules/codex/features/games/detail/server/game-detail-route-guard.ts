import { notFound, permanentRedirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { getCodexVersionGroupRoute } from "@/modules/codex/shared/server/version-group-route-query";

/*
 * Runs in the version group page's layout, before anything streams, so an
 * unknown slug is a real 404 and a game's or an expansion's old address a
 * real 308 to its base group (keeping the game it named).
 */
export const ensureGameDetailRoute = async (versionGroupSlug: string) => {
  const route = await getCodexVersionGroupRoute(versionGroupSlug);

  if (!route) {
    notFound();
  }

  if (!route.isCanonical) {
    permanentRedirect(
      appRoutes.codexVersionGroup(route.versionGroup.slug, route.game?.slug),
    );
  }
};
