import { appRoutes } from "@/config/routes";
import type { AuthErrorCode } from "@/features/auth/auth-errors";
import { DEFAULT_AUTH_REDIRECT_PATH } from "@/features/auth/auth-redirects";

/* Where the Log in page sends you afterwards when nothing asked for somewhere else. */
export const LOGIN_DEFAULT_NEXT: string = DEFAULT_AUTH_REDIRECT_PATH;

/* Whether `next` is only the default, so links can leave it out. */
export const isDefaultAuthNext = (next: string) =>
  next === DEFAULT_AUTH_REDIRECT_PATH;

type AuthHrefOptions = {
  error?: AuthErrorCode | null;
  next: string;
};

/* A page of the sign-in family with its query: error first, then its own state and next. */
const buildAuthHref = (
  path: string,
  { error, next }: AuthHrefOptions,
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

  const query = params.toString();

  return query ? `${path}?${query}` : path;
};

/* The Log in page, keeping where to go afterwards and any error to show. */
export const getLogInHref = (options: AuthHrefOptions) =>
  buildAuthHref(appRoutes.login, options);

/* How far an email link has gone: sent once, or sent again from the sent state. */
export type AuthLinkSent = "again" | "once";

/* Reset your password: the form, or its sent state once the link is on its way. */
export const getForgotPasswordHref = ({
  sent,
  ...options
}: AuthHrefOptions & { sent?: AuthLinkSent | null }) =>
  buildAuthHref(appRoutes.forgotPassword, options, sent ? { sent } : undefined);

/* Choose a new password, where the reset link lands. */
export const getResetPasswordHref = (options: AuthHrefOptions) =>
  buildAuthHref(appRoutes.resetPassword, options);

/* The `sent` query of Reset your password, which sends an email link. */
export const parseAuthLinkSent = (value: unknown): AuthLinkSent | null =>
  value === "again" || value === "once" ? value : null;
