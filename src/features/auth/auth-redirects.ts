import { getModuleKeyForPathname } from "@/config/modules";
import { appRoutes, isProtectedRoute } from "@/config/routes";

export const DEFAULT_AUTH_REDIRECT_PATH: string = appRoutes.appEntry;

const AUTH_REDIRECT_BASE_URL = "https://voydex.local";

const isAllowedAuthRedirectPath = (pathname: string) => {
  return (
    pathname === appRoutes.appEntry ||
    /* Where a password reset link lands, through the callback. */
    pathname === appRoutes.resetPassword ||
    isProtectedRoute(pathname) ||
    Boolean(getModuleKeyForPathname(pathname))
  );
};

const parseSafeAuthRedirectPath = (value: string) => {
  const candidate = value.trim();
  if (!candidate.startsWith("/") || candidate.startsWith("//")) {
    return null;
  }
  try {
    const url = new URL(candidate, AUTH_REDIRECT_BASE_URL);
    if (url.origin !== AUTH_REDIRECT_BASE_URL) {
      return null;
    }
    if (!isAllowedAuthRedirectPath(url.pathname)) {
      return null;
    }
    return `${url.pathname}${url.search}${url.hash}`;
  } catch {
    return null;
  }
};

export const getSafeAuthRedirectPath = (
  value: unknown,
  fallback: string = DEFAULT_AUTH_REDIRECT_PATH,
) => {
  const safeFallback =
    parseSafeAuthRedirectPath(fallback) ?? DEFAULT_AUTH_REDIRECT_PATH;
  if (typeof value !== "string") {
    return safeFallback;
  }
  return parseSafeAuthRedirectPath(value) ?? safeFallback;
};
