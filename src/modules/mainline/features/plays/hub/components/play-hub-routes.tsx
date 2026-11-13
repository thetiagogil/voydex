"use client";

import { redirect } from "next/navigation";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { MilestoneDecisionRecordButton } from "@/modules/mainline/features/plays/hub/components/milestone-decision-record-button";
import {
  playPageReads,
  playSectionReads,
} from "@/modules/mainline/features/plays/hub/client/play-page-reads";
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
import { useKeepPageReadsReady } from "@/platform/local-db/local-db-context";

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
  const { key, read } = playPageReads(playId).shell;
  const data = useLocalPageData(key, read);

  /* Every section of the Play gets ready while you look at the first. */
  useKeepPageReadsReady(playSectionReads(playId));

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
  const { key, read } = playPageReads(playId).overview;
  const data = useLocalPageData(key, read);

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
  const { key, read } = playPageReads(playId).team(pokemon ?? null);
  const data = useLocalPageData(key, read);

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
  const { key, read } = playPageReads(playId).teamPlan;
  const data = useLocalPageData(key, read);

  return <MainlinePlayTeamPlan data={data} />;
};

export const PlayTeamAnalysisRoute = ({ playId }: PlayRouteProps) => {
  const { key, read } = playPageReads(playId).teamAnalysis;
  const data = useLocalPageData(key, read);

  return <MainlinePlayTeamAnalysis data={data} playId={playId} />;
};

export const PlayHistoryRoute = ({ playId }: PlayRouteProps) => {
  const { key, read } = playPageReads(playId).history;
  const data = useLocalPageData(key, read);

  return <MainlinePlayHistory data={data} playId={playId} />;
};

/* Progress opens on Story, or on the Pokédex for a Play that doesn't track it. */
export const PlayProgressRoute = ({ playId }: PlayRouteProps) => {
  const { key, read } = playPageReads(playId).tracking;
  const tracking = useLocalPageData(key, read);

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
  const { key, read } = playPageReads(playId).story;
  const data = useLocalPageData(key, read);

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
  const { key, read } = playPageReads(playId).pokedex;
  const data = useLocalPageData(key, read);

  return (
    <MainlinePlayProgressPokedex
      data={data}
      initialScopeSlug={initialScopeSlug}
      playId={playId}
    />
  );
};

export const PlayProgressCollectiblesRoute = ({
  initialGroupSlug,
  playId,
}: PlayRouteProps & { initialGroupSlug: string | undefined }) => {
  const { key, read } = playPageReads(playId).collectibles;
  const data = useLocalPageData(key, read);

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
  const { key, read } = playPageReads(playId).settings;
  const data = useLocalPageData(key, read);

  return <MainlinePlaySettings data={data} playId={playId} />;
};
