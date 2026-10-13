import { describe, expect, it } from "vitest";

import {
  accountLink,
  codexLink,
  isCurrentLink,
  mainlineLinks,
  publicMenuLinks,
} from "./app-navigation";

describe("app navigation", () => {
  it("keeps Plays current inside a Play", () => {
    const plays = mainlineLinks.find((link) => link.slug === "plays");

    expect(plays).toBeDefined();
    expect(isCurrentLink("/mainline/plays", plays!)).toBe(true);
    expect(isCurrentLink("/mainline/plays/abc/team", plays!)).toBe(true);
  });

  it("keeps the Codex current across its sections", () => {
    expect(codexLink.href).toBe("/codex/pokemon");
    expect(isCurrentLink("/codex/games/sword", codexLink)).toBe(true);
    expect(isCurrentLink("/codex/pokemon/bulbasaur", codexLink)).toBe(true);
  });

  it("does not match a path that only shares a prefix", () => {
    expect(isCurrentLink("/codexes", codexLink)).toBe(false);
    expect(isCurrentLink("/settings-old", accountLink)).toBe(false);
    expect(isCurrentLink("/settings", accountLink)).toBe(true);
  });

  it("leads the signed-out phone menu with Start a Play", () => {
    expect(publicMenuLinks.map((link) => link.label)).toEqual([
      "Start a Play",
      "How it works",
      "Codex",
    ]);
    expect(publicMenuLinks[0]?.href).toBe("/login?mode=sign-up");
  });
});
