import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export function MainlineDashboardHome() {
  return (
    <>
      <PageHeader
        title="Dashboard"
        description="Your central hub for recent plays, plans, activity, and progress."
      />
      <EmptyState
        title="Dashboard foundation is ready"
        description="The authenticated app shell is in place. The next slice will connect this page to real play summaries and quick actions."
      />
    </>
  );
}
