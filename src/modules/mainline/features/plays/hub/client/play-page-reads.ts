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
import type { MainlinePageRead } from "@/modules/mainline/shared/client/use-local-page-data";

/*
 * A Play's page reads, named once for its pages and for getting them ready
 * when the Play opens (`PlayShellRoute`), so moving between its sections
 * never waits on the device.
 */
export const playPageReads = (playId: string) => {
  const key = (page: string) => `play:${playId}:${page}`;

  return {
    collectibles: {
      key: key("collectibles"),
      read: async () => {
        const [collectibles, tracking] = await Promise.all([
          getMainlinePlayProgressCollectiblesData(playId),
          getMainlinePlayTracking(playId),
        ]);

        return collectibles ? { collectibles, tracking } : null;
      },
    },
    history: {
      key: key("history"),
      read: () => getMainlinePlayHistoryData(playId),
    },
    overview: {
      key: key("overview"),
      read: () => getMainlinePlayOverviewData(playId),
    },
    pokedex: {
      key: key("pokedex"),
      read: () => getMainlinePlayProgressPokedexData(playId),
    },
    settings: {
      key: key("settings"),
      read: () => getMainlinePlaySettingsData(playId),
    },
    shell: {
      key: key("shell"),
      read: async () => {
        const [shell, editing] = await Promise.all([
          getMainlinePlayShellData(playId),
          /* Only the tap-to-edit badges need it: without it the head reads as plain text. */
          getPlayHeaderEditing(playId).catch(() => null),
        ]);

        return shell ? { editing, shell } : null;
      },
    },
    story: {
      key: key("story"),
      read: async () => {
        const [story, matchups, tracking] = await Promise.all([
          getMainlinePlayProgressStoryData(playId),
          getMainlinePlayStoryMatchups(playId),
          getMainlinePlayTracking(playId),
        ]);

        return story ? { matchups, story, tracking } : null;
      },
    },
    team: (pokemon: string | null) => ({
      key: key(`team:${pokemon ?? ""}`),
      read: () => getMainlinePlayTeamRosterData(playId, pokemon),
    }),
    teamAnalysis: {
      key: key("team-analysis"),
      read: () => getMainlinePlayTeamAnalysisData(playId),
    },
    teamPlan: {
      key: key("team-plan"),
      read: () => getMainlinePlayTeamPlanData(playId),
    },
    tracking: {
      key: key("tracking"),
      read: () => getMainlinePlayTracking(playId),
    },
  } satisfies Record<
    string,
    MainlinePageRead<unknown> | ((pokemon: string | null) => unknown)
  >;
};

/* Every section of a Play, in the order they are most likely opened. */
export const playSectionReads = (playId: string) => {
  const reads = playPageReads(playId);

  return [
    reads.overview,
    reads.team(null),
    reads.tracking,
    reads.story,
    reads.pokedex,
    reads.history,
    reads.settings,
    reads.teamPlan,
    reads.teamAnalysis,
    reads.collectibles,
  ];
};
