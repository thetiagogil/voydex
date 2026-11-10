"use client";

import { getCollectionPageData } from "@/modules/mainline/features/collection/client/collection-page-query";
import { MainlineCollectionPage } from "@/modules/mainline/features/collection/mainline-collection-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";
import type { GameCatalogue } from "@/modules/reference/features/games/types";

/* Collection, read on the device; the games come from the server. */
export const MainlineCollectionRoute = ({
  catalogue,
  initialSpeciesSlug,
  view,
}: {
  catalogue: GameCatalogue;
  initialSpeciesSlug: string | null;
  view: "favourites" | "games" | "pokemon";
}) => {
  const data = useLocalPageData("collection", () =>
    getCollectionPageData(catalogue),
  );

  return data ? (
    <MainlineCollectionPage
      data={data}
      initialSpeciesSlug={initialSpeciesSlug}
      view={view}
    />
  ) : null;
};
