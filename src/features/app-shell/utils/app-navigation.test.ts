import { describe, expect, it } from "vitest";

import {
  accountLink,
  appBarItems,
  codexLink,
  codexViewLinks,
  isCurrentBarItem,
  isCurrentBarView,
  isCurrentLink,
  mainlineLinks,
  publicLinks,
  tabBarLinks,
  youLinks,
} from "./app-navigation";

describe("app navigation", () => {
  it("keeps Plays current inside a Play", () => {
    const plays = mainlineLinks.find((link) => link.slug === "plays");

    expect(plays).toBeDefined();
    expect(isCurrentLink("/app/plays", plays!)).toBe(true);
    expect(isCurrentLink("/app/plays/play/team", plays!)).toBe(true);
  });

  it("keeps Home current only on Home itself", () => {
    const home = { exact: true, href: "/app", label: "Home" };

    expect(isCurrentLink("/app", home)).toBe(true);
    expect(isCurrentLink("/app/plays", home)).toBe(false);
  });

  it("keeps the Codex current across its sections", () => {
    expect(codexLink.href).toBe("/app/codex/pokemon");
    expect(isCurrentLink("/app/codex/games/sword", codexLink)).toBe(true);
    expect(isCurrentLink("/app/codex/pokemon/bulbasaur", codexLink)).toBe(true);
  });

  it("offers the Codex's pages, each current under its own path", () => {
    expect(codexViewLinks.map((link) => link.label)).toEqual([
      "Pokémon",
      "Games",
    ]);
    const [pokemon, games] = codexViewLinks;

    expect(isCurrentLink("/app/codex/pokemon/bulbasaur", pokemon!)).toBe(true);
    expect(isCurrentLink("/app/codex/pokemon/bulbasaur", games!)).toBe(false);
    expect(isCurrentLink("/app/codex/games/sword-shield", games!)).toBe(true);
  });

  it("does not match a path that only shares a prefix", () => {
    expect(isCurrentLink("/codexes", codexLink)).toBe(false);
    expect(isCurrentLink("/settings-old", accountLink)).toBe(false);
    expect(isCurrentLink("/app/settings", accountLink)).toBe(true);
  });

  it("leaves Statistics and Collection to You on phones", () => {
    expect(
      tabBarLinks.some(
        (link) =>
          link.href === "/app/statistics" || link.href === "/app/collection",
      ),
    ).toBe(false);
    expect(tabBarLinks.length).toBeGreaterThan(0);
  });

  it("calls the planner Planner on the bottom bar and keeps it current on My Plans", () => {
    const planner = tabBarLinks.find((link) => link.slug === "planner")!;

    expect(planner.shortLabel).toBe("Planner");
    expect(isCurrentBarItem("/app/planner", planner)).toBe(true);
    expect(isCurrentBarItem("/app/plans", planner)).toBe(true);
    expect(isCurrentBarItem("/app/plays", planner)).toBe(false);
  });

  it("keeps You current on the pages about you", () => {
    const isYouCurrent = (pathname: string) =>
      youLinks.some((link) => isCurrentLink(pathname, link));

    expect(isYouCurrent("/app/you")).toBe(true);
    expect(isYouCurrent("/app/settings")).toBe(true);
    expect(isYouCurrent("/app/plays")).toBe(false);
  });

  it("links the site's bar to the front page's parts", () => {
    expect(publicLinks).toEqual([
      { href: "/#how-it-works", label: "How it works" },
      { href: "/#install", label: "Install" },
    ]);
  });

  it("gives Team Planner, Collection and the Codex a menu of their pages", () => {
    const withMenus = appBarItems.filter((item) => item.views);

    expect(appBarItems.map((item) => item.label)).toEqual([
      "Home",
      "Plays",
      "Team Planner",
      "Statistics",
      "Collection",
      "Codex",
    ]);
    expect(withMenus.map((item) => item.label)).toEqual([
      "Team Planner",
      "Collection",
      "Codex",
    ]);
    expect(
      withMenus.map((item) => item.views?.map((view) => view.label)),
    ).toEqual([
      ["Team Planner", "My Plans"],
      ["Pokémon", "Favourites", "Games"],
      ["Pokémon", "Games"],
    ]);
  });

  it("keeps Team Planner current on the planner and on My Plans", () => {
    const planner = appBarItems.find((item) => item.label === "Team Planner")!;

    expect(isCurrentBarItem("/app/planner", planner)).toBe(true);
    expect(isCurrentBarItem("/app/plans", planner)).toBe(true);
    expect(isCurrentBarItem("/app/plays", planner)).toBe(false);
  });

  it("tells a menu's pages apart by their view when they share a path", () => {
    const [pokemon, , games] = appBarItems.find(
      (item) => item.label === "Collection",
    )!.views!;

    expect(isCurrentBarView("/app/collection", null, pokemon)).toBe(true);
    expect(isCurrentBarView("/app/collection", "games", pokemon)).toBe(false);
    expect(isCurrentBarView("/app/collection", "games", games)).toBe(true);
    expect(isCurrentBarView("/app/plays", "games", games)).toBe(false);
  });

  it("keeps a Codex page current on its entries", () => {
    const [pokemon] = appBarItems.find(
      (item) => item.label === "Codex",
    )!.views!;

    expect(isCurrentBarView("/app/codex/pokemon/pikachu", null, pokemon)).toBe(
      true,
    );
  });
});
