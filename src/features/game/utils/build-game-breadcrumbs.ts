import {
  getDashboardRoute,
  getGamesRoute,
  getGenerationsRoute,
} from "@/shared/constants/routes";
import type { Breadcrumb } from "@/shared/types";

export const buildGameBreadcrumbs = (
  generation: { id: number; name: string },
  game: { slug: string; name: string },
): Breadcrumb[] => [
  { label: "Dashboard", href: getDashboardRoute() },
  { label: generation.name, href: getGenerationsRoute(generation.id) },
  { label: game.name, href: getGamesRoute(game.slug), current: true },
];
