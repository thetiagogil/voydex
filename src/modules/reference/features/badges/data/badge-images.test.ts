import { afterEach, describe, expect, it, vi } from "vitest";

import { getBadgeImageUrl } from "./badge-images";

describe("getBadgeImageUrl", () => {
  afterEach(() => vi.unstubAllEnvs());

  it("points at the badge's picture on the assets site", () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "https://assets.example.test/");

    expect(getBadgeImageUrl("boulder-badge")).toBe(
      "https://assets.example.test/badges/boulder-badge.webp",
    );
  });

  it("has no address without a slug or an assets site", () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "https://assets.example.test");
    expect(getBadgeImageUrl(null)).toBeNull();
    expect(getBadgeImageUrl("")).toBeNull();
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "");
    expect(getBadgeImageUrl("boulder-badge")).toBeNull();
  });
});
