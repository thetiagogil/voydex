import { modules } from "@/config/modules";
import { appRoutes } from "@/config/routes";

export type AppNavigationLink = {
  href: string;
  label: string;
  /* The path the link stays current under; its own href when not given. */
  section?: string;
};

/*
 * v3's bar. Signed in, Mainline's views sit in the middle (v3 also draws
 * Home, Team Planner, Statistics and Collection; each joins once its view
 * ships in the module config) and the Codex sits beside your account. Signed
 * out, the bar offers how Voydex works and the Codex.
 */
export const mainlineLinks = modules.mainline.views.map((view) => ({
  href: view.href,
  label: view.label,
  slug: view.slug,
}));

export const codexLink: AppNavigationLink = {
  href: modules.codex.defaultHref,
  label: modules.codex.label,
  section: modules.codex.basePath,
};

export const accountLink: AppNavigationLink = {
  href: appRoutes.settings,
  label: "Settings",
};

export const publicLinks: readonly AppNavigationLink[] = [
  { href: appRoutes.intro, label: "How it works" },
  codexLink,
];

/* Signed-out phones: the menu leads with Start a Play, which begins at Sign up. */
export const publicMenuLinks: readonly AppNavigationLink[] = [
  { href: `${appRoutes.login}?mode=sign-up`, label: "Start a Play" },
  ...publicLinks,
];

export const isCurrentLink = (pathname: string, link: AppNavigationLink) => {
  const section = link.section ?? link.href;

  return pathname === section || pathname.startsWith(`${section}/`);
};
