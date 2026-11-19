import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PokemonCollectorCard } from "./pokemon-collector-card";

const render = (
  props: Partial<Parameters<typeof PokemonCollectorCard>[0]> = {},
) =>
  renderToStaticMarkup(
    <PokemonCollectorCard
      imageUrl={null}
      name="Dragonite"
      number="#149"
      onClick={() => undefined}
      types={[
        { name: "Dragon", slug: "dragon" },
        { name: "Flying", slug: "flying" },
      ]}
      {...props}
    />,
  );

const cornerOf = (html: string, text: string) =>
  html.match(
    new RegExp(`data-corner="([a-z-]+)"[^>]*>(?:(?!data-corner).)*${text}`),
  )?.[1];

describe("PokemonCollectorCard", () => {
  it("is a button named by the Pokémon, then what it adds", () => {
    const html = render({ detail: "See its Plays" });

    expect(html).toMatch(/^<button type="button" aria-pressed="false"/);
    expect(html.indexOf("Dragonite")).toBeLessThan(
      html.indexOf(", See its Plays"),
    );
  });

  it("frames the card in its first type's colour", () => {
    expect(render()).toContain("--t:var(--type-dragon)");
    expect(render()).toContain("card-frame");
  });

  it("takes the type's full colour once picked, and says so", () => {
    const html = render({ selected: true });

    expect(html).toContain('aria-pressed="true"');
    expect(html).not.toContain("card-frame");
  });

  it("says its count beside the name and the shiny mark in the window", () => {
    const html = render({ count: "2 Plays", note: "2 games", shiny: true });

    expect(html.indexOf("Dragonite")).toBeLessThan(html.indexOf("2 Plays"));
    expect(html).toContain("2 games");
    expect(cornerOf(html, ", Shiny")).toBe("inside-top-right");
  });

  it("draws no corner marks when it has none", () => {
    expect(render()).not.toContain("data-corner");
  });

  it("shows its number", () => {
    expect(render()).toContain("#149");
  });
});
