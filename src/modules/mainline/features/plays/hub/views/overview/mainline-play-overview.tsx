import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { getPlayMomentTypeByFormId } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

import { OverviewRecordingProvider } from "./client/overview-recording";
import { FirstStepsSection } from "./sections/first-steps/first-steps-section";
import { NextObjectiveSection } from "./sections/next-objective/next-objective-section";
import { PartnerHeroSection } from "./sections/partner/partner-hero-section";
import { ProgressSummarySection } from "./sections/progress-summary/progress-summary-section";
import { RecentHistorySection } from "./sections/recent-history/recent-history-section";
import { TeamSection } from "./sections/team/team-section";

type MainlinePlayOverviewProps = {
  data: MainlinePlayOverviewData;
  /* The route's main button for a choice milestone, recording in place. */
  decisionRecord?: ReactNode;
  playId: string;
};

/*
 * Overview: the next objective and progress up top, the team as stickers, then
 * the badge case and recent moments. The stickers and stamps are the loud
 * parts; everything around them stays quiet. A brand-new Play opens instead
 * on its partner choice and first steps (v3 `fresh`).
 */
export const MainlinePlayOverview = ({
  data,
  decisionRecord,
  playId,
}: MainlinePlayOverviewProps) => {
  const partner = data.freshPlay?.partner ?? null;
  const chosenPartner = partner?.isRecorded
    ? (partner.options.find(
        (option) => option.decisionOptionId === partner.chosenOptionId,
      ) ?? null)
    : null;
  const teamCount =
    (data.overview?.active_team_count ?? 0) +
    (data.overview?.reserve_team_count ?? 0);
  const recentMoments = (
    <RecentHistorySection
      context={{
        badgeTypeByMilestoneId: new Map(
          (data.badgeCase?.stamps ?? []).flatMap(
            (stamp): [number, PokemonTypeSlug][] =>
              stamp.badgeType ? [[stamp.milestoneId, stamp.badgeType]] : [],
          ),
        ),
        /* The League's stamps are its trophies. */
        trophyMilestoneIds: new Set(
          (data.badgeCase?.stamps ?? []).flatMap((stamp) =>
            stamp.kind === "league" ? [stamp.milestoneId] : [],
          ),
        ),
        typeByFormId: getPlayMomentTypeByFormId(data.teamPreview),
      }}
      events={data.timelinePreview}
      historyHref={appRoutes.mainlinePlayHistory(playId)}
      startedOn={data.play.started_on}
    />
  );

  return (
    <OverviewRecordingProvider playId={playId}>
      <div className="grid min-w-0 gap-8 sm:gap-10">
        <div className="grid gap-5 lg:grid-cols-[1.35fr_1fr] lg:gap-6">
          {partner ? (
            <>
              <PartnerHeroSection
                nextMilestone={data.nextMilestone}
                nextPosition={data.nextMilestonePosition}
                partner={partner}
                playId={playId}
              />
              <FirstStepsSection
                addedCount={Math.max(0, teamCount - (chosenPartner ? 1 : 0))}
                partnerName={chosenPartner?.name ?? null}
                playId={playId}
              />
            </>
          ) : (
            <>
              <NextObjectiveSection
                decisionRecord={decisionRecord}
                nextMilestone={data.nextMilestone}
                nextMilestonePosition={data.nextMilestonePosition}
                playId={playId}
                stamps={data.badgeCase?.stamps ?? []}
              />
              <ProgressSummarySection
                overview={data.overview}
                playId={playId}
              />
            </>
          )}
        </div>
        <TeamSection
          activeCount={data.overview?.active_team_count ?? null}
          fresh={partner ? { partnerChosen: Boolean(chosenPartner) } : null}
          href={appRoutes.mainlinePlayTeam(playId)}
          playId={playId}
          reserveCount={data.overview?.reserve_team_count ?? null}
          team={data.teamPreview}
        />
        {recentMoments}
      </div>
    </OverviewRecordingProvider>
  );
};
