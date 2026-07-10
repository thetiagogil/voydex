import { describe, expect, it } from "vitest";

import {
  DEFAULT_AUTH_REDIRECT_PATH,
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
