import type { DashboardOverview } from "@/features/dashboard/types";
import { ActivitySection } from "./activity-section";
import { GenerationsSection } from "./generations-section";
import { StatsSection } from "./stats-section";

type DashboardViewProps = {
  overview: DashboardOverview | null;
}

export const DashboardView = ({ overview }: DashboardViewProps) => {
  return (
    <div className="flex min-h-0 flex-1 flex-col gap-6">
      <StatsSection stats={overview?.stats ?? null} />

      <div className="grid min-h-0 flex-1 gap-4 lg:grid-cols-3">
        <div className="min-h-0 lg:col-span-2">
          <GenerationsSection generations={overview?.generations ?? []} />
        </div>

        <div className="min-h-0 lg:col-span-1">
          <ActivitySection activities={overview?.activity ?? []} />
        </div>
      </div>
    </div>
  );
};
