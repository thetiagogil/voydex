import { describe, expect, it } from "vitest";

import { isLocalDevelopment, isLocalSupabaseUrl } from "./local-development";

describe("isLocalSupabaseUrl", () => {
  it("accepts the local stack and rejects hosted or broken addresses", () => {
    expect(isLocalSupabaseUrl("http://127.0.0.1:54621")).toBe(true);
    expect(isLocalSupabaseUrl("http://localhost:54621")).toBe(true);
    expect(isLocalSupabaseUrl("https://abcd.supabase.co")).toBe(false);
    expect(isLocalSupabaseUrl("not a url")).toBe(false);
    expect(isLocalSupabaseUrl(undefined)).toBe(false);
  });
});

describe("isLocalDevelopment", () => {
  it("needs both the dev server and the local stack", () => {
    const local = "http://127.0.0.1:54621";

    expect(
      isLocalDevelopment({ nodeEnv: "development", supabaseUrl: local }),
    ).toBe(true);
    expect(
      isLocalDevelopment({ nodeEnv: "production", supabaseUrl: local }),
    ).toBe(false);
    expect(
      isLocalDevelopment({
        nodeEnv: "development",
        supabaseUrl: "https://abcd.supabase.co",
      }),
    ).toBe(false);
  });
});
