"use client";

import { notFound, permanentRedirect, RedirectType } from "next/navigation";

import { codexFiles } from "@/modules/codex/codex-files";
import { useCodexFile } from "@/modules/codex/shared/client/use-codex-file";
import {
  resolveVersionGroupRoute,
  type VersionGroupRoute,
  type VersionGroupRouteRows,
} from "@/modules/reference/features/games/domain/version-groups";

/*
 * What a Codex address segment names, from the pre-built game list: null
 * while it downloads, a 404 for an unknown slug, and a game's or an
 * expansion's old address moves on to its base group (`getHref` makes the
 * address there). Rows come along for the page.
 */
export const useCodexVersionGroupRoute = (
  slug: string,
  getHref: (route: VersionGroupRoute) => string,
): { route: VersionGroupRoute; rows: VersionGroupRouteRows } | null => {
  const rows = useCodexFile<VersionGroupRouteRows>(codexFiles.versionGroups());

  if (!rows) {
    return null;
  }

  const route = resolveVersionGroupRoute(slug, rows);

  if (!route) {
    notFound();
  }

  if (!route.isCanonical) {
    permanentRedirect(getHref(route), RedirectType.replace);
  }

  return { route, rows };
};
