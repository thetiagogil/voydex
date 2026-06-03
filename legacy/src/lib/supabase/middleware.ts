import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";
import { ENV_VARS, hasSupabaseClientEnv } from "./env";

const SUPABASE_URL = ENV_VARS.SUPABASE_URL;
const SUPABASE_KEY = ENV_VARS.SUPABASE_PUBLISHABLE_KEY;

const PUBLIC_ROUTES = new Set(["/", "/intro", "/pokedex"]);
const PUBLIC_ROUTE_PREFIXES = ["/auth", "/api/auth", "/api/reference"];

const isPublicRoute = (pathname: string) => {
  return (
    PUBLIC_ROUTES.has(pathname) ||
    PUBLIC_ROUTE_PREFIXES.some(
      (prefix) => pathname === prefix || pathname.startsWith(`${prefix}/`),
    )
  );
};

const unauthorizedResponse = (request: NextRequest) => {
  if (request.nextUrl.pathname.startsWith("/api")) {
    return NextResponse.json({ message: "Unauthorized" }, { status: 401 });
  }

  const url = request.nextUrl.clone();
  url.pathname = "/auth/login";
  return NextResponse.redirect(url);
};

export const updateSession = async (request: NextRequest) => {
  let supabaseResponse = NextResponse.next({ request });
  const pathname = request.nextUrl.pathname;

  // Health check bypasses auth so it's always reachable
  if (pathname === "/api/health") return supabaseResponse;

  if (!hasSupabaseClientEnv) {
    if (pathname.startsWith("/api")) {
      return NextResponse.json(
        { message: "Service unavailable" },
        { status: 503 },
      );
    }

    if (pathname.startsWith("/auth") || !isPublicRoute(pathname)) {
      const url = request.nextUrl.clone();
      url.pathname = "/";
      return NextResponse.redirect(url);
    }

    return supabaseResponse;
  }

  const supabase = createServerClient(SUPABASE_URL!, SUPABASE_KEY!, {
    cookies: {
      getAll() {
        return request.cookies.getAll();
      },
      setAll(cookiesToSet) {
        cookiesToSet.forEach(({ name, value }) =>
          request.cookies.set(name, value),
        );
        supabaseResponse = NextResponse.next({ request });
        cookiesToSet.forEach(({ name, value, options }) =>
          supabaseResponse.cookies.set(name, value, options),
        );
      },
    },
  });

  // IMPORTANT: Do not run code between createServerClient and getClaims().
  // Removing getClaims() with SSR may cause random user logouts.
  let user = null;
  try {
    const { data } = await supabase.auth.getClaims();
    user = data?.claims ?? null;
  } catch {
    // Supabase unreachable (project paused / network error)
    if (pathname.startsWith("/api")) {
      return NextResponse.json(
        { message: "Service unavailable" },
        { status: 503 },
      );
    }
    if (pathname.startsWith("/auth")) {
      const url = request.nextUrl.clone();
      url.pathname = "/";
      return NextResponse.redirect(url);
    }
    return supabaseResponse;
  }

  if (!user && !isPublicRoute(pathname)) {
    return unauthorizedResponse(request);
  }

  // IMPORTANT: Always return supabaseResponse as-is to keep cookies in sync.
  return supabaseResponse;
};
