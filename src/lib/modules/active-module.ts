import { cookies } from "next/headers";

import {
  ACTIVE_MODULE_COOKIE_NAME,
  DEFAULT_MODULE_KEY,
  isModuleKey,
  modules,
} from "@/config/modules";

export async function getActiveModuleKeyFromCookies() {
  const cookieStore = await cookies();
  const cookieValue = cookieStore.get(ACTIVE_MODULE_COOKIE_NAME)?.value;

  return isModuleKey(cookieValue) ? cookieValue : DEFAULT_MODULE_KEY;
}

export async function getActiveModuleDefaultHrefFromCookies() {
  const activeModuleKey = await getActiveModuleKeyFromCookies();

  return modules[activeModuleKey].defaultHref;
}
