/*
 * Why Log in, Sign up or a password reset didn't work, as a fixed code in the
 * page's `error` query. The page shows its own copy for each code and never
 * the query's text, so a link can't make the page say something Voydex
 * didn't write.
 */
export const authErrorCodes = [
  "credentials",
  "email-invalid",
  "email-not-confirmed",
  "email-taken",
  "invalid-details",
  "link-expired",
  "missing-fields",
  "rate-limited",
  "reauthentication-needed",
  "reset-link-expired",
  "same-password",
  "unknown",
  "weak-password",
] as const;

export type AuthErrorCode = (typeof authErrorCodes)[number];

const authErrorCodeSet = new Set<string>(authErrorCodes);

/* The code in a page's `error` query, or null for anything else. */
export const parseAuthErrorCode = (value: unknown): AuthErrorCode | null =>
  typeof value === "string" && authErrorCodeSet.has(value)
    ? (value as AuthErrorCode)
    : null;

/* Supabase Auth's error codes, by the reason the page gives. */
const supabaseErrorCodes = new Map<string, AuthErrorCode>([
  ["email_address_invalid", "email-invalid"],
  ["email_exists", "email-taken"],
  ["email_not_confirmed", "email-not-confirmed"],
  ["invalid_credentials", "credentials"],
  ["over_email_send_rate_limit", "rate-limited"],
  ["over_request_rate_limit", "rate-limited"],
  ["reauthentication_needed", "reauthentication-needed"],
  ["same_password", "same-password"],
  ["user_already_exists", "email-taken"],
  /* Generic (a malformed email, a password over 72 characters): no field named. */
  ["validation_failed", "invalid-details"],
  ["weak_password", "weak-password"],
]);

/* The page's code for a Supabase Auth error; anything unexpected is `unknown`. */
export const getAuthErrorCode = (
  supabaseCode: string | null | undefined,
): AuthErrorCode =>
  (supabaseCode ? supabaseErrorCodes.get(supabaseCode) : undefined) ??
  "unknown";

/* Supabase Auth's codes for an email link that expired or was already used. */
const expiredLinkCodes = new Set([
  "flow_state_expired",
  "flow_state_not_found",
  "otp_expired",
]);

/*
 * The page's code when an email link comes back to the callback with an
 * `error` or `error_code` instead of a `code`: an expired or used link says
 * so, anything else is `unknown`. Null when the link carries no error.
 */
export const getAuthLinkErrorCode = (
  params: URLSearchParams,
): AuthErrorCode | null => {
  const errorCode = params.get("error_code");

  if (!errorCode && !params.get("error")) {
    return null;
  }

  return errorCode && expiredLinkCodes.has(errorCode)
    ? "link-expired"
    : "unknown";
};

/* Where an error's link leads: Log in, or asking for a reset link. */
export type AuthErrorLinkTarget = "forgot-password" | "log-in";

export type AuthErrorCopy = {
  description: string;
  /* A way forward after the description, such as "reset your password". */
  link?: {
    label: string;
    target: AuthErrorLinkTarget;
    /* Punctuation that closes the sentence after the link. */
    trailing?: string;
  };
  title: string;
};

/* v3's fixed copy for each reason. */
export const authErrorCopy: Record<AuthErrorCode, AuthErrorCopy> = {
  credentials: {
    description: "The email or password isn't right. Try again, or",
    link: {
      label: "reset your password",
      target: "forgot-password",
      trailing: ".",
    },
    title: "That didn't work",
  },
  "email-invalid": {
    description: "Check the email for a typo and try again.",
    title: "That email doesn't look right",
  },
  "email-not-confirmed": {
    description: "Open the link we sent to your email, then log in.",
    title: "Confirm your email first",
  },
  "email-taken": {
    description: "Log in instead, or use a different email.",
    link: { label: "Log in with this email", target: "log-in" },
    title: "That email already has an account",
  },
  "invalid-details": {
    description:
      "Something in the email or password wasn't accepted. Check both and try again.",
    title: "Check your details",
  },
  "link-expired": {
    description:
      "It may have expired or been used already. Log in to carry on.",
    title: "That link didn't work",
  },
  "missing-fields": {
    description: "Fill in every field to carry on.",
    title: "Something's missing",
  },
  "rate-limited": {
    description: "Wait a minute, then try again.",
    title: "Too many tries",
  },
  "reauthentication-needed": {
    description: "Log out, log back in, then change your password.",
    title: "Log in again first",
  },
  "reset-link-expired": {
    description:
      "It may have expired or been used already. Ask for a new one below.",
    title: "That link didn't work",
  },
  "same-password": {
    description: "Choose a different one.",
    title: "That's your current password",
  },
  unknown: {
    description: "Something went wrong on our side. Try again in a moment.",
    title: "That didn't work",
  },
  "weak-password": {
    description: "Use at least 6 characters.",
    title: "That password is too short",
  },
};
