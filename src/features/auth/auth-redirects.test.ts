import { describe, expect, it } from "vitest";

import {
  DEFAULT_AUTH_REDIRECT_PATH,
  getLogInLandingPath,
  getSafeAuthRedirectPath,
} from "./auth-redirects";

describe("auth redirect safety", () => {
  it("keeps protected routes with their query and hash", () => {
    expect(getSafeAuthRedirectPath("/app/plays?status=active#current")).toBe(
      "/app/plays?status=active#current",
    );
  });

  it("allows public module routes", () => {
    expect(getSafeAuthRedirectPath("/app/codex/pokemon/pikachu")).toBe(
      "/app/codex/pokemon/pikachu",
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
    expect(getSafeAuthRedirectPath(null, "/app/codex/games")).toBe(
      "/app/codex/games",
    );
  });
});

describe("log in landing", () => {
  it("lands on Home by default and from outside the app", () => {
    expect(getLogInLandingPath(DEFAULT_AUTH_REDIRECT_PATH)).toBe("/app");
    expect(getLogInLandingPath("/reset-password")).toBe("/app");
  });

  it("returns to the app page that sent you to Log in", () => {
    expect(getLogInLandingPath("/app/plays?status=active")).toBe(
      "/app/plays?status=active",
    );
    expect(getLogInLandingPath("/app/settings")).toBe("/app/settings");
    expect(getLogInLandingPath("/app/codex/pokemon/pikachu")).toBe(
      "/app/codex/pokemon/pikachu",
    );
  });
});
