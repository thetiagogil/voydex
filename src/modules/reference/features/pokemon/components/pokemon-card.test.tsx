import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PokemonCard } from "./pokemon-card";

const render = (compact: boolean) =>
  renderToStaticMarkup(
    <PokemonCard
      compact={compact}
      state="plain"
      size="sm"
      imageAlt=""
      imageUrl={null}
      name="Pikachu"
      types={[{ name: "Electric", slug: "electric" }]}
    />,
  );

const rootClassOf = (html: string) =>
  /^<div [^>]*class="([^"]*)"/.exec(html)?.[1] ?? "";

describe("PokemonCard compact", () => {
  it("stands its art and name in the middle, with no line kept for a second name line", () => {
    const html = render(true);

    expect(rootClassOf(html)).toContain("justify-center");
    expect(html).not.toContain("min-h-[2lh]");
  });

  it("leaves the full card's layout alone", () => {
    expect(rootClassOf(render(false))).not.toContain("justify-center");
  });
});
