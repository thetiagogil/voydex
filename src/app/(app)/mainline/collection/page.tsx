import { MainlineCollectionRoute } from "@/modules/mainline/features/collection/mainline-collection-route";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function CollectionPage({ searchParams }: PageProps) {
  const { species, view } = await searchParams;

  return (
    <MainlineCollectionRoute
      initialSpeciesSlug={typeof species === "string" ? species : null}
      view={view === "games" || view === "favourites" ? view : "pokemon"}
    />
  );
}
