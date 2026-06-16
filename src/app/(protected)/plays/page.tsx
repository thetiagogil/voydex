import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function PlaysPage() {
  return (
    <>
      <PageHeader
        title="Plays"
        description="Create, continue, filter, and review every playthrough."
      />
      <EmptyState
        title="No play list connected yet"
        description="This route is ready for the first database-backed vertical slice."
      />
    </>
  );
}
