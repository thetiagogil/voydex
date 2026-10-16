import { describe, expect, it } from "vitest";

import {
  getAuthPageHref,
  getCheckEmailHref,
  getForgotPasswordHref,
  getLoginRedirectHref,
  getResetPasswordHref,
  getWelcomeHref,
  LOGIN_DEFAULT_NEXT,
  parseAuthLinkSent,
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
        error: "weak-password",
        mode: "sign-up",
        next: DEFAULT_AUTH_REDIRECT_PATH,
      }),
    ).toBe("/login?error=weak-password&mode=sign-up");
  });

  it("carries the pick from Start a Play last", () => {
    expect(
      getAuthPageHref({
        intent: { gameSlug: "sword", partnerSpeciesSlug: "grookey" },
        mode: "sign-up",
        next: "/mainline/plays",
      }),
    ).toBe(
      "/login?mode=sign-up&next=%2Fmainline%2Fplays&game=sword&partner=grookey",
    );
    expect(
      getAuthPageHref({
        intent: { gameSlug: "yellow" },
        mode: "log-in",
        next: LOGIN_DEFAULT_NEXT,
      }),
    ).toBe("/login?game=yellow");
  });
});

describe("recovery and first-run links", () => {
  it("links Reset your password and its sent states", () => {
    expect(getForgotPasswordHref({ next: LOGIN_DEFAULT_NEXT })).toBe(
      "/forgot-password",
    );
    expect(getForgotPasswordHref({ next: "/settings", sent: "once" })).toBe(
      "/forgot-password?sent=once&next=%2Fsettings",
    );
    expect(
      getForgotPasswordHref({
        error: "reset-link-expired",
        next: LOGIN_DEFAULT_NEXT,
      }),
    ).toBe("/forgot-password?error=reset-link-expired");
  });

  it("links Choose a new password with where to go afterwards", () => {
    expect(getResetPasswordHref({ next: "/mainline/plays" })).toBe(
      "/reset-password?next=%2Fmainline%2Fplays",
    );
  });

  it("links Check your email with the pick and a resend", () => {
    expect(
      getCheckEmailHref({
        intent: { gameSlug: "sword" },
        next: LOGIN_DEFAULT_NEXT,
        resent: true,
      }),
    ).toBe("/check-email?sent=again&game=sword");
  });

  it("links Welcome, leaving out the default destination", () => {
    expect(getWelcomeHref(LOGIN_DEFAULT_NEXT)).toBe("/welcome");
    expect(getWelcomeHref("/mainline/plays")).toBe(
      "/welcome?next=%2Fmainline%2Fplays",
    );
  });

  it("reads only the sent states it writes", () => {
    expect(parseAuthLinkSent("once")).toBe("once");
    expect(parseAuthLinkSent("again")).toBe("again");
    expect(parseAuthLinkSent("1")).toBeNull();
    expect(parseAuthLinkSent(undefined)).toBeNull();
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
