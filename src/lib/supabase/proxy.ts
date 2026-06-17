import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";

import { getSupabasePublicConfig } from "@/lib/env";
import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import type { Database } from "@/types/database.types";

const protectedRoutePrefixes = [
  "/dashboard",
  "/plays",
  "/plans",
  "/pokedex",
  "/collection",
  "/stats",
  "/generations",
  "/games",
  "/settings",
];

function isProtectedRoute(pathname: string) {
  return protectedRoutePrefixes.some((prefix) => pathname.startsWith(prefix));
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
      setAll(cookiesToSet, headersToSet) {
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
    loginUrl.searchParams.set("next", request.nextUrl.pathname);
    return NextResponse.redirect(loginUrl);
  }

  return response;
}
