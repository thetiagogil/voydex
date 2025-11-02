import { AdventuresHeader } from "@/components/features/adventures/adventures-header";
import { GenerationGrid } from "@/components/features/adventures/generation-grid";
import { StatsSection } from "@/components/features/adventures/stats-section";
import { PageLayout } from "@/components/layout/page-layout";
import { generationData } from "@/lib/mock-data";

export default function AdventuresPage() {
  const generations = Object.values(generationData);

  return (
    <PageLayout>
      <div className="space-y-6">
        <AdventuresHeader />
        <StatsSection />
        <GenerationGrid generations={generations} />
      </div>
    </PageLayout>
  );
}
