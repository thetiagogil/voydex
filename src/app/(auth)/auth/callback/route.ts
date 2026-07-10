import { NextResponse, type NextRequest } from "next/server";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { getAuthDefaultRouteFromCookies } from "@/features/auth/server/auth-default-route";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export const GET = async (request: NextRequest) => {
  const requestUrl = new URL(request.url);
  const code = requestUrl.searchParams.get("code");
  const defaultNext = await getAuthDefaultRouteFromCookies();
  const next = getSafeAuthRedirectPath(
    requestUrl.searchParams.get("next"),
    defaultNext,
  );
  if (code) {
    const supabase = await createServerSupabaseClient();
    const { error } = await supabase.auth.exchangeCodeForSession(code);
    if (error) {
      const loginUrl = new URL("/login", requestUrl.origin);
      loginUrl.searchParams.set("error", error.message);
      loginUrl.searchParams.set("next", next);
      return NextResponse.redirect(loginUrl);
    }
  }
  return NextResponse.redirect(new URL(next, requestUrl.origin));
};
