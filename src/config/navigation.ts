import { appRoutes } from "@/config/routes";

export const mainNavItems = [
  { href: appRoutes.dashboard, label: "Dashboard" },
  { href: appRoutes.codex, label: "Codex" },
] as const;

export type MainNavItem = (typeof mainNavItems)[number];
