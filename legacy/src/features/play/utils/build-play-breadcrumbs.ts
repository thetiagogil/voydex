import {
  getDashboardRoute,
  getGamesRoute,
  getGenerationsRoute,
  getPlaysPokemonTeamRoute,
  getPlaysRoute,
} from "@/shared/constants/routes";
import type { Breadcrumb } from "@/shared/types";

export const buildPlayBreadcrumbs = (
  generation: { id: number; name: string },
  game: { slug: string; name: string },
  play: { id: string; name: string },
): Breadcrumb[] => [
  { label: "Dashboard", href: getDashboardRoute() },
  { label: generation.name, href: getGenerationsRoute(generation.id) },
  { label: game.name, href: getGamesRoute(game.slug) },
  { label: play.name, href: getPlaysRoute(play.id), current: true },
];

export const buildPlayPokemonTeamBreadcrumbs = (
  generation: { id: number; name: string },
  game: { slug: string; name: string },
  play: { id: string; name: string },
): Breadcrumb[] => [
  { label: "Dashboard", href: getDashboardRoute() },
  { label: generation.name, href: getGenerationsRoute(generation.id) },
  { label: game.name, href: getGamesRoute(game.slug) },
  { label: play.name, href: getPlaysRoute(play.id) },
  {
    label: "Pokémon Team",
    href: getPlaysPokemonTeamRoute(play.id),
    current: true,
  },
];
