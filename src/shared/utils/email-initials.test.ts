import { describe, expect, it } from "vitest";

import { getEmailInitials } from "./email-initials";

describe("getEmailInitials", () => {
  it("takes the first letter of the email, upper case", () => {
    expect(getEmailInitials("misty@cerulean.gym")).toBe("M");
  });

  it("falls back to a question mark for an empty value", () => {
    expect(getEmailInitials("  ")).toBe("?");
  });
});
