import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";

import { isProtectedRoute } from "@/constants/routes";
import { getSupabasePublicConfig } from "@/lib/env";
import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import type { Database } from "@/types/database.types";

function redirectWithSessionCookies(url: URL, sessionResponse: NextResponse) {
  const redirectResponse = NextResponse.redirect(url);

  sessionResponse.cookies.getAll().forEach((cookie) => {
    redirectResponse.cookies.set(cookie);
  });

  return redirectResponse;
}

export async function updateSession(request: NextRequest) {
  if (request.nextUrl.pathname === "/api/health") {
    return NextResponse.next({ request });
  }

  let response = NextResponse.next({ request });

  if (!isProtectedRoute(request.nextUrl.pathname)) {
    return response;
  }

  const { key, url } = getSupabasePublicConfig();

  const supabase = createServerClient<Database>(url, key, {
    cookies: {
      getAll() {
        return request.cookies.getAll();
      },
      setAll(cookiesToSet, headersToSet = {}) {
        cookiesToSet.forEach(({ name, value }) => {
          request.cookies.set(name, value);
        });

        response = NextResponse.next({ request });

        cookiesToSet.forEach(({ name, options, value }) => {
          response.cookies.set(name, value, options);
        });

        Object.entries(headersToSet).forEach(([header, value]) => {
          response.headers.set(header, value);
        });
      },
    },
  });

  const claimsResult = await getClaimsWithTimeout(supabase);
  const isAuthenticated = claimsResult
    ? !claimsResult.error && Boolean(claimsResult.data?.claims?.sub)
    : false;

  if (!isAuthenticated && isProtectedRoute(request.nextUrl.pathname)) {
    const loginUrl = request.nextUrl.clone();
    loginUrl.pathname = "/login";
    loginUrl.searchParams.set(
      "next",
      `${request.nextUrl.pathname}${request.nextUrl.search}`,
    );
    return redirectWithSessionCookies(loginUrl, response);
  }

  return response;
}
