"use client";

import { ActivitySection } from "@/components/features/adventures/activity-section";
import { GenerationSection } from "@/components/features/adventures/generation-section";
import { StatsSection } from "@/components/features/adventures/stats-section";
import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import {
  useDashboardStats,
  useGenerationsWithUserStats,
  useRecentActivity,
} from "@/hooks/gameplay/useDashboard";

export default function AdventuresPage() {
  const { data: stats, isLoading: isStatsLoading } = useDashboardStats();
  const { data: generations, isLoading: isGenerationsLoading } =
    useGenerationsWithUserStats();
  const { data: activities, isLoading: isActivitiesLoading } =
    useRecentActivity(20);

  if (isStatsLoading || isGenerationsLoading || isActivitiesLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  return (
    <PageLayout className="flex flex-col overflow-hidden lg:h-[90vh]">
      <div className="flex min-h-0 flex-1 flex-col gap-6">
        {/* Stats Section */}
        <StatsSection stats={stats ?? null} />

        {/* Main Content - Two Columns with Independent Scrolling */}
        <div className="grid min-h-0 flex-1 gap-4 lg:grid-cols-3">
          {/* Generations Column */}
          <div className="min-h-0 lg:col-span-2">
            <GenerationSection generations={generations ?? []} />
          </div>

          {/* Activity Column */}
          <div className="min-h-0 lg:col-span-1">
            <ActivitySection activities={activities ?? []} />
          </div>
        </div>
      </div>
    </PageLayout>
  );
}
