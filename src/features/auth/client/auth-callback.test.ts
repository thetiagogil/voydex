import { beforeEach, describe, expect, it, vi } from "vitest";

import { appRoutes } from "@/config/routes";
import {
  getAuthPageHref,
  getForgotPasswordHref,
  getResetPasswordHref,
} from "@/features/auth/auth-mode";
import { completeAuthLink } from "@/features/auth/client/auth-callback";

const auth = vi.hoisted(() => ({
  exchangeCodeForSession: vi.fn(),
  verifyOtp: vi.fn(),
}));

vi.mock("@/platform/supabase/browser-client", () => ({
  getBrowserSupabaseClient: () => ({ auth }),
}));

const fallback = "/codex/pokemon";
const resetLanding = (next: string) => getResetPasswordHref({ next });
const finish = (query: Record<string, string>) =>
  completeAuthLink(new URLSearchParams(query), fallback);

beforeEach(() => {
  auth.exchangeCodeForSession.mockReset().mockResolvedValue({ error: null });
  auth.verifyOtp.mockReset().mockResolvedValue({ error: null });
});

describe("completeAuthLink", () => {
  it("exchanges a code once and goes on to the link's next page", async () => {
    await expect(finish({ code: "abc", next: "/welcome" })).resolves.toBe(
      "/welcome",
    );
    expect(auth.exchangeCodeForSession).toHaveBeenCalledExactlyOnceWith("abc");
  });

  it("falls back to the module you were last in without a next page", async () => {
    await expect(finish({ code: "abc" })).resolves.toBe(fallback);
  });

  it("never follows a next page on another site", async () => {
    await expect(
      finish({ code: "abc", next: "https://evil.example/welcome" }),
    ).resolves.toBe(fallback);
  });

  it("sends a code that fails back to Log in, keeping where it was going", async () => {
    auth.exchangeCodeForSession.mockResolvedValue({ error: new Error("x") });

    await expect(finish({ code: "abc", next: "/welcome" })).resolves.toBe(
      getAuthPageHref({
        error: "link-expired",
        mode: "log-in",
        next: "/welcome",
      }),
    );
  });

  it("lands a reset link on Choose a new password, keeping its own next page", async () => {
    const next = resetLanding("/settings");

    await expect(finish({ code: "abc", next })).resolves.toBe(next);
  });

  it("lands a reset link with no next page of its own on the fallback", async () => {
    await expect(
      finish({ code: "abc", next: appRoutes.resetPassword }),
    ).resolves.toBe(resetLanding(fallback));
  });

  it("sends a reset link that fails back to Reset your password", async () => {
    auth.exchangeCodeForSession.mockResolvedValue({ error: new Error("x") });

    await expect(
      finish({ code: "abc", next: resetLanding("/settings") }),
    ).resolves.toBe(
      getForgotPasswordHref({ error: "reset-link-expired", next: "/settings" }),
    );
  });

  it("verifies a token link, and a recovery one lands on Choose a new password", async () => {
    await expect(
      finish({ next: "/settings", token_hash: "hash", type: "recovery" }),
    ).resolves.toBe(resetLanding("/settings"));
    expect(auth.verifyOtp).toHaveBeenCalledExactlyOnceWith({
      token_hash: "hash",
      type: "recovery",
    });
  });

  it("verifies a sign-up token link and goes on", async () => {
    await expect(
      finish({ next: "/welcome", token_hash: "hash", type: "signup" }),
    ).resolves.toBe("/welcome");
  });

  it("ignores a token link of an unknown type", async () => {
    await expect(
      finish({ next: "/welcome", token_hash: "hash", type: "sms" }),
    ).resolves.toBe("/welcome");
    expect(auth.verifyOtp).not.toHaveBeenCalled();
  });

  it("passes on an error the link itself carries", async () => {
    await expect(
      finish({ error: "access_denied", error_code: "otp_expired" }),
    ).resolves.toBe(
      getAuthPageHref({
        error: "link-expired",
        mode: "log-in",
        next: fallback,
      }),
    );
    expect(auth.exchangeCodeForSession).not.toHaveBeenCalled();
  });
});
