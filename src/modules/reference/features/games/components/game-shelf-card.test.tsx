import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { GameShelfCardGame } from "@/modules/reference/types";

import { GameShelfCard } from "./game-shelf-card";

const game: GameShelfCardGame = {
  coverImageUrl: null,
  name: "Pokémon Sword",
  regionName: "Galar",
  releaseYear: 2019,
  slug: "sword",
};

const getWords = (markup: string) => markup.replace(/<[^>]+>/g, "");

describe("GameShelfCard", () => {
  it("names the game, its year and region, never your Plays", () => {
    const markup = renderToStaticMarkup(
      <GameShelfCard game={game} href="/app/codex/games/swsh?game=sword" />,
    );

    /* The link reads its own words: the full name, then the year and region. */
    expect(markup).not.toContain("aria-label");
    expect(getWords(markup)).toContain("Pokémon Sword2019 · Galar");
    expect(markup).toContain('href="/app/codex/games/swsh?game=sword"');
    expect(markup).toContain("plain-card");
    expect(markup).not.toContain("sticker");
    expect(markup).not.toContain("empty-slot");
  });

  it("is a framed collector card saying its Plays for a game you've played", () => {
    const markup = renderToStaticMarkup(
      <GameShelfCard game={game} onClick={() => {}} count="2 Plays" />,
    );

    expect(markup).toContain('<button type="button"');
    expect(markup).not.toContain("<a ");
    expect(markup).toContain("card-frame");
    expect(markup).not.toContain("plain-card");
    expect(getWords(markup)).toContain("Pokémon Sword2 Plays2019 · Galar");
  });
});
