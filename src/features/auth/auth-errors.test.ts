import { describe, expect, it } from "vitest";

import {
  authErrorCodes,
  authErrorCopy,
  getAuthErrorCode,
  getAuthLinkErrorCode,
  parseAuthErrorCode,
} from "./auth-errors";

describe("auth error codes", () => {
  it("maps Supabase Auth errors to the page's reasons", () => {
    expect(getAuthErrorCode("invalid_credentials")).toBe("credentials");
    expect(getAuthErrorCode("user_already_exists")).toBe("email-taken");
    expect(getAuthErrorCode("email_exists")).toBe("email-taken");
    expect(getAuthErrorCode("weak_password")).toBe("weak-password");
    expect(getAuthErrorCode("email_not_confirmed")).toBe("email-not-confirmed");
    expect(getAuthErrorCode("over_request_rate_limit")).toBe("rate-limited");
    expect(getAuthErrorCode("over_email_send_rate_limit")).toBe("rate-limited");
    expect(getAuthErrorCode("email_address_invalid")).toBe("email-invalid");
    expect(getAuthErrorCode("same_password")).toBe("same-password");
    expect(getAuthErrorCode("reauthentication_needed")).toBe(
      "reauthentication-needed",
    );
  });

  it("keeps a generic validation failure from blaming the email", () => {
    expect(getAuthErrorCode("validation_failed")).toBe("invalid-details");
  });

  it("reads an email link that came back with an error instead of a code", () => {
    expect(
      getAuthLinkErrorCode(
        new URLSearchParams(
          "error=access_denied&error_code=otp_expired&error_description=Email+link+is+invalid+or+has+expired",
        ),
      ),
    ).toBe("link-expired");
    expect(
      getAuthLinkErrorCode(
        new URLSearchParams(
          "error=invalid_request&error_code=flow_state_expired",
        ),
      ),
    ).toBe("link-expired");
    expect(
      getAuthLinkErrorCode(
        new URLSearchParams("error=server_error&error_code=unexpected_failure"),
      ),
    ).toBe("unknown");
    expect(
      getAuthLinkErrorCode(new URLSearchParams("error=access_denied")),
    ).toBe("unknown");
    expect(
      getAuthLinkErrorCode(new URLSearchParams("error_code=otp_expired")),
    ).toBe("link-expired");
  });

  it("finds no link error when the link carries none", () => {
    expect(getAuthLinkErrorCode(new URLSearchParams(""))).toBeNull();
    expect(
      getAuthLinkErrorCode(new URLSearchParams("code=abc&next=%2Fmainline")),
    ).toBeNull();
  });

  it("treats a missing or unexpected Supabase code as unknown", () => {
    expect(getAuthErrorCode(undefined)).toBe("unknown");
    expect(getAuthErrorCode(null)).toBe("unknown");
    expect(getAuthErrorCode("unexpected_failure")).toBe("unknown");
    expect(getAuthErrorCode("toString")).toBe("unknown");
  });

  it("accepts only its own codes from the query", () => {
    expect(parseAuthErrorCode("credentials")).toBe("credentials");
    expect(parseAuthErrorCode("email-taken")).toBe("email-taken");
    expect(parseAuthErrorCode(undefined)).toBeNull();
    expect(parseAuthErrorCode(["credentials"])).toBeNull();
    expect(parseAuthErrorCode("Your account is locked. Call 555-0100.")).toBe(
      null,
    );
    expect(parseAuthErrorCode("constructor")).toBeNull();
  });

  it("has fixed copy for every code, without em dashes", () => {
    for (const code of authErrorCodes) {
      const copy = authErrorCopy[code];

      expect(copy.title.length).toBeGreaterThan(0);
      expect(copy.description.length).toBeGreaterThan(0);
      expect(
        `${copy.title} ${copy.description} ${copy.link?.label ?? ""}`,
      ).not.toContain("—");
    }
  });

  it("offers a reset after wrong credentials and Log in after a taken email", () => {
    expect(authErrorCopy.credentials.link?.target).toBe("forgot-password");
    expect(authErrorCopy["email-taken"].link?.target).toBe("log-in");
  });
});
