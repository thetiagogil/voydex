"use client";

import { collectionPageRead } from "@/modules/mainline/features/collection/client/collection-page-query";
import { MainlineCollectionPage } from "@/modules/mainline/features/collection/mainline-collection-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";

/* Collection, read on the device, with the games from the pre-built catalogue. */
export const MainlineCollectionRoute = ({
  initialSpeciesSlug,
  view,
}: {
  initialSpeciesSlug: string | null;
  view: "favourites" | "games" | "pokemon";
}) => {
  const data = useLocalPageData(
    collectionPageRead.key,
    collectionPageRead.read,
  );

  return (
    <MainlineCollectionPage
      data={data}
      initialSpeciesSlug={initialSpeciesSlug}
      view={view}
    />
  );
};
