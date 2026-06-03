import { CollectionView } from "@/features/collection/components/collection-view";
import { getCollection } from "@/features/collection/server/collection";
import { PageLayout } from "@/shared/components/layout/page-layout";

export default async function CollectionPage() {
  const { data } = await getCollection();

  return (
    <PageLayout>
      <CollectionView initialCollection={data ?? []} />
    </PageLayout>
  );
}
