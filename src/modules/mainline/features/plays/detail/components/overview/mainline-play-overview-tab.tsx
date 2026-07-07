import { MainlinePlayJourneyStatusPanel } from "@/modules/mainline/features/plays/detail/components/overview/mainline-play-journey-status-panel";
import { MainlinePlayTeamPanel } from "@/modules/mainline/features/plays/detail/components/overview/mainline-play-team-panel";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/shared/types";

type MainlinePlayOverviewTabProps = {
  data: MainlinePlayPageData;
};

export const MainlinePlayOverviewTab = ({
  data,
}: MainlinePlayOverviewTabProps) => {
  return (
    <div className="grid items-start gap-4 xl:grid-cols-[minmax(0,2fr)_minmax(18rem,1fr)]">
      <MainlinePlayJourneyStatusPanel data={data} />
      <MainlinePlayTeamPanel
        gameSlug={data.play.game_slug}
        playId={data.play.play_id}
        team={data.teamPreview}
      />
    </div>
  );
};
