const DEFAULT_AUTH_REDIRECT_PATH = "/dashboard";
const AUTH_REDIRECT_BASE_URL = "https://voydex.local";

export function getSafeAuthRedirectPath(
  value: unknown,
  fallback = DEFAULT_AUTH_REDIRECT_PATH,
) {
  if (typeof value !== "string") {
    return fallback;
  }

  const candidate = value.trim();

  if (!candidate.startsWith("/") || candidate.startsWith("//")) {
    return fallback;
  }

  try {
    const url = new URL(candidate, AUTH_REDIRECT_BASE_URL);

    if (url.origin !== AUTH_REDIRECT_BASE_URL) {
      return fallback;
    }

    if (
      url.pathname !== DEFAULT_AUTH_REDIRECT_PATH &&
      !url.pathname.startsWith(`${DEFAULT_AUTH_REDIRECT_PATH}/`)
    ) {
      return fallback;
    }

    return `${url.pathname}${url.search}${url.hash}`;
  } catch {
    return fallback;
  }
}
