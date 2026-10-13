import { appRoutes } from "@/config/routes";
import { getPlayMomentTypeByFormId } from "@/modules/mainline/features/plays/hub/data/play-moment-record";
import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

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
      context={{
        badgeTypeByMilestoneId: new Map(
          (data.badgeCase?.stamps ?? []).flatMap(
            (stamp): [number, PokemonTypeSlug][] =>
              stamp.badgeType ? [[stamp.milestoneId, stamp.badgeType]] : [],
          ),
        ),
        typeByFormId: getPlayMomentTypeByFormId(data.teamPreview),
      }}
      events={data.timelinePreview}
      startedOn={data.play.started_on}
    />
  );

  return (
    <div className="grid min-w-0 gap-8 sm:gap-10">
      <div className="grid gap-5 lg:grid-cols-[1.35fr_1fr] lg:gap-6">
        <NextObjectiveSection
          lastCompletedMilestone={data.lastCompletedMilestone}
          lastRecordedTeam={data.lastRecordedTeam}
          nextMilestone={data.nextMilestone}
          nextMilestonePosition={data.nextMilestonePosition}
          playId={playId}
        />
        <ProgressSummarySection overview={data.overview} playId={playId} />
      </div>
      <TeamSection
        activeCount={data.overview?.active_team_count ?? null}
        href={appRoutes.mainlinePlayTeam(playId)}
        playId={playId}
        reserveCount={data.overview?.reserve_team_count ?? null}
        team={data.teamPreview}
      />
      {data.badgeCase ? (
        <div className="grid gap-5 lg:grid-cols-[1fr_1.2fr] lg:gap-6">
          <BadgeCaseSection
            aheadMilestones={data.aheadMilestones}
            badgeCase={data.badgeCase}
            storyHref={storyHref}
          />
          {recentMoments}
        </div>
      ) : (
        recentMoments
      )}
    </div>
  );
};
