import { describe, expect, it } from "vitest";

import { getAccountInitial, getAccountName } from "./account-display";

describe("account display", () => {
  it("prefers the display name over the email", () => {
    const account = {
      displayName: "tiago",
      email: "ash@example.com",
      trainerSince: null,
    };

    expect(getAccountName(account)).toBe("tiago");
    expect(getAccountInitial(account)).toBe("T");
  });

  it("falls back to the email, then to You", () => {
    expect(
      getAccountName({
        displayName: null,
        email: "ash@example.com",
        trainerSince: null,
      }),
    ).toBe("ash@example.com");
    expect(
      getAccountInitial({ displayName: null, email: null, trainerSince: null }),
    ).toBe("Y");
  });
});
