import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { GameCard } from "@/modules/reference/types";

import { GameShelfCard } from "./game-shelf-card";

const card = {
  coverImageUrl: null,
  game: { id: 31, name: "Pokémon Sword", release_year: 2019, slug: "sword" },
  gameType: null,
  generation: null,
  kind: "core",
  platforms: [],
  region: { name: "Galar" },
  versionGroup: { slug: "swsh" },
} as unknown as GameCard;

describe("GameShelfCard", () => {
  it("names the game, its year and region, never your Plays", () => {
    const markup = renderToStaticMarkup(<GameShelfCard card={card} />);
    const words = markup.replace(/<[^>]+>/g, "");

    /* The link reads its own words: the full name, then the year and region. */
    expect(markup).not.toContain("aria-label");
    expect(words).toContain("Pokémon Sword2019 · Galar");
    expect(markup).not.toContain("You have");
  });
});
