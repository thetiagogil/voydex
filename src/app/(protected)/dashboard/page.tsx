"use client";

import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import { ActivitySection } from "@/features/dashboard/components/activity-section";
import { GenerationsSection } from "@/features/dashboard/components/generations-section";
import { StatsSection } from "@/features/dashboard/components/stats-section";
import { useDashboardOverview } from "@/features/dashboard/hooks/useDashboard";

export default function DashboardPage() {
  const { data: overview, isLoading } = useDashboardOverview();

  if (isLoading) {
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
        <StatsSection stats={overview?.stats ?? null} />

        {/* Main Content - Two Columns with Independent Scrolling */}
        <div className="grid min-h-0 flex-1 gap-4 lg:grid-cols-3">
          {/* Generations Column */}
          <div className="min-h-0 lg:col-span-2">
            <GenerationsSection generations={overview?.generations ?? []} />
          </div>

          {/* Activity Column */}
          <div className="min-h-0 lg:col-span-1">
            <ActivitySection activities={overview?.activity ?? []} />
          </div>
        </div>
      </div>
    </PageLayout>
  );
}
