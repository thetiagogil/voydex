import { modules } from "@/config/modules";
import { appRoutes } from "@/config/routes";

export type AppNavigationLink = {
  /* Current only on its own page, not under it (Home, whose path holds every view). */
  exact?: boolean;
  href: string;
  label: string;
  /* The path the link stays current under; its own href when not given. */
  section?: string;
};

export type MainlineNavigationLink = AppNavigationLink & {
  /* Every path the view stays current under, when its pages don't share one. */
  sections?: readonly string[];
  /* The bottom bar's shorter name, such as "Planner" for Team Planner. */
  shortLabel: string;
  slug: string;
};

type MainlineView = { href: string; label: string; slug: string };

/* Views that live under You on phones instead of in the bottom bar (v3). */
const youSectionHrefs = new Set<string>([
  appRoutes.mainlineCollection,
  appRoutes.mainlineStats,
]);

/* The Team Planner's two pages: the planner itself and My Plans. */
const plannerSections = [appRoutes.mainlinePlanNew(), appRoutes.mainlinePlans];

/*
 * The app's bar: Mainline's views sit in the middle in the order the module
 * lists them (Home, Plays, Team Planner, Statistics, Collection as each
 * ships) and the Codex sits beside your account.
 */
export const mainlineLinks: readonly MainlineNavigationLink[] = (
  modules.mainline.views as readonly MainlineView[]
).map((view) => {
  const isPlanner = view.slug === "planner";

  return {
    exact: view.href === appRoutes.mainline,
    href: view.href,
    label: view.label,
    sections: isPlanner ? plannerSections : undefined,
    shortLabel: isPlanner ? "Planner" : view.label,
    slug: view.slug,
  };
});

/*
 * Phones and tablets (v3 `.tabbar`): Home, Plays and the Planner, then the
 * Codex and You. Statistics and Collection are reached from You.
 */
export const tabBarLinks: readonly MainlineNavigationLink[] =
  mainlineLinks.filter((link) => !youSectionHrefs.has(link.href));

export const codexLink: AppNavigationLink = {
  href: modules.codex.defaultHref,
  label: modules.codex.label,
  section: modules.codex.basePath,
};

export type CodexViewLink = AppNavigationLink & {
  description: string;
  slug: (typeof modules.codex.views)[number]["slug"];
};

/* The Codex's pages, which its menu offers on every bar (Pokémon, Games). */
export const codexViewLinks: readonly CodexViewLink[] = modules.codex.views.map(
  (view) => ({
    description: view.description,
    href: view.href,
    label: view.label,
    slug: view.slug,
  }),
);

/* One page in a bar item's menu. */
export type BarMenuView = AppNavigationLink & {
  description: string;
  icon: "favourites" | "games" | "planner" | "plans" | "pokemon";
};

/* One item of the app's bars: a link, or a name that opens its pages. */
export type AppBarItem = AppNavigationLink & {
  /* Every path the item stays current under, when its pages don't share one. */
  sections?: readonly string[];
  views?: readonly BarMenuView[];
};

const codexViewIcons = { games: "games", pokemon: "pokemon" } as const;

const barMenuViews: Partial<Record<string, readonly BarMenuView[]>> = {
  collection: [
    {
      description: "Every Pokémon you've had on a team",
      href: appRoutes.mainlineCollection,
      icon: "pokemon",
      label: "Pokémon",
    },
    {
      description: "The Pokémon you hearted in the Codex",
      href: appRoutes.mainlineCollectionFavourites,
      icon: "favourites",
      label: "Favourites",
    },
    {
      description: "The games you've played",
      href: appRoutes.mainlineCollectionGames,
      icon: "games",
      label: "Games",
    },
  ],
  planner: [
    {
      description: "Build a team for any game",
      href: appRoutes.mainlinePlanNew(),
      icon: "planner",
      label: "Team Planner",
    },
    {
      description: "The teams you saved",
      href: appRoutes.mainlinePlans,
      icon: "plans",
      label: "My Plans",
    },
  ],
};

/*
 * The app's top bar, in order: Mainline's views, then the Codex. Team
 * Planner, Collection and the Codex open a menu of their pages, so each is
 * one step away; the rest are plain links.
 */
export const appBarItems: readonly AppBarItem[] = [
  ...mainlineLinks.map((link): AppBarItem => ({
    ...link,
    views: barMenuViews[link.slug],
  })),
  {
    ...codexLink,
    views: codexViewLinks.map((view) => ({
      ...view,
      icon: codexViewIcons[view.slug],
    })),
  },
];

/* Whether the bar item is the one you are in. */
export const isCurrentBarItem = (pathname: string, item: AppBarItem) =>
  item.sections
    ? item.sections.some((section) =>
        isCurrentLink(pathname, { href: section, label: item.label }),
      )
    : isCurrentLink(pathname, item);

/*
 * Whether a menu's page is the one you are on. Pages that share a path are
 * told apart by their `view` (`/app/collection?view=games`).
 */
export const isCurrentBarView = (
  pathname: string,
  view: string | null,
  link: AppNavigationLink,
) => {
  const [path, query = ""] = link.href.split("?");

  return (
    isCurrentLink(pathname, { ...link, href: path }) &&
    (new URLSearchParams(query).get("view") ?? "") === (view ?? "")
  );
};

/* Your rules and tags, from the You menu (and the You page on phones). */
export const libraryLink: AppNavigationLink = {
  href: appRoutes.mainlineLibrary,
  label: "Library",
};

export const accountLink: AppNavigationLink = {
  href: appRoutes.settings,
  label: "Settings",
};

/* The You tab stays current on the pages about you: You, Settings, Library, Statistics and Collection. */
export const youLinks: readonly AppNavigationLink[] = [
  { href: appRoutes.you, label: "You" },
  accountLink,
  libraryLink,
  ...mainlineLinks.filter((link) => youSectionHrefs.has(link.href)),
];

/* The site's bar: the front page's parts, which scroll to them. */
export const publicLinks: readonly AppNavigationLink[] = [
  { href: appRoutes.howItWorks, label: "How it works" },
  { href: appRoutes.install, label: "Install" },
];

export const isCurrentLink = (pathname: string, link: AppNavigationLink) => {
  const section = link.section ?? link.href;

  return (
    pathname === section || (!link.exact && pathname.startsWith(`${section}/`))
  );
};
