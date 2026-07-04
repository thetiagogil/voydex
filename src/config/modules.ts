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
        href: appRoutes.codexPokemon,
        label: "Pokémon",
        slug: "pokemon",
      },
      {
        href: appRoutes.codexGames,
        label: "Games",
        slug: "games",
      },
    ],
  },
  mainline: {
    basePath: appRoutes.mainline,
    defaultHref: appRoutes.mainlineDashboard,
    description: "Track teams, progress, and memories across each run.",
    label: productFamilies.mainline.workspaceLabel,
    productFamily: productFamilies.mainline,
    requiresAuthentication: true,
    slug: "mainline",
    views: [
      {
        href: appRoutes.mainlineDashboard,
        label: "Dashboard",
        slug: "dashboard",
      },
      {
        href: appRoutes.mainlinePlays,
        label: "Plays",
        slug: "plays",
      },
    ],
  },
} as const;

export type ModuleKey = keyof typeof modules;
export type AppModule = (typeof modules)[ModuleKey];

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

export const getActiveModuleKey = ({
  cookieValue,
  pathname,
}: {
  cookieValue?: string | null;
  pathname?: string | null;
}) => {
  const pathnameModuleKey = pathname ? getModuleKeyForPathname(pathname) : null;
  if (pathnameModuleKey) {
    return pathnameModuleKey;
  }
  return isModuleKey(cookieValue) ? cookieValue : DEFAULT_MODULE_KEY;
};
