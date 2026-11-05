import { afterEach, describe, expect, it, vi } from "vitest";

import { getTrainerPortraitUrl } from "@/modules/reference/features/trainers/data/trainer-portraits";

describe("getTrainerPortraitUrl", () => {
  afterEach(() => {
    vi.unstubAllEnvs();
  });

  it("points at the opponent's portrait on the assets site", () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "https://assets.example/");

    expect(getTrainerPortraitUrl("tate-liza")).toBe(
      "https://assets.example/trainers/tate-liza.webp",
    );
  });

  it("reads null for an opponent without a portrait", () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "https://assets.example");

    expect(getTrainerPortraitUrl(null)).toBeNull();
    expect(getTrainerPortraitUrl("")).toBeNull();
  });
});
