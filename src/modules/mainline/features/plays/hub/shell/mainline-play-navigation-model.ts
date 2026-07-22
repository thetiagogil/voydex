import { appRoutes } from "@/config/routes";

export type MainlinePlaySection =
  | "history"
  | "overview"
  | "progress"
  | "settings"
  | "team";
export type MainlinePlayTeamView = "analysis" | "history" | "overview" | "plan";
export type MainlinePlayProgressView =
  | "collectibles"
  | "overview"
  | "pokedex"
  | "story";

export type MainlinePlayNavigationState = {
  activeProgressView: MainlinePlayProgressView | null;
  activeSection: MainlinePlaySection | null;
  activeTeamView: MainlinePlayTeamView | null;
};

const matchesPath = (pathname: string, href: string) => {
  return pathname === href || pathname === `${href}/`;
};

export const getMainlinePlayNavigationState = (
  pathname: string,
  playId: string,
): MainlinePlayNavigationState => {
  const overviewHref = appRoutes.mainlinePlay(playId);
  const progressHref = appRoutes.mainlinePlayProgress(playId);
  const teamHref = appRoutes.mainlinePlayTeam(playId);

  if (matchesPath(pathname, overviewHref)) {
    return {
      activeProgressView: null,
      activeSection: "overview",
      activeTeamView: null,
    };
  }

  if (matchesPath(pathname, teamHref)) {
    return {
      activeProgressView: null,
      activeSection: "team",
      activeTeamView: "overview",
    };
  }

  const teamViews: Array<{
    href: string;
    view: Exclude<MainlinePlayTeamView, "overview">;
  }> = [
    { href: appRoutes.mainlinePlayTeamPlan(playId), view: "plan" },
    { href: appRoutes.mainlinePlayTeamAnalysis(playId), view: "analysis" },
    { href: appRoutes.mainlinePlayTeamHistory(playId), view: "history" },
  ];
  const activeTeamView = teamViews.find(({ href }) =>
    matchesPath(pathname, href),
  )?.view;

  if (activeTeamView) {
    return {
      activeProgressView: null,
      activeSection: "team",
      activeTeamView,
    };
  }

  if (pathname.startsWith(`${teamHref}/`)) {
    return {
      activeProgressView: null,
      activeSection: "team",
      activeTeamView: null,
    };
  }

  if (matchesPath(pathname, progressHref)) {
    return {
      activeProgressView: "overview",
      activeSection: "progress",
      activeTeamView: null,
    };
  }

  const progressViews: Array<{
    href: string;
    view: Exclude<MainlinePlayProgressView, "overview">;
  }> = [
    { href: appRoutes.mainlinePlayProgressStory(playId), view: "story" },
    { href: appRoutes.mainlinePlayProgressPokedex(playId), view: "pokedex" },
    {
      href: appRoutes.mainlinePlayProgressCollectibles(playId),
      view: "collectibles",
    },
  ];
  const activeProgressView = progressViews.find(({ href }) =>
    matchesPath(pathname, href),
  )?.view;

  if (activeProgressView) {
    return {
      activeProgressView,
      activeSection: "progress",
      activeTeamView: null,
    };
  }

  if (pathname.startsWith(`${progressHref}/`)) {
    return {
      activeProgressView: null,
      activeSection: "progress",
      activeTeamView: null,
    };
  }

  if (matchesPath(pathname, appRoutes.mainlinePlayHistory(playId))) {
    return {
      activeProgressView: null,
      activeSection: "history",
      activeTeamView: null,
    };
  }

  if (matchesPath(pathname, appRoutes.mainlinePlaySettings(playId))) {
    return {
      activeProgressView: null,
      activeSection: "settings",
      activeTeamView: null,
    };
  }

  return {
    activeProgressView: null,
    activeSection: null,
    activeTeamView: null,
  };
};
