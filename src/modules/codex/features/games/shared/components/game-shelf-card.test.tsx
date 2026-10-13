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
  it("flags a game you have Plays of and says so in its name", () => {
    const markup = renderToStaticMarkup(
      <GameShelfCard card={card} playCount={2} />,
    );

    expect(markup).toContain(
      'aria-label="Pokémon Sword, 2019, Galar, you have 2 Plays"',
    );
    expect(markup).toContain('title="You have 2 Plays of Sword"');
  });

  it("stays unflagged without Plays", () => {
    const markup = renderToStaticMarkup(<GameShelfCard card={card} />);

    expect(markup).toContain('aria-label="Pokémon Sword, 2019, Galar"');
    expect(markup).not.toContain("You have");
  });
});
