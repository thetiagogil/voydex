import { describe, expect, it } from "vitest";

import { getAuthPageHref, LOGIN_DEFAULT_NEXT } from "./auth-mode";
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

  it("puts an error first", () => {
    expect(
      getAuthPageHref({
        error: "Passwords do not match.",
        mode: "sign-up",
        next: DEFAULT_AUTH_REDIRECT_PATH,
      }),
    ).toBe("/login?error=Passwords+do+not+match.&mode=sign-up");
  });
});
