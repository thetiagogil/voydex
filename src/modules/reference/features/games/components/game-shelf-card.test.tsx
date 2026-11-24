import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { GameShelfCardGame } from "@/modules/reference/types";

import { getGameCardColour } from "@/modules/reference/features/games/utils/game-color-styles";
import { collectorCardGridClassName } from "@/modules/reference/features/pokemon/components/pokemon-collector-card";

import { GameShelfCard, GameShelfGrid } from "./game-shelf-card";

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
    /* Centred, as a Codex Pokémon card's name is. */
    expect(markup).toContain("items-center");
    expect(markup).toContain("text-center");
  });

  it("is a framed collector card, laid out as a Pokémon one, for a game you've played", () => {
    const markup = renderToStaticMarkup(
      <GameShelfCard game={game} onClick={() => {}} count="2 Plays" />,
    );

    expect(markup).toContain('<button type="button"');
    expect(markup).not.toContain("<a ");
    expect(markup).toContain("card-frame");
    expect(markup).not.toContain("plain-card");
    /* Read name first, then the top line (year, Plays); no region. */
    expect(getWords(markup)).toContain("Pokémon Sword20192 Plays");
    expect(getWords(markup)).not.toContain("Galar");
    expect(markup).toContain("@container/collector");
    /* The Pokémon card's glint, from the one shared piece. */
    expect(markup).toContain("group/collector");
    expect(markup).toContain("group-hover/collector:translate-x-[500%]");
    /* Its frame wears the game's card colour, never a tilted cover. */
    expect(markup).toContain(`--t:${getGameCardColour("sword")}`);
    expect(markup).not.toContain("rotate");
  });

  it("lays played games out on the Collection's grid with `collection`", () => {
    const grid = (layout?: "collection" | "shelf") =>
      renderToStaticMarkup(
        <GameShelfGrid layout={layout}>
          <span />
        </GameShelfGrid>,
      );

    expect(grid("collection")).toContain(collectorCardGridClassName);
    expect(grid()).not.toContain(collectorCardGridClassName);
    expect(grid()).toContain("minmax(150px,1fr)");
  });
});
