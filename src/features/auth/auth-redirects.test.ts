import { describe, expect, it } from "vitest";

import {
  DEFAULT_AUTH_REDIRECT_PATH,
  getLogInLandingPath,
  getSafeAuthRedirectPath,
} from "./auth-redirects";

describe("auth redirect safety", () => {
  it("keeps protected routes with their query and hash", () => {
    expect(
      getSafeAuthRedirectPath("/mainline/plays?status=active#current"),
    ).toBe("/mainline/plays?status=active#current");
  });

  it("allows public module routes", () => {
    expect(getSafeAuthRedirectPath("/codex/pokemon/pikachu")).toBe(
      "/codex/pokemon/pikachu",
    );
  });

  it("rejects external and protocol-relative redirects", () => {
    expect(getSafeAuthRedirectPath("https://example.com/mainline")).toBe(
      DEFAULT_AUTH_REDIRECT_PATH,
    );
    expect(getSafeAuthRedirectPath("//example.com/mainline")).toBe(
      DEFAULT_AUTH_REDIRECT_PATH,
    );
  });

  it("uses a safe fallback for non-string values", () => {
    expect(getSafeAuthRedirectPath(null, "/codex/games")).toBe("/codex/games");
  });
});

describe("log in landing", () => {
  it("lands on Mainline by default and from public pages", () => {
    expect(getLogInLandingPath(DEFAULT_AUTH_REDIRECT_PATH)).toBe("/mainline");
    expect(getLogInLandingPath("/codex/pokemon/pikachu")).toBe("/mainline");
  });

  it("returns to the protected page that sent you to Log in", () => {
    expect(getLogInLandingPath("/mainline/plays?status=active")).toBe(
      "/mainline/plays?status=active",
    );
    expect(getLogInLandingPath("/settings")).toBe("/settings");
  });
});
