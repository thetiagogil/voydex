import { productFamilies } from "@/config/product-families";
import { appRoutes } from "@/config/routes";

export const ACTIVE_MODULE_COOKIE_NAME = "voydex-active-module";
export const DEFAULT_MODULE_KEY = "mainline";

export const modules = {
  mainline: {
    basePath: appRoutes.mainline,
    defaultHref: appRoutes.mainlineDashboard,
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

export function isModuleKey(value: unknown): value is ModuleKey {
  return typeof value === "string" && moduleKeys.includes(value as ModuleKey);
}

export function getModuleKeyForPathname(pathname: string) {
  return (
    moduleKeys.find((moduleKey) => {
      const basePath = modules[moduleKey].basePath;

      return pathname === basePath || pathname.startsWith(`${basePath}/`);
    }) ?? null
  );
}

export function getActiveModuleKey({
  cookieValue,
  pathname,
}: {
  cookieValue?: string | null;
  pathname?: string | null;
}) {
  const pathnameModuleKey = pathname ? getModuleKeyForPathname(pathname) : null;

  if (pathnameModuleKey) {
    return pathnameModuleKey;
  }

  return isModuleKey(cookieValue) ? cookieValue : DEFAULT_MODULE_KEY;
}
