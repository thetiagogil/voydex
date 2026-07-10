import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";

import { getSupabasePublicConfig } from "@/platform/env/supabase-public-config";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import type { Database } from "@/shared/types/database.types";

export const refreshSupabaseProxySession = async (request: NextRequest) => {
  let response = NextResponse.next({ request });
  const { key, url } = getSupabasePublicConfig();
  const supabase = createServerClient<Database>(url, key, {
    cookies: {
      getAll: () => {
        return request.cookies.getAll();
      },
      setAll: (cookiesToSet, headersToSet = {}) => {
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

  return {
    isAuthenticated: claimsResult
      ? !claimsResult.error && Boolean(claimsResult.data?.claims?.sub)
      : false,
    response,
  };
};
