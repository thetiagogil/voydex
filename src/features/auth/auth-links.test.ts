import { describe, expect, it } from "vitest";

import {
  getForgotPasswordHref,
  getLogInHref,
  getResetPasswordHref,
  LOGIN_DEFAULT_NEXT,
  parseAuthLinkSent,
} from "./auth-links";
import { DEFAULT_AUTH_REDIRECT_PATH } from "./auth-redirects";

describe("Log in links", () => {
  it("links Log in without a query by default", () => {
    expect(getLogInHref({ next: DEFAULT_AUTH_REDIRECT_PATH })).toBe("/login");
    expect(getLogInHref({ next: LOGIN_DEFAULT_NEXT })).toBe("/login");
  });

  it("keeps where to go afterwards", () => {
    expect(getLogInHref({ next: "/app/plays" })).toBe(
      "/login?next=%2Fapp%2Fplays",
    );
  });

  it("puts an error code first", () => {
    expect(getLogInHref({ error: "credentials", next: "/app/plays" })).toBe(
      "/login?error=credentials&next=%2Fapp%2Fplays",
    );
  });
});

describe("password reset links", () => {
  it("links Reset your password and its sent states", () => {
    expect(getForgotPasswordHref({ next: LOGIN_DEFAULT_NEXT })).toBe(
      "/forgot-password",
    );
    expect(getForgotPasswordHref({ next: "/app/settings", sent: "once" })).toBe(
      "/forgot-password?sent=once&next=%2Fapp%2Fsettings",
    );
    expect(
      getForgotPasswordHref({
        error: "reset-link-expired",
        next: LOGIN_DEFAULT_NEXT,
      }),
    ).toBe("/forgot-password?error=reset-link-expired");
  });

  it("links Choose a new password with where to go afterwards", () => {
    expect(getResetPasswordHref({ next: "/app/plays" })).toBe(
      "/reset-password?next=%2Fapp%2Fplays",
    );
  });

  it("reads only the sent states it writes", () => {
    expect(parseAuthLinkSent("once")).toBe("once");
    expect(parseAuthLinkSent("again")).toBe("again");
    expect(parseAuthLinkSent("1")).toBeNull();
    expect(parseAuthLinkSent(undefined)).toBeNull();
  });
});
