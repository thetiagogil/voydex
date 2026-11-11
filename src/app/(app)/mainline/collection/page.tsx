import { MainlineCollectionRoute } from "@/modules/mainline/features/collection/mainline-collection-route";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function CollectionPage({ searchParams }: PageProps) {
  const [{ species, view }, catalogue] = await Promise.all([
    searchParams,
    readGameCatalogue(),
  ]);

  return (
    <MainlineCollectionRoute
      catalogue={catalogue}
      initialSpeciesSlug={typeof species === "string" ? species : null}
      view={view === "games" || view === "favourites" ? view : "pokemon"}
    />
  );
}
