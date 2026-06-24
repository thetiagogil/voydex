import Link from "next/link";
import {
  BookOpenCheckIcon,
  Clock3Icon,
  CompassIcon,
  PlusIcon,
  TrophyIcon,
} from "lucide-react";

import { modules } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import type { MainlineDashboardData } from "@/modules/mainline/features/dashboard/data/queries";
import { ContinuePlayPanel } from "@/modules/mainline/features/dashboard/components/continue-play-panel";
import { DashboardMetric } from "@/modules/mainline/features/dashboard/components/dashboard-metric";
import { DashboardQuickActions } from "@/modules/mainline/features/dashboard/components/dashboard-quick-actions";
import { RecentPlaysPanel } from "@/modules/mainline/features/dashboard/components/recent-plays-panel";
import { formatMainlineNumber } from "@/modules/mainline/features/play/components/mainline-play-summary";
import { EmptyState } from "@/shared/components/app/empty-state";
import { PageHeader } from "@/shared/components/app/page-header";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";

type MainlineDashboardHomeProps = {
  data: MainlineDashboardData;
};

const mainlineModule = modules.mainline;

export const MainlineDashboardHome = ({ data }: MainlineDashboardHomeProps) => {
  const continuePlay =
    data.recentPlays.find((play) => play.status_slug !== "completed") ??
    data.recentPlays[0] ??
    null;
  const activePlayCount =
    data.summary?.active_library_play_count ??
    data.recentPlays.filter((play) => play.status_slug === "in_progress")
      .length;

  return (
    <>
      <PageHeader
        title="Dashboard"
        description={`Your ${mainlineModule.label.toLowerCase()} workspace for continuing plays, checking progress, and starting the next record.`}
        action={
          <Button
            render={<Link href={appRoutes.mainlineNewPlay} />}
            nativeButton={false}
          >
            <PlusIcon data-icon="inline-start" />
            New play
          </Button>
        }
      />

      {continuePlay ? (
        <ContinuePlayPanel play={continuePlay} />
      ) : (
        <Card className="bg-card/82">
          <CardContent>
            <EmptyState
              title="No plays yet"
              description="Create your first Mainline play to turn the dashboard into a useful command center."
              action={
                <Button
                  render={<Link href={appRoutes.mainlineNewPlay} />}
                  nativeButton={false}
                >
                  <PlusIcon data-icon="inline-start" />
                  Create a play
                </Button>
              }
            />
          </CardContent>
        </Card>
      )}

      <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-4">
        <DashboardMetric
          icon={CompassIcon}
          label="Active plays"
          value={formatMainlineNumber(activePlayCount)}
          description="Open, paused, or in-progress records in your current library."
        />
        <DashboardMetric
          icon={TrophyIcon}
          label="Completed"
          value={formatMainlineNumber(data.summary?.completed_play_count)}
          description="Finished plays kept as part of your long-term record."
        />
        <DashboardMetric
          icon={BookOpenCheckIcon}
          label="Milestones"
          value={formatMainlineNumber(
            data.statsSummary?.completed_milestone_count,
          )}
          description="Story progress logged across your Mainline records."
        />
        <DashboardMetric
          icon={Clock3Icon}
          label="Playtime"
          value={`${formatMainlineNumber(Math.floor((data.statsSummary?.total_playtime_minutes ?? 0) / 60))}h`}
          description="Total playtime from plays where time has been recorded."
        />
      </div>

      <div className="grid gap-5 xl:grid-cols-[minmax(0,1fr)_22rem]">
        <RecentPlaysPanel plays={data.recentPlays} />
        <DashboardQuickActions />
      </div>
    </>
  );
};
