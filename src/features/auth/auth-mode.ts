import { DEFAULT_MODULE_KEY, modules } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import type { AuthErrorCode } from "@/features/auth/auth-errors";
import {
  DEFAULT_AUTH_REDIRECT_PATH,
  getSafeAuthRedirectPath,
} from "@/features/auth/auth-redirects";

export type AuthMode = "log-in" | "sign-up";

/* Where the Log in page sends you afterwards when nothing asked for somewhere else. */
export const LOGIN_DEFAULT_NEXT: string =
  modules[DEFAULT_MODULE_KEY].defaultHref;

const isDefaultNext = (next: string) =>
  next === DEFAULT_AUTH_REDIRECT_PATH || next === LOGIN_DEFAULT_NEXT;

/* The Log in page in one mode, keeping where to go afterwards and any error to show. */
export const getAuthPageHref = ({
  error,
  mode,
  next,
}: {
  error?: AuthErrorCode;
  mode: AuthMode;
  next: string;
}) => {
  const params = new URLSearchParams();

  if (error) {
    params.set("error", error);
  }
  if (mode === "sign-up") {
    params.set("mode", mode);
  }
  if (!isDefaultNext(next)) {
    params.set("next", next);
  }

  const query = params.toString();

  return query ? `${appRoutes.login}?${query}` : appRoutes.login;
};

/*
 * Where a protected page sends you when you aren't signed in: Log in, then
 * back to the page you asked for. A path that isn't safe falls back to the
 * Log in page's own default.
 */
export const getLoginRedirectHref = (requestPath: string | null) =>
  getAuthPageHref({
    mode: "log-in",
    next: getSafeAuthRedirectPath(requestPath, LOGIN_DEFAULT_NEXT),
  });
