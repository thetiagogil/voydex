"use client";

import { redirect } from "next/navigation";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { MilestoneDecisionRecordButton } from "@/modules/mainline/features/plays/hub/components/milestone-decision-record-button";
import {
  getMainlinePlayHistoryData,
  getMainlinePlayOverviewData,
  getMainlinePlayProgressCollectiblesData,
  getMainlinePlayProgressPokedexData,
  getMainlinePlayProgressStoryData,
  getMainlinePlaySettingsData,
  getMainlinePlayShellData,
  getMainlinePlayStoryMatchups,
  getMainlinePlayTeamAnalysisData,
  getMainlinePlayTeamPlanData,
  getMainlinePlayTeamRosterData,
  getMainlinePlayTracking,
  getPlayHeaderEditing,
} from "@/modules/mainline/features/plays/hub/client/play-hub-query";
import { MainlinePlayShell } from "@/modules/mainline/features/plays/hub/shell/mainline-play-shell";
import { MainlinePlayHistory } from "@/modules/mainline/features/plays/hub/views/history/mainline-play-history";
import { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/views/overview/mainline-play-overview";
import { MainlinePlayProgressCollectibles } from "@/modules/mainline/features/plays/hub/views/progress/progress-collectibles/mainline-play-progress-collectibles";
import { MainlinePlayProgressPokedex } from "@/modules/mainline/features/plays/hub/views/progress/progress-pokedex/mainline-play-progress-pokedex";
import { MainlinePlayProgressStory } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/mainline-play-progress-story";
import { MainlinePlaySettings } from "@/modules/mainline/features/plays/hub/views/settings/mainline-play-settings";
import { MainlinePlayTeamAnalysis } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/mainline-play-team-analysis";
import { MainlinePlayTeamPlan } from "@/modules/mainline/features/plays/hub/views/team/team-plan/mainline-play-team-plan";
import { MainlinePlayTeamRoster } from "@/modules/mainline/features/plays/hub/views/team/team-roster/mainline-play-team-roster";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";

/*
 * The Play hub's routes, read on the device. Each route file stays thin and
 * renders one of these with what the address says; each reads its view's
 * data the way the route read it on the server, then renders the same view.
 */

type PlayRouteProps = { playId: string };

export const PlayShellRoute = ({
  children,
  playId,
}: PlayRouteProps & { children: ReactNode }) => {
  const data = useLocalPageData(`play:${playId}:shell`, async () => {
    const [shell, editing] = await Promise.all([
      getMainlinePlayShellData(playId),
      /* Only the tap-to-edit badges need it: without it the head reads as plain text. */
      getPlayHeaderEditing(playId).catch(() => null),
    ]);

    return shell ? { editing, shell } : null;
  });

  if (!data) return null;

  return (
    <MainlinePlayShell
      data={data.shell}
      editing={data.editing ?? undefined}
      playId={playId}
    >
      {children}
    </MainlinePlayShell>
  );
};

export const PlayOverviewRoute = ({ playId }: PlayRouteProps) => {
  const data = useLocalPageData(`play:${playId}:overview`, () =>
    getMainlinePlayOverviewData(playId),
  );

  if (!data) return null;

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
};

export const PlayTeamRosterRoute = ({
  add,
  form,
  playId,
  pokemon,
}: PlayRouteProps & {
  add: string | undefined;
  form: string | undefined;
  pokemon: string | undefined;
}) => {
  const data = useLocalPageData(`play:${playId}:team:${pokemon ?? ""}`, () =>
    getMainlinePlayTeamRosterData(playId, pokemon ?? null),
  );

  if (!data) return null;

  return (
    <MainlinePlayTeamRoster
      key={pokemon ?? ""}
      addRequest={
        add === undefined
          ? null
          : {
              preset: add ? { formSlug: form || null, speciesSlug: add } : null,
            }
      }
      data={data}
      initialPokemonId={pokemon ?? null}
      playId={playId}
    />
  );
};

export const PlayTeamPlanRoute = ({ playId }: PlayRouteProps) => {
  const data = useLocalPageData(`play:${playId}:team-plan`, () =>
    getMainlinePlayTeamPlanData(playId),
  );

  return data ? <MainlinePlayTeamPlan data={data} /> : null;
};

export const PlayTeamAnalysisRoute = ({ playId }: PlayRouteProps) => {
  const data = useLocalPageData(`play:${playId}:team-analysis`, () =>
    getMainlinePlayTeamAnalysisData(playId),
  );

  return data ? <MainlinePlayTeamAnalysis data={data} playId={playId} /> : null;
};

export const PlayHistoryRoute = ({ playId }: PlayRouteProps) => {
  const data = useLocalPageData(`play:${playId}:history`, () =>
    getMainlinePlayHistoryData(playId),
  );

  return data ? <MainlinePlayHistory data={data} playId={playId} /> : null;
};

/* Progress opens on Story, or on the Pokédex for a Play that doesn't track it. */
export const PlayProgressRoute = ({ playId }: PlayRouteProps) => {
  const tracking = useLocalPageData(`play:${playId}:tracking`, () =>
    getMainlinePlayTracking(playId),
  );

  if (!tracking) return null;

  redirect(
    tracking.story
      ? appRoutes.mainlinePlayProgressStory(playId)
      : appRoutes.mainlinePlayProgressPokedex(playId),
  );
};

export const PlayProgressStoryRoute = ({
  playId,
  recordMilestoneId,
}: PlayRouteProps & { recordMilestoneId: number | null }) => {
  const data = useLocalPageData(`play:${playId}:story`, async () => {
    const [story, matchups, tracking] = await Promise.all([
      getMainlinePlayProgressStoryData(playId),
      getMainlinePlayStoryMatchups(playId),
      getMainlinePlayTracking(playId),
    ]);

    return story ? { matchups, story, tracking } : null;
  });

  if (!data) return null;

  if (!data.tracking.story) {
    redirect(appRoutes.mainlinePlayProgressPokedex(playId));
  }

  return (
    <MainlinePlayProgressStory
      data={data.story}
      matchups={data.matchups}
      playId={playId}
      recordMilestoneId={recordMilestoneId}
    />
  );
};

export const PlayProgressPokedexRoute = ({
  initialScopeSlug,
  playId,
}: PlayRouteProps & { initialScopeSlug: string | undefined }) => {
  const data = useLocalPageData(`play:${playId}:pokedex`, () =>
    getMainlinePlayProgressPokedexData(playId),
  );

  return data ? (
    <MainlinePlayProgressPokedex
      data={data}
      initialScopeSlug={initialScopeSlug}
      playId={playId}
    />
  ) : null;
};

export const PlayProgressCollectiblesRoute = ({
  initialGroupSlug,
  playId,
}: PlayRouteProps & { initialGroupSlug: string | undefined }) => {
  const data = useLocalPageData(`play:${playId}:collectibles`, async () => {
    const [collectibles, tracking] = await Promise.all([
      getMainlinePlayProgressCollectiblesData(playId),
      getMainlinePlayTracking(playId),
    ]);

    return collectibles ? { collectibles, tracking } : null;
  });

  if (!data) return null;

  if (!data.tracking.collectibles) {
    redirect(appRoutes.mainlinePlayProgressPokedex(playId));
  }

  return (
    <MainlinePlayProgressCollectibles
      data={data.collectibles}
      initialGroupSlug={initialGroupSlug}
      playId={playId}
    />
  );
};

export const PlaySettingsRoute = ({ playId }: PlayRouteProps) => {
  const data = useLocalPageData(`play:${playId}:settings`, () =>
    getMainlinePlaySettingsData(playId),
  );

  return data ? <MainlinePlaySettings data={data} playId={playId} /> : null;
};
