import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { GameShelfGame } from "@/modules/reference/features/games/types";

import { GameShelfPicker } from "./game-shelf-picker";

const shelfGame = (
  slug: string,
  name: string,
  generationNumber: number,
  numeral: string,
): GameShelfGame => ({
  coverImageUrl: null,
  generation: {
    id: generationNumber,
    name: `Generation ${numeral}`,
    numeral,
    number: generationNumber,
  },
  id: generationNumber * 10,
  name,
  platformNames: [],
  regionName: null,
  releaseYear: 1995 + generationNumber,
  shortName: name.replace("Pokémon ", ""),
  slug,
  versionGroupSlug: slug,
});

const games = [
  shelfGame("red", "Pokémon Red", 1, "I"),
  shelfGame("blue", "Pokémon Blue", 1, "I"),
  shelfGame("sword", "Pokémon Sword", 8, "VIII"),
];

const render = (props: Partial<Parameters<typeof GameShelfPicker>[0]>) =>
  renderToStaticMarkup(
    <GameShelfPicker
      games={games}
      onValueChange={() => undefined}
      value={null}
      {...props}
    />,
  );

const tabStops = (markup: string) =>
  [...markup.matchAll(/data-game-slug="([^"]+)" tabindex="0"/g)].map(
    (match) => match[1],
  );

describe("GameShelfPicker", () => {
  it("is one horizontal listbox with the picked game selected", () => {
    const markup = render({ value: "blue" });

    expect(markup).toContain('role="listbox"');
    expect(markup).toContain('aria-orientation="horizontal"');
    expect(markup).toMatch(
      /aria-selected="true" aria-label="Pokémon Blue, 1996"/,
    );
    expect(markup.match(/aria-selected="true"/g)).toHaveLength(1);
    expect(tabStops(markup)).toEqual(["blue"]);
  });

  it("shows no paging arrows until it knows the shelf overflows", () => {
    const markup = render({});

    expect(markup).not.toContain("Earlier games");
    expect(markup).not.toContain("Later games");
  });

  it("opens at the asked-for generation, else the newest game", () => {
    expect(tabStops(render({ initialGeneration: 1 }))).toEqual(["red"]);
    expect(tabStops(render({}))).toEqual(["sword"]);
  });

  it("offers one jump per generation on the shelf", () => {
    const markup = render({});

    expect(markup).toContain('aria-label="Jump to a generation"');
    expect(markup.match(/>I<\/button>/g)).toHaveLength(1);
    expect(markup).toContain(">VIII</button>");
  });
});
