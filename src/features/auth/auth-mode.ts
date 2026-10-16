import { DEFAULT_MODULE_KEY, modules } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import { setStartIntentParams, type StartIntent } from "@/config/start-intent";
import type { AuthErrorCode } from "@/features/auth/auth-errors";
import {
  DEFAULT_AUTH_REDIRECT_PATH,
  getSafeAuthRedirectPath,
} from "@/features/auth/auth-redirects";

export type AuthMode = "log-in" | "sign-up";

/* Where the Log in page sends you afterwards when nothing asked for somewhere else. */
export const LOGIN_DEFAULT_NEXT: string =
  modules[DEFAULT_MODULE_KEY].defaultHref;

/* Whether `next` is only the default, so links can leave it out. */
export const isDefaultAuthNext = (next: string) =>
  next === DEFAULT_AUTH_REDIRECT_PATH || next === LOGIN_DEFAULT_NEXT;

type AuthHrefOptions = {
  error?: AuthErrorCode | null;
  intent?: StartIntent | null;
  next: string;
};

/* A page of the sign-in family with its query: error first, then mode, next and the intent. */
const buildAuthHref = (
  path: string,
  { error, intent, next }: AuthHrefOptions,
  extra?: Record<string, string>,
) => {
  const params = new URLSearchParams();

  if (error) {
    params.set("error", error);
  }
  for (const [key, value] of Object.entries(extra ?? {})) {
    params.set(key, value);
  }
  if (!isDefaultAuthNext(next)) {
    params.set("next", next);
  }
  setStartIntentParams(params, intent);

  const query = params.toString();

  return query ? `${path}?${query}` : path;
};

/* The Log in page in one mode, keeping where to go afterwards, the intent and any error to show. */
export const getAuthPageHref = ({
  mode,
  ...options
}: AuthHrefOptions & { mode: AuthMode }) =>
  buildAuthHref(
    appRoutes.login,
    options,
    mode === "sign-up" ? { mode } : undefined,
  );

/* How far an email link has gone: sent once, or sent again from the sent state. */
export type AuthLinkSent = "again" | "once";

/* Reset your password: the form, or its sent state once the link is on its way. */
export const getForgotPasswordHref = ({
  sent,
  ...options
}: Omit<AuthHrefOptions, "intent"> & { sent?: AuthLinkSent | null }) =>
  buildAuthHref(appRoutes.forgotPassword, options, sent ? { sent } : undefined);

/* Choose a new password, where the reset link lands. */
export const getResetPasswordHref = (
  options: Omit<AuthHrefOptions, "intent">,
) => buildAuthHref(appRoutes.resetPassword, options);

/* Check your email, after a sign-up that still needs its email confirmed. */
export const getCheckEmailHref = ({
  resent = false,
  ...options
}: AuthHrefOptions & { resent?: boolean }) =>
  buildAuthHref(
    appRoutes.checkEmail,
    options,
    resent ? { sent: "again" } : undefined,
  );

/* The `sent` query of a page that sends an email link. */
export const parseAuthLinkSent = (value: unknown): AuthLinkSent | null =>
  value === "again" || value === "once" ? value : null;

/* Welcome, the first run after signing up, keeping where to go afterwards. */
export const getWelcomeHref = (next: string) =>
  buildAuthHref(appRoutes.welcome, { next });

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
