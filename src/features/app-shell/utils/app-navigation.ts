import { modules } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import { getStartPlayHref } from "@/config/start-intent";

export type AppNavigationLink = {
  /* Current only on its own page, not under it (Home, whose path holds every view). */
  exact?: boolean;
  href: string;
  label: string;
  /* The path the link stays current under; its own href when not given. */
  section?: string;
};

export type MainlineNavigationLink = AppNavigationLink & {
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

const isPlannerHref = (href: string) =>
  href === appRoutes.mainlinePlans ||
  href.startsWith(`${appRoutes.mainlinePlans}/`) ||
  href.startsWith(`${appRoutes.mainlinePlans}?`);

/*
 * v3's bar. Signed in, Mainline's views sit in the middle in the order the
 * module lists them (Home, Plays, Team Planner, Statistics, Collection as
 * each ships) and the Codex sits beside your account. Signed out, the bar
 * offers how Voydex works and the Codex.
 */
export const mainlineLinks: readonly MainlineNavigationLink[] = (
  modules.mainline.views as readonly MainlineView[]
).map((view) => {
  const isPlanner = isPlannerHref(view.href);

  return {
    exact: view.href === appRoutes.mainline,
    href: view.href,
    label: view.label,
    section: isPlanner ? appRoutes.mainlinePlans : undefined,
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
  { href: appRoutes.welcome, label: "Welcome" },
  ...mainlineLinks.filter((link) => youSectionHrefs.has(link.href)),
];

/* Where the V tile leads: Mainline Home once you're signed in, the front door otherwise. */
export const getBrandHref = (isSignedIn: boolean): string =>
  isSignedIn ? appRoutes.mainline : appRoutes.home;

export const startPlayLink: AppNavigationLink = {
  href: getStartPlayHref(),
  label: "Start a Play",
};

/* Signed out, the bar's one plain link; the Codex menu sits beside it. */
export const publicLinks: readonly AppNavigationLink[] = [
  { href: appRoutes.intro, label: "How it works" },
];

/* Signed-out phones: the menu leads with Start a Play, the Codex's pages last. */
export const publicMenuLinks: readonly AppNavigationLink[] = [
  startPlayLink,
  ...publicLinks,
];

export const isCurrentLink = (pathname: string, link: AppNavigationLink) => {
  const section = link.section ?? link.href;

  return (
    pathname === section || (!link.exact && pathname.startsWith(`${section}/`))
  );
};
