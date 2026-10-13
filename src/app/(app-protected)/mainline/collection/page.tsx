import { MainlineCollectionPage } from "@/modules/mainline/features/collection/mainline-collection-page";
import { getCollectionPageData } from "@/modules/mainline/features/collection/server/collection-page-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function CollectionPage({ searchParams }: PageProps) {
  const [{ species }, data] = await Promise.all([
    searchParams,
    getCollectionPageData(),
  ]);

  return (
    <MainlineCollectionPage
      data={data}
      initialSpeciesSlug={typeof species === "string" ? species : null}
    />
  );
}
