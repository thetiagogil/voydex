import { modules, type ModuleKey } from "@/config/modules";
import { appRoutes } from "@/config/routes";

type ModuleNavigationHrefOptions = {
  isAuthenticated: boolean;
  moduleKey: ModuleKey;
  targetHref?: string;
};

export const moduleRequiresLogin = (
  moduleKey: ModuleKey,
  isAuthenticated: boolean,
) => {
  return modules[moduleKey].requiresAuthentication && !isAuthenticated;
};

export const getLoginHrefForNext = (next: string) => {
  const params = new URLSearchParams({ next });
  return `${appRoutes.login}?${params.toString()}`;
};

export const getModuleNavigationHref = ({
  isAuthenticated,
  moduleKey,
  targetHref = modules[moduleKey].defaultHref,
}: ModuleNavigationHrefOptions) => {
  if (moduleRequiresLogin(moduleKey, isAuthenticated)) {
    return getLoginHrefForNext(targetHref);
  }
  return targetHref;
};
