import type { ReactNode } from "react";

import { toPokedexMode } from "@/config/play-tracking";
import { appRoutes } from "@/config/routes";
import { getPlayMomentTypeByFormId } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";
import type { MilestoneBadge } from "@/modules/mainline/features/plays/shared/data/play-stamps";

import { OverviewRecordingProvider } from "./client/overview-recording";
import { FirstStepsSection } from "./sections/first-steps/first-steps-section";
import { NextObjectiveSection } from "./sections/next-objective/next-objective-section";
import { PartnerHeroSection } from "./sections/partner/partner-hero-section";
import { PokedexSummarySection } from "./sections/pokedex-summary/pokedex-summary-section";
import { RecentHistorySection } from "./sections/recent-history/recent-history-section";
import { TeamSection } from "./sections/team/team-section";

type MainlinePlayOverviewProps = {
  data: MainlinePlayOverviewData;
  /* The route's main button for a choice milestone, recording in place. */
  decisionRecord?: ReactNode;
  playId: string;
};

/*
 * Overview: the team as stickers first, then the journey card (the next
 * objective with the game's stamp card beside it), then recent moments
 * beside the Pokédex. The stickers and stamps are the loud parts; everything around
 * them stays quiet. A brand-new Play opens instead on its partner choice and
 * first steps (v3 `fresh`).
 */
export const MainlinePlayOverview = ({
  data,
  decisionRecord,
  playId,
}: MainlinePlayOverviewProps) => {
  /* Story turned off: no journey card and no partner milestone. */
  const storyTracked = data.overview?.story_tracking_enabled ?? true;
  const partner = storyTracked ? (data.freshPlay?.partner ?? null) : null;
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
        badgeByMilestoneId: new Map(
          (data.badgeCase?.stamps ?? []).flatMap(
            (stamp): [number, MilestoneBadge][] =>
              stamp.badge ? [[stamp.milestoneId, stamp.badge]] : [],
          ),
        ),
        trophyMilestoneIds: new Set(data.trophyMilestoneIds),
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
        {/* A brand-new Play opens on its partner; any other, on its team. */}
        {partner ? (
          <div className="grid gap-4 lg:grid-cols-[1.35fr_1fr] lg:gap-6">
            <PartnerHeroSection
              nextMilestone={data.nextMilestone}
              nextPosition={data.nextMilestonePosition}
              partner={partner}
              playId={playId}
            />
            <FirstStepsSection
              addedCount={Math.max(0, teamCount - (chosenPartner ? 1 : 0))}
              partnerName={chosenPartner?.name ?? null}
              pokedexMode={toPokedexMode(data.overview?.pokedex_mode)}
              playId={playId}
            />
          </div>
        ) : null}
        <TeamSection
          activeCount={data.overview?.active_team_count ?? null}
          fresh={partner ? { partnerChosen: Boolean(chosenPartner) } : null}
          href={appRoutes.mainlinePlayTeam(playId)}
          playId={playId}
          reserveCount={data.overview?.reserve_team_count ?? null}
          team={data.teamPreview}
        />
        {!partner && storyTracked ? (
          <NextObjectiveSection
            decisionRecord={decisionRecord}
            nextMilestone={data.nextMilestone}
            nextMilestonePosition={data.nextMilestonePosition}
            playId={playId}
            stamps={data.badgeCase?.stamps ?? []}
          />
        ) : null}
        {/*
         * Latest moments beside the Pokédex. A Play that tracks no Pokédex
         * and has no collectibles draws no second card, so moments take the row.
         */}
        <div className="grid gap-4 lg:grid-cols-[1.35fr_1fr] lg:gap-6 *:only:lg:col-span-2">
          {recentMoments}
          {partner ? null : (
            <PokedexSummarySection
              latestCatches={data.latestCatches}
              overview={data.overview}
              playId={playId}
            />
          )}
        </div>
      </div>
    </OverviewRecordingProvider>
  );
};
