import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function CollectionPage() {
  return (
    <>
      <PageHeader
        title="Collection"
        description="A derived history of Pokemon used across plays, events, and snapshots."
      />
      <EmptyState
        title="Collection read model placeholder"
        description="Collection will be derived from gameplay rows rather than manually maintained."
      />
    </>
  );
}
