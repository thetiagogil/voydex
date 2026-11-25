import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PokemonCard } from "./pokemon-card";
import { PokemonShownName } from "./pokemon-shown-name";

describe("PokemonShownName", () => {
  it("shows the species' name and reads the form's full one", () => {
    expect(
      renderToStaticMarkup(
        <PokemonShownName name="Floette" readAs="Floette (Eternal Flower)" />,
      ),
    ).toBe(
      '<span aria-hidden="true">Floette</span><span class="sr-only">Floette (Eternal Flower)</span>',
    );
  });

  it("reads the name as it shows when there is nothing more to say", () => {
    expect(renderToStaticMarkup(<PokemonShownName name="Pikachu" />)).toBe(
      "Pikachu",
    );
    expect(
      renderToStaticMarkup(
        <PokemonShownName name="Pikachu" readAs="Pikachu" />,
      ),
    ).toBe("Pikachu");
  });

  it("gives the look-up card the same reading (`nameReadAs`)", () => {
    const html = renderToStaticMarkup(
      <PokemonCard
        imageAlt=""
        imageUrl={null}
        name="Meowstic"
        nameReadAs="Meowstic (Female)"
        types={[{ name: "Psychic", slug: "psychic" }]}
      />,
    );

    expect(html).toContain('<span aria-hidden="true">Meowstic</span>');
    expect(html).toContain('<span class="sr-only">Meowstic (Female)</span>');
  });
});
