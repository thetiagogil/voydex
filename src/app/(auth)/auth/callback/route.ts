import { NextResponse, type NextRequest } from "next/server";
import {
  type AuthErrorCode,
  getAuthLinkErrorCode,
} from "@/features/auth/auth-errors";
import { getAuthPageHref } from "@/features/auth/auth-mode";
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
  const redirectToLogIn = (error: AuthErrorCode) =>
    NextResponse.redirect(
      new URL(
        getAuthPageHref({ error, mode: "log-in", next }),
        requestUrl.origin,
      ),
    );

  if (code) {
    const supabase = await createServerSupabaseClient();
    const { error } = await supabase.auth.exchangeCodeForSession(code);
    if (error) {
      return redirectToLogIn("link-expired");
    }
  } else {
    const linkError = getAuthLinkErrorCode(requestUrl.searchParams);
    if (linkError) {
      return redirectToLogIn(linkError);
    }
  }
  return NextResponse.redirect(new URL(next, requestUrl.origin));
};
