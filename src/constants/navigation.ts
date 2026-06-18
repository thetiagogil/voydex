import { appRoutes } from "@/constants/routes";

export const mainNavItems = [
  { href: appRoutes.dashboard, label: "Dashboard" },
] as const;

export type MainNavItem = (typeof mainNavItems)[number];
