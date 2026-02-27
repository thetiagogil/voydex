import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";
import { ENV_VARS } from "../constants/env";
import { hasEnvVars } from "../utils/env";

const SUPABASE_URL = ENV_VARS.SUPABASE_URL;
const SUPABASE_KEY = ENV_VARS.SUPABASE_PUBLISHABLE_KEY;

export const updateSession = async (request: NextRequest) => {
  let supabaseResponse = NextResponse.next({ request });

  if (!hasEnvVars) return supabaseResponse;

  // Health check bypasses auth so it's always reachable
  if (request.nextUrl.pathname === "/api/health") return supabaseResponse;

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
    if (request.nextUrl.pathname.startsWith("/api")) {
      return NextResponse.json(
        { message: "Service unavailable" },
        { status: 503 },
      );
    }
    if (request.nextUrl.pathname !== "/") {
      const url = request.nextUrl.clone();
      url.pathname = "/";
      return NextResponse.redirect(url);
    }
    return supabaseResponse;
  }

  if (
    request.nextUrl.pathname !== "/" &&
    !user &&
    !request.nextUrl.pathname.startsWith("/login") &&
    !request.nextUrl.pathname.startsWith("/auth")
  ) {
    const url = request.nextUrl.clone();
    url.pathname = "/auth/login";
    return NextResponse.redirect(url);
  }

  // IMPORTANT: Always return supabaseResponse as-is to keep cookies in sync.
  return supabaseResponse;
};
