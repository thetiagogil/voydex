import { notFound } from "next/navigation";

import { MilestoneDecisionRecordButton } from "@/modules/mainline/features/plays/hub/components/milestone-decision-record-button";
import { getMainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/views/overview/mainline-play-overview";

type MainlinePlayOverviewRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayOverviewRoute({
  params,
}: MainlinePlayOverviewRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayOverviewData(playId);

  if (!data) {
    notFound();
  }

  return (
    <MainlinePlayOverview
      data={data}
      decisionRecord={
        data.nextDecisionMilestone ? (
          <MilestoneDecisionRecordButton
            milestone={data.nextDecisionMilestone}
            playId={playId}
          />
        ) : undefined
      }
      playId={playId}
    />
  );
}
