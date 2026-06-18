import { appRoutes } from "@/config/routes";
import { productFamilies } from "@/config/product-families";

export const appModules = {
  codex: {
    href: appRoutes.codex,
    label: "Codex",
    slug: "codex",
  },
  dashboard: {
    href: appRoutes.dashboard,
    label: "Dashboard",
    slug: "dashboard",
  },
  mainline: {
    href: appRoutes.dashboard,
    label: productFamilies.mainline.workspaceLabel,
    productFamily: productFamilies.mainline,
    slug: "mainline",
  },
} as const;

export type AppModuleKey = keyof typeof appModules;
export type AppModule = (typeof appModules)[AppModuleKey];
