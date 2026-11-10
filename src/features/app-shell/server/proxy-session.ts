import { NextResponse, type NextRequest } from "next/server";

import {
  ACTIVE_MODULE_COOKIE_NAME,
  getModuleKeyForPathname,
} from "@/config/modules";
import { appRoutes, isAppRoute } from "@/config/routes";
import { refreshSupabaseProxySession } from "@/platform/supabase/proxy-session";

const syncActiveModuleCookie = (
  response: NextResponse,
  moduleKey: string | null,
) => {
  if (!moduleKey) {
    return response;
  }
  response.cookies.set(ACTIVE_MODULE_COOKIE_NAME, moduleKey, {
    maxAge: 60 * 60 * 24 * 365,
    path: "/",
    sameSite: "lax",
  });
  return response;
};

export const updateAppSession = async (request: NextRequest) => {
  if (request.nextUrl.pathname === appRoutes.health) {
    return NextResponse.next({ request });
  }
  const routeModuleKey = getModuleKeyForPathname(request.nextUrl.pathname);
  if (routeModuleKey) {
    request.cookies.set(ACTIVE_MODULE_COOKIE_NAME, routeModuleKey);
  }
  if (!isAppRoute(request.nextUrl.pathname)) {
    return syncActiveModuleCookie(
      NextResponse.next({ request }),
      routeModuleKey,
    );
  }
  /*
   * The app opens for everyone; signing in is only for backups, so the
   * session is kept fresh here and nobody is sent to log in.
   */
  const { response } = await refreshSupabaseProxySession(request);
  return syncActiveModuleCookie(response, routeModuleKey);
};
