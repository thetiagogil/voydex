import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function PlansPage() {
  return (
    <>
      <PageHeader
        title="Plans"
        description="Plan teams before a play starts and link plans to real playthroughs later."
      />
      <EmptyState
        title="Plan workspace placeholder"
        description="Plan list, create flow, and plan detail routes will build on this shell."
      />
    </>
  );
}
