import { productFamilies } from "@/config/product-families";
import { appRoutes } from "@/config/routes";

export const ACTIVE_MODULE_COOKIE_NAME = "voydex-active-module";

export const DEFAULT_MODULE_KEY = "mainline";

export const moduleIconKeys = ["book-open", "map"] as const;

export type ModuleIconKey = (typeof moduleIconKeys)[number];

export const modules = {
  mainline: {
    basePath: appRoutes.mainline,
    defaultHref: appRoutes.mainlineDashboard,
    description: "Track teams, progress, and memories across each run.",
    iconKey: "map",
    label: productFamilies.mainline.workspaceLabel,
    productFamily: productFamilies.mainline,
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
  codex: {
    basePath: appRoutes.codex,
    defaultHref: appRoutes.codexPokemon,
    description: "Browse Pokemon, games, and generations.",
    iconKey: "book-open",
    label: "Codex",
    slug: "codex",
    views: [
      {
        href: appRoutes.codexPokemon,
        label: "Pokemon",
        slug: "pokemon",
      },
      {
        href: appRoutes.codexGames,
        label: "Games",
        slug: "games",
      },
      {
        href: appRoutes.codexGenerations,
        label: "Generations",
        slug: "generations",
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
