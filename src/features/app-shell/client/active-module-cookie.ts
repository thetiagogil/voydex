import { ACTIVE_MODULE_COOKIE_NAME, type ModuleKey } from "@/config/modules";

export const setActiveModuleCookie = (moduleKey: ModuleKey) => {
  document.cookie = [
    `${ACTIVE_MODULE_COOKIE_NAME}=${encodeURIComponent(moduleKey)}`,
    "path=/",
    `max-age=${60 * 60 * 24 * 365}`,
    "samesite=lax",
  ].join("; ");
};
