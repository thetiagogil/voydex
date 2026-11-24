import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PokemonCard } from "./pokemon-card";

describe("PokemonCard", () => {
  it("reads its number, its name, then its types, as the Codex and the Planner's list draw it", () => {
    const html = renderToStaticMarkup(
      <PokemonCard
        state="plain"
        size="sm"
        imageAlt=""
        imageUrl={null}
        name="Raichu"
        nameReadAs="Alolan Raichu"
        number="#026"
        types={[
          { name: "Electric", slug: "electric" },
          { name: "Psychic", slug: "psychic" },
        ]}
      />,
    );

    expect(html.indexOf("#026")).toBeLessThan(html.indexOf("Alolan Raichu"));
    expect(html.indexOf("Alolan Raichu")).toBeLessThan(
      html.indexOf("Electric"),
    );
    expect(html).toContain("Psychic");
  });
});
