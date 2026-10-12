import { appRoutes } from "@/config/routes";
import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";

import { getBadgeTypeByMilestoneId } from "./data/badge-case-mapper";
import { BadgeCaseSection } from "./sections/badge-case/badge-case-section";
import { NextObjectiveSection } from "./sections/next-objective/next-objective-section";
import { ProgressSummarySection } from "./sections/progress-summary/progress-summary-section";
import { RecentHistorySection } from "./sections/recent-history/recent-history-section";
import { TeamSection } from "./sections/team/team-section";

type MainlinePlayOverviewProps = {
  data: MainlinePlayOverviewData;
  playId: string;
};

/*
 * Overview: the next objective and progress up top, the team as stickers, then
 * the badge case and recent moments. The stickers and stamps are the loud
 * parts; everything around them stays quiet.
 */
export const MainlinePlayOverview = ({
  data,
  playId,
}: MainlinePlayOverviewProps) => {
  const storyHref = appRoutes.mainlinePlayProgressStory(playId);
  const recentMoments = (
    <RecentHistorySection
      badgeTypeByMilestoneId={getBadgeTypeByMilestoneId(data.badgeCase)}
      events={data.timelinePreview}
      startedOn={data.play.started_on}
    />
  );

  return (
    <div className="grid min-w-0 gap-8 sm:gap-10">
      <div className="grid gap-5 lg:grid-cols-[1.35fr_1fr] lg:gap-6">
        <NextObjectiveSection
          lastCompletedMilestone={data.lastCompletedMilestone}
          nextMilestone={data.nextMilestone}
          overview={data.overview}
          playId={playId}
        />
        <ProgressSummarySection overview={data.overview} playId={playId} />
      </div>
      <TeamSection
        activeCount={data.overview?.active_team_count ?? null}
        href={appRoutes.mainlinePlayTeam(playId)}
        reserveCount={data.overview?.reserve_team_count ?? null}
        team={data.teamPreview}
      />
      {data.badgeCase ? (
        <div className="grid gap-5 lg:grid-cols-[1fr_1.2fr] lg:gap-6">
          <BadgeCaseSection badgeCase={data.badgeCase} storyHref={storyHref} />
          {recentMoments}
        </div>
      ) : (
        recentMoments
      )}
    </div>
  );
};
