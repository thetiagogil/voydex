import { DashboardHeader } from "@/components/features/dashboard/dashboard-header";
import { GenerationGrid } from "@/components/features/dashboard/generation-grid";
import { StatsSection } from "@/components/features/dashboard/stats-section";
import { PageLayout } from "@/components/layout/page-layout";
import { generationData } from "@/lib/mock-data";

export default function Dashboard() {
  const generations = Object.values(generationData);

  return (
    <PageLayout>
      <div className="space-y-6">
        <DashboardHeader />
        <StatsSection />
        <GenerationGrid generations={generations} />
      </div>
    </PageLayout>
  );
}
