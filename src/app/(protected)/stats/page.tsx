import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function StatsPage() {
  return (
    <>
      <PageHeader
        title="Stats"
        description="Derived analytics for games, plays, Pokemon, completion, tags, and rules."
      />
      <EmptyState
        title="Stats placeholder"
        description="Stats will stay query/read-model driven until performance requires caching."
      />
    </>
  );
}
