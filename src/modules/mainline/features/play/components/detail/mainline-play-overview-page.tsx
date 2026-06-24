import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { CurrentTeamCard } from "@/modules/mainline/features/play/components/detail/overview/current-team-card";
import { JourneyStatusCard } from "@/modules/mainline/features/play/components/detail/overview/journey-status-card";
import { ProgressSummaryCard } from "@/modules/mainline/features/play/components/detail/overview/progress-summary-card";
import { TeamHealthCard } from "@/modules/mainline/features/play/components/detail/overview/team-health-card";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { TimelineRows } from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type MainlinePlayOverviewPageProps = {
  data: MainlinePlayDetailData;
};

export const MainlinePlayOverviewPage = ({
  data,
}: MainlinePlayOverviewPageProps) => {
  return (
    <MainlinePlayShell activeTab="overview" data={data}>
      <div className="grid gap-5 xl:grid-cols-[minmax(0,1fr)_27rem]">
        <div className="flex flex-col gap-5">
          <JourneyStatusCard data={data} />
          <Card>
            <CardHeader>
              <CardTitle>Recent History</CardTitle>
              <CardDescription>
                Latest timeline events for this play.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <TimelineRows events={data.timelineEvents} />
            </CardContent>
          </Card>
        </div>

        <div className="flex flex-col gap-5">
          <CurrentTeamCard data={data} />
          <TeamHealthCard data={data} />
          <ProgressSummaryCard data={data} />
        </div>
      </div>
    </MainlinePlayShell>
  );
};
