import { NextResponse, type NextRequest } from "next/server";

import {
  ACTIVE_MODULE_COOKIE_NAME,
  getModuleKeyForPathname,
} from "@/config/modules";
import { appRoutes, isProtectedRoute } from "@/config/routes";
import { REQUEST_PATH_HEADER } from "@/features/app-shell/utils/request-path";
import { refreshSupabaseProxySession } from "@/platform/supabase/proxy-session";

const redirectWithSessionCookies = (
  url: URL,
  sessionResponse: NextResponse,
) => {
  const redirectResponse = NextResponse.redirect(url);
  sessionResponse.cookies.getAll().forEach((cookie) => {
    redirectResponse.cookies.set(cookie);
  });
  return redirectResponse;
};

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
  if (!isProtectedRoute(request.nextUrl.pathname)) {
    return syncActiveModuleCookie(
      NextResponse.next({ request }),
      routeModuleKey,
    );
  }
  const requestPath = `${request.nextUrl.pathname}${request.nextUrl.search}`;
  request.headers.set(REQUEST_PATH_HEADER, requestPath);
  const { isAuthenticated, response } =
    await refreshSupabaseProxySession(request);
  if (!isAuthenticated) {
    const loginUrl = request.nextUrl.clone();
    loginUrl.pathname = appRoutes.login;
    loginUrl.search = "";
    loginUrl.searchParams.set("next", requestPath);
    return syncActiveModuleCookie(
      redirectWithSessionCookies(loginUrl, response),
      routeModuleKey,
    );
  }
  return syncActiveModuleCookie(response, routeModuleKey);
};
