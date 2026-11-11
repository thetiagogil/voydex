import { appRoutes } from "@/config/routes";

export type MainlinePlaySection =
  | "history"
  | "overview"
  | "progress"
  | "settings"
  | "team";
export type MainlinePlayTeamView = "analysis" | "plan" | "roster";
export type MainlinePlayProgressView = "collectibles" | "pokedex" | "story";

export type MainlinePlayNavigationState = {
  activeProgressView: MainlinePlayProgressView | null;
  activeSection: MainlinePlaySection | null;
  activeTeamView: MainlinePlayTeamView | null;
};

/* A tab just picked: where it goes, and the page it was picked on. */
export type MainlinePlayPickedTab = { from: string; href: string };

/*
 * The path the tabs mark. While a picked tab's page is still on its way the
 * picked tab lights at once, instead of the old one staying lit until the
 * page arrives and then switching; a pick made on another page is stale.
 */
export const getMainlinePlayMarkedPath = (
  pathname: string,
  picked: MainlinePlayPickedTab | null,
) => (picked && picked.from === pathname ? picked.href : pathname);

/*
 * An address without its query and hash. Every page of a Play has the same
 * query (`?id=`), so the path alone says which tab is current; a picked
 * tab's href still carries its query.
 */
const pathOf = (href: string) => href.split(/[?#]/)[0] ?? href;

const matchesPath = (pathname: string, href: string) => {
  const path = pathOf(pathname);
  const target = pathOf(href);

  return path === target || path === `${target}/`;
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
      activeTeamView: "roster",
    };
  }

  const teamViews: Array<{
    href: string;
    view: Exclude<MainlinePlayTeamView, "roster">;
  }> = [
    { href: appRoutes.mainlinePlayTeamPlan(playId), view: "plan" },
    { href: appRoutes.mainlinePlayTeamAnalysis(playId), view: "analysis" },
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

  if (pathOf(pathname).startsWith(`${pathOf(teamHref)}/`)) {
    return {
      activeProgressView: null,
      activeSection: "team",
      activeTeamView: null,
    };
  }

  if (matchesPath(pathname, progressHref)) {
    return {
      activeProgressView: "story",
      activeSection: "progress",
      activeTeamView: null,
    };
  }

  const progressViews: Array<{
    href: string;
    view: MainlinePlayProgressView;
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

  if (pathOf(pathname).startsWith(`${pathOf(progressHref)}/`)) {
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
