import { describe, expect, it } from "vitest";

import {
  countGamesByKind,
  emptyGamesPageFilters,
  filterGames,
  groupGamesIntoSections,
} from "@/modules/codex/features/games/browse/data/games-browse-model";
import type { GameCard, Generation, Region } from "@/modules/reference/types";

const kanto = { id: 1, name: "Kanto", slug: "kanto", sort_order: 1 } as Region;
const johto = { id: 2, name: "Johto", slug: "johto", sort_order: 2 } as Region;
const generationOne = {
  id: 1,
  name: "Generation I",
  slug: "generation-i",
} as Generation;
const generationTwo = {
  id: 2,
  name: "Generation II",
  slug: "generation-ii",
} as Generation;
const generationThree = {
  id: 3,
  name: "Generation III",
  slug: "generation-iii",
} as Generation;

const buildCard = (
  slug: string,
  year: number,
  generation: Generation,
  region: Region,
  kind: GameCard["kind"] = "core",
): GameCard =>
  ({
    coverImageUrl: null,
    game: { name: `Pokémon ${slug}`, release_year: year, slug },
    gameType: null,
    generation,
    kind,
    platforms: [],
    region,
    versionGroup: { name: slug, slug },
  }) as unknown as GameCard;

const games = [
  buildCard("red", 1996, generationOne, kanto),
  buildCard("yellow", 1998, generationOne, kanto, "companion"),
  buildCard("gold", 1999, generationTwo, johto),
  buildCard("firered", 2004, generationThree, kanto, "companion"),
];

describe("groupGamesIntoSections", () => {
  it("keeps every game in one unlabelled section when ungrouped", () => {
    const sections = groupGamesIntoSections({
      games,
      groupBy: "none",
      regions: [kanto, johto],
      sortOrder: "newest",
    });

    expect(sections).toHaveLength(1);
    expect(sections[0].label).toBeNull();
    expect(sections[0].games.map((card) => card.game.slug)).toEqual([
      "firered",
      "gold",
      "yellow",
      "red",
    ]);
  });

  it("groups by generation in release order with a summary line", () => {
    const sections = groupGamesIntoSections({
      games,
      groupBy: "generation",
      regions: [kanto, johto],
      sortOrder: "oldest",
    });

    expect(sections.map((section) => section.label)).toEqual([
      "Generation I",
      "Generation II",
      "Generation III",
    ]);
    expect(sections[0].summary).toBe("1996–1998 · 2 games · Kanto");
    expect(sections[1].summary).toBe("1999 · 1 game · Johto");
  });

  it("groups by region in the regions' own order", () => {
    const sections = groupGamesIntoSections({
      games,
      groupBy: "region",
      regions: [kanto, johto],
      sortOrder: "oldest",
    });

    expect(sections.map((section) => section.label)).toEqual([
      "Kanto",
      "Johto",
    ]);
    expect(sections[0].games.map((card) => card.game.slug)).toEqual([
      "red",
      "yellow",
      "firered",
    ]);
    expect(sections[0].summary).toBe("1996–2004 · 3 games");
  });

  it("turns sections and games around for newest first", () => {
    const sections = groupGamesIntoSections({
      games,
      groupBy: "generation",
      regions: [kanto, johto],
      sortOrder: "newest",
    });

    expect(sections.map((section) => section.label)).toEqual([
      "Generation III",
      "Generation II",
      "Generation I",
    ]);
    expect(sections[2].games.map((card) => card.game.slug)).toEqual([
      "yellow",
      "red",
    ]);
  });
});

describe("filterGames", () => {
  it("matches a region or a year from the search", () => {
    expect(
      filterGames(games, { ...emptyGamesPageFilters, query: "johto" }).map(
        (card) => card.game.slug,
      ),
    ).toEqual(["gold"]);
    expect(
      filterGames(games, { ...emptyGamesPageFilters, query: "2004" }).map(
        (card) => card.game.slug,
      ),
    ).toEqual(["firered"]);
  });
});

describe("filterGames by kind", () => {
  it("keeps only the picked kind", () => {
    expect(
      filterGames(games, { ...emptyGamesPageFilters, kind: "companion" }).map(
        (card) => card.game.slug,
      ),
    ).toEqual(["yellow", "firered"]);
  });

  it("counts each kind", () => {
    expect(countGamesByKind(games)).toEqual(
      new Map([
        ["core", 2],
        ["companion", 2],
      ]),
    );
  });
});
