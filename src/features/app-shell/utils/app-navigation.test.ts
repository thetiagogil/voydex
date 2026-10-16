import { describe, expect, it } from "vitest";

import {
  accountLink,
  codexLink,
  codexViewLinks,
  getBrandHref,
  isCurrentLink,
  mainlineLinks,
  publicMenuLinks,
  tabBarLinks,
  youLinks,
} from "./app-navigation";

describe("app navigation", () => {
  it("keeps Plays current inside a Play", () => {
    const plays = mainlineLinks.find((link) => link.slug === "plays");

    expect(plays).toBeDefined();
    expect(isCurrentLink("/mainline/plays", plays!)).toBe(true);
    expect(isCurrentLink("/mainline/plays/abc/team", plays!)).toBe(true);
  });

  it("keeps Home current only on Home itself", () => {
    const home = { exact: true, href: "/mainline", label: "Home" };

    expect(isCurrentLink("/mainline", home)).toBe(true);
    expect(isCurrentLink("/mainline/plays", home)).toBe(false);
  });

  it("keeps the Codex current across its sections", () => {
    expect(codexLink.href).toBe("/codex/pokemon");
    expect(isCurrentLink("/codex/games/sword", codexLink)).toBe(true);
    expect(isCurrentLink("/codex/pokemon/bulbasaur", codexLink)).toBe(true);
  });

  it("offers the Codex's pages, each current under its own path", () => {
    expect(codexViewLinks.map((link) => link.label)).toEqual([
      "Pokémon",
      "Games",
    ]);
    const [pokemon, games] = codexViewLinks;

    expect(isCurrentLink("/codex/pokemon/bulbasaur", pokemon!)).toBe(true);
    expect(isCurrentLink("/codex/pokemon/bulbasaur", games!)).toBe(false);
    expect(isCurrentLink("/codex/games/sword-shield", games!)).toBe(true);
  });

  it("does not match a path that only shares a prefix", () => {
    expect(isCurrentLink("/codexes", codexLink)).toBe(false);
    expect(isCurrentLink("/settings-old", accountLink)).toBe(false);
    expect(isCurrentLink("/settings", accountLink)).toBe(true);
  });

  it("leaves Statistics and Collection to You on phones", () => {
    expect(
      tabBarLinks.some(
        (link) =>
          link.href === "/mainline/stats" ||
          link.href === "/mainline/collection",
      ),
    ).toBe(false);
    expect(tabBarLinks.length).toBeGreaterThan(0);
  });

  it("keeps You current on the pages about you", () => {
    const isYouCurrent = (pathname: string) =>
      youLinks.some((link) => isCurrentLink(pathname, link));

    expect(isYouCurrent("/you")).toBe(true);
    expect(isYouCurrent("/settings")).toBe(true);
    expect(isYouCurrent("/mainline/plays")).toBe(false);
  });

  it("sends the V tile to Mainline once you're signed in", () => {
    expect(getBrandHref(true)).toBe("/mainline");
    expect(getBrandHref(false)).toBe("/");
  });

  it("leads the signed-out phone menu with Start a Play", () => {
    expect(publicMenuLinks.map((link) => link.label)).toEqual([
      "Start a Play",
      "How it works",
    ]);
    expect(publicMenuLinks[0]?.href).toBe("/start");
  });
});
