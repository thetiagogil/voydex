import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { GameCover } from "./game-cover";

describe("GameCover", () => {
  it("loads a shelf cover as the plain file, without Next.js's image hosts", () => {
    const markup = renderToStaticMarkup(
      <GameCover
        alt="Pokémon Red cover art"
        coverImageUrl="https://assets.test/games/covers/red.webp"
        gameName="Pokémon Red"
        gameSlug="red"
        shape="portrait"
        size="playShelf"
      />,
    );

    expect(markup).toContain('src="https://assets.test/games/covers/red.webp"');
    expect(markup).not.toContain("/_next/image");
  });

  it("draws a missing cover's initials as picture, not as text", () => {
    const markup = renderToStaticMarkup(
      <GameCover
        alt=""
        coverImageUrl={null}
        gameName="Pokémon Brilliant Diamond"
        gameSlug="brilliant-diamond"
        size="playShelf"
      />,
    );

    expect(markup).toContain('data-stand-in="BD"');
    expect(markup.replace(/<[^>]*>/g, "")).toBe("");
  });
});
