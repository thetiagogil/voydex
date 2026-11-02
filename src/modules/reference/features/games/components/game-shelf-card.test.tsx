import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { GameShelfCardGame } from "@/modules/reference/types";

import { GameShelfCard, GameShelfEmptySlot } from "./game-shelf-card";

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
      <GameShelfCard game={game} href="/codex/games/swsh?game=sword" />,
    );

    /* The link reads its own words: the full name, then the year and region. */
    expect(markup).not.toContain("aria-label");
    expect(getWords(markup)).toContain("Pokémon Sword2019 · Galar");
    expect(markup).toContain('href="/codex/games/swsh?game=sword"');
    expect(markup).toContain("plain-card");
    expect(markup).not.toContain("sticker");
    expect(markup).not.toContain("empty-slot");
  });

  it("is a button wearing the owned band and the stamp for a game you've played", () => {
    const markup = renderToStaticMarkup(
      <GameShelfCard
        game={game}
        onClick={() => {}}
        stamp={<span data-testid="stamp">2</span>}
      />,
    );

    expect(markup).toContain('<button type="button"');
    expect(markup).not.toContain("<a ");
    expect(markup).toContain("sticker");
    expect(markup).not.toContain("plain-card");
    expect(markup).toContain('data-corner="inside-top-right"');
    expect(markup).toContain('data-testid="stamp"');
  });

  it("draws an unplayed game as a dashed open slot that New Play fills", () => {
    const markup = renderToStaticMarkup(
      <GameShelfEmptySlot game={game} href="/mainline?new=sword" />,
    );

    expect(markup).toContain("empty-slot");
    expect(markup).toContain("step-back");
    expect(markup).not.toContain("plain-card");
    expect(markup).toContain('href="/mainline?new=sword"');
    expect(getWords(markup)).toContain("Pokémon SwordNot played yet");
  });
});
