import { ActivitySection } from "@/components/features/adventures/activity-section";
import { GenerationSection } from "@/components/features/adventures/generation-section";
import { StatsSection } from "@/components/features/adventures/stats-section";
import { PageLayout } from "@/components/layout/page-layout";
import { Header } from "@/components/shared/header";
import {
  mockAdventureStats,
  mockGenerationPlayData,
  mockRecentActivity,
} from "@/lib/mock-data/adventures";

export default function AdventuresPage() {
  return (
    <PageLayout>
      <div className="space-y-6">
        <Header
          size="lg"
          title="Adventures"
          description="Track your Pokémon journeys across all generations. View your active playthroughs, earned badges, and recent achievements."
        />

        <StatsSection stats={mockAdventureStats} />

        <div className="grid gap-4 lg:grid-cols-3">
          <div className="lg:col-span-2">
            <GenerationSection generations={mockGenerationPlayData} />
          </div>

          <div className="lg:col-span-1">
            <ActivitySection activities={mockRecentActivity} />
          </div>
        </div>
      </div>
    </PageLayout>
  );
}
