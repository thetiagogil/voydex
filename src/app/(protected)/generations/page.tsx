import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function GenerationsPage() {
  return (
    <>
      <PageHeader
        title="Generations"
        description="Browse games, plays, plans, and stats by generation."
      />
      <EmptyState
        title="Generation browse placeholder"
        description="Browse pages are contextual discovery routes, not required funnels."
      />
    </>
  );
}
