import { describe, expect, it } from "vitest";

import {
  getAuthPageHref,
  getLoginRedirectHref,
  LOGIN_DEFAULT_NEXT,
} from "./auth-mode";
import { DEFAULT_AUTH_REDIRECT_PATH } from "./auth-redirects";

describe("auth page links", () => {
  it("links Log in without a query by default", () => {
    expect(
      getAuthPageHref({ mode: "log-in", next: DEFAULT_AUTH_REDIRECT_PATH }),
    ).toBe("/login");
  });

  it("leaves out the Log in page's own default destination", () => {
    expect(getAuthPageHref({ mode: "sign-up", next: LOGIN_DEFAULT_NEXT })).toBe(
      "/login?mode=sign-up",
    );
  });

  it("keeps the sign-up mode and where to go afterwards", () => {
    expect(getAuthPageHref({ mode: "sign-up", next: "/mainline/plays" })).toBe(
      "/login?mode=sign-up&next=%2Fmainline%2Fplays",
    );
  });

  it("puts an error code first", () => {
    expect(
      getAuthPageHref({
        error: "password-mismatch",
        mode: "sign-up",
        next: DEFAULT_AUTH_REDIRECT_PATH,
      }),
    ).toBe("/login?error=password-mismatch&mode=sign-up");
  });
});

describe("protected page redirect", () => {
  it("sends you to Log in with the page you asked for", () => {
    expect(getLoginRedirectHref("/mainline/plays/abc/team?view=plan")).toBe(
      "/login?next=%2Fmainline%2Fplays%2Fabc%2Fteam%3Fview%3Dplan",
    );
    expect(getLoginRedirectHref("/settings")).toBe("/login?next=%2Fsettings");
  });

  it("leaves next out when there is no path or it is the default", () => {
    expect(getLoginRedirectHref(null)).toBe("/login");
    expect(getLoginRedirectHref(LOGIN_DEFAULT_NEXT)).toBe("/login");
  });

  it("never sends you somewhere unsafe", () => {
    expect(getLoginRedirectHref("https://example.com/mainline")).toBe("/login");
    expect(getLoginRedirectHref("//example.com/mainline")).toBe("/login");
    expect(getLoginRedirectHref("/not-a-module")).toBe("/login");
  });
});
