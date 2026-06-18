import { cookies } from "next/headers";

import {
  ACTIVE_MODULE_COOKIE_NAME,
  DEFAULT_MODULE_KEY,
  isModuleKey,
} from "@/config/modules";

export async function getActiveModuleKeyFromCookies() {
  const cookieStore = await cookies();
  const cookieValue = cookieStore.get(ACTIVE_MODULE_COOKIE_NAME)?.value;

  return isModuleKey(cookieValue) ? cookieValue : DEFAULT_MODULE_KEY;
}
