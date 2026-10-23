import { afterEach, describe, expect, it, vi } from "vitest";

import { getItemImageUrl } from "./item-images";

describe("getItemImageUrl", () => {
  afterEach(() => vi.unstubAllEnvs());

  it("points at the item's sprite on the assets site", () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "https://assets.example.test/");

    expect(getItemImageUrl("leftovers")).toBe(
      "https://assets.example.test/items/leftovers.webp",
    );
  });

  it("has no address without a slug or an assets site", () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "https://assets.example.test");
    expect(getItemImageUrl(null)).toBeNull();
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "");
    expect(getItemImageUrl("leftovers")).toBeNull();
  });
});
