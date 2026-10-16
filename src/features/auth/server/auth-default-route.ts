import { cookies } from "next/headers";

import {
  ACTIVE_MODULE_COOKIE_NAME,
  DEFAULT_MODULE_KEY,
  isModuleKey,
  modules,
} from "@/config/modules";

/* Where logging in and /app land: the module you were last in. */
export const getAuthDefaultRouteFromCookies = async () => {
  const cookieStore = await cookies();
  const cookieValue = cookieStore.get(ACTIVE_MODULE_COOKIE_NAME)?.value;
  const moduleKey = isModuleKey(cookieValue) ? cookieValue : DEFAULT_MODULE_KEY;

  return modules[moduleKey].defaultHref;
};
