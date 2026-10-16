/*
 * The proxy copies a protected request's path and query into this request
 * header, so the protected layout can send you back there after Log in. The
 * proxy always overwrites it; the layout still treats it as untrusted.
 */
export const REQUEST_PATH_HEADER = "x-voydex-request-path";
