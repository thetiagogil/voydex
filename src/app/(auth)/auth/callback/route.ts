import { NextResponse, type NextRequest } from "next/server";

import { getActiveModuleDefaultHrefFromCookies } from "@/lib/modules/active-module";
import { getSafeAuthRedirectPath } from "@/lib/navigation";
import { createServerSupabaseClient } from "@/lib/supabase/server";

export async function GET(request: NextRequest) {
  const requestUrl = new URL(request.url);
  const code = requestUrl.searchParams.get("code");
  const defaultNext = await getActiveModuleDefaultHrefFromCookies();
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
}
