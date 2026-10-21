import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PokemonSticker } from "./pokemon-sticker";

const render = (props: Partial<Parameters<typeof PokemonSticker>[0]> = {}) =>
  renderToStaticMarkup(
    <PokemonSticker
      imageUrl={null}
      name="Dragonite"
      types={[{ name: "Dragon", slug: "dragon" }]}
      {...props}
    />,
  );

const cornerOf = (html: string, text: string) =>
  html.match(
    new RegExp(`data-corner="([a-z-]+)"[^>]*>(?:(?!data-corner).)*${text}`),
  )?.[1];

describe("PokemonSticker corners", () => {
  it("puts the slot number top-right", () => {
    expect(cornerOf(render({ slot: "4" }), ">4<")).toBe("inside-top-right");
  });

  it("puts the shiny mark on the slot number's right edge", () => {
    expect(cornerOf(render({ shiny: true }), ", Shiny")).toBe("inside-right");
  });

  it("puts a warning top-left", () => {
    expect(
      cornerOf(render({ warning: "Breaks a rule" }), "Breaks a rule"),
    ).toBe("inside-top-left");
  });

  it("puts the Pokédex number top-left", () => {
    expect(cornerOf(render({ number: "#149" }), "#149")).toBe(
      "inside-top-left",
    );
  });

  it("draws no corner marks when it has none", () => {
    expect(render()).not.toContain("data-corner");
  });
});
