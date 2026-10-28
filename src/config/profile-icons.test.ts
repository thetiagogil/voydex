import { describe, expect, it } from "vitest";

import {
  getProfileIconPath,
  getProfileIconTintStyle,
  getProfileIconType,
  isProfileIconSlug,
  profileIconSlugs,
} from "./profile-icons";

describe("profile icons", () => {
  it("offers each starter once", () => {
    expect(new Set(profileIconSlugs).size).toBe(profileIconSlugs.length);
  });

  it("recognises only the offered icons", () => {
    expect(isProfileIconSlug("squirtle")).toBe(true);
    expect(isProfileIconSlug("charizard")).toBe(false);
    expect(isProfileIconSlug(null)).toBe(false);
  });

  it("puts each icon in the assets site's icon folder", () => {
    expect(getProfileIconPath("pikachu")).toBe("pokemon/icons/pikachu.webp");
  });

  it("tints each disc with its Pokémon's type", () => {
    expect(getProfileIconType("mudkip")).toBe("water");
    expect(getProfileIconType("pikachu")).toBe("electric");
    expect(getProfileIconTintStyle("fire")).toEqual({
      "--t": "var(--type-fire)",
    });
  });
});
