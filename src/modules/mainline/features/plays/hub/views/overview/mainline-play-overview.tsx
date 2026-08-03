import { appRoutes } from "@/config/routes";
import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";

import { JourneyProgressSection } from "./sections/journey-progress-section";
import { RecentHistorySection } from "./sections/recent-history/recent-history-section";
import { TeamSection } from "./sections/team/team-section";

type MainlinePlayOverviewProps = {
  data: MainlinePlayOverviewData;
  playId: string;
};

export const MainlinePlayOverview = ({
  data,
  playId,
}: MainlinePlayOverviewProps) => {
  return (
    <div className="grid min-w-0 gap-4">
      <JourneyProgressSection data={data} playId={playId} />
      <TeamSection
        gameSlug={data.play.game_slug}
        href={appRoutes.mainlinePlayTeam(playId)}
        team={data.teamPreview}
      />
      <RecentHistorySection events={data.timelinePreview} />
    </div>
  );
};
