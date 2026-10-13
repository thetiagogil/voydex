import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PokemonTypeList } from "./pokemon-type-list";

const grass = { name: "Grass", slug: "grass" };
const poison = { name: "Poison", slug: "poison" };

describe("PokemonTypeList", () => {
  it("renders the same badges from a types array as from the pair", () => {
    expect(
      renderToStaticMarkup(<PokemonTypeList types={[grass, poison]} />),
    ).toBe(
      renderToStaticMarkup(
        <PokemonTypeList primaryType={grass} secondaryType={poison} />,
      ),
    );
  });

  it("renders nothing for an empty types array", () => {
    expect(renderToStaticMarkup(<PokemonTypeList types={[]} />)).toBe("");
  });

  it("keeps Unknown for a missing primary type", () => {
    expect(
      renderToStaticMarkup(
        <PokemonTypeList primaryType={null} secondaryType={null} />,
      ),
    ).toContain("Unknown");
  });
});
