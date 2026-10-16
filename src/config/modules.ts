import { productFamilies } from "@/config/product-families";
import { appRoutes } from "@/config/routes";

export const ACTIVE_MODULE_COOKIE_NAME = "voydex-active-module";

export const DEFAULT_MODULE_KEY = "codex";

export const modules = {
  codex: {
    basePath: appRoutes.codex,
    defaultHref: appRoutes.codexPokemon,
    description: "Browse Pokémon and games.",
    label: "Codex",
    requiresAuthentication: false,
    slug: "codex",
    views: [
      {
        description: "Every species and its forms",
        href: appRoutes.codexPokemon,
        label: "Pokémon",
        slug: "pokemon",
      },
      {
        description: "Every game and its Pokédexes",
        href: appRoutes.codexGames,
        label: "Games",
        slug: "games",
      },
    ],
  },
  mainline: {
    basePath: appRoutes.mainline,
    defaultHref: appRoutes.mainline,
    description: "Track teams, progress, and memories across each run.",
    label: productFamilies.mainline.workspaceLabel,
    productFamily: productFamilies.mainline,
    requiresAuthentication: true,
    slug: "mainline",
    /* The bars list these in order: Home, Plays, Team Planner, Statistics, Collection. */
    views: [
      {
        href: appRoutes.mainline,
        label: "Home",
        slug: "home",
      },
      {
        href: appRoutes.mainlinePlays,
        label: "Plays",
        slug: "plays",
      },
      {
        href: appRoutes.mainlinePlanNew(),
        label: "Team Planner",
        slug: "planner",
      },
      {
        href: appRoutes.mainlineStats,
        label: "Statistics",
        slug: "stats",
      },
      {
        href: appRoutes.mainlineCollection,
        label: "Collection",
        slug: "collection",
      },
    ],
  },
} as const;

export type ModuleKey = keyof typeof modules;

export const moduleKeys = Object.keys(modules) as ModuleKey[];

export const isModuleKey = (value: unknown): value is ModuleKey => {
  return typeof value === "string" && moduleKeys.includes(value as ModuleKey);
};

export const getModuleKeyForPathname = (pathname: string) => {
  return (
    moduleKeys.find((moduleKey) => {
      const basePath = modules[moduleKey].basePath;
      return pathname === basePath || pathname.startsWith(`${basePath}/`);
    }) ?? null
  );
};
