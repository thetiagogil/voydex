import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { MainlinePlayPokedexEntry } from "../types";
import { PokedexSpeciesItem } from "./pokedex-species-item";

const slowpoke: MainlinePlayPokedexEntry = {
  displayFormName: null,
  imageUrl: null,
  isIncludedInCompletion: true,
  isSourceRequiredForCompletion: false,
  nationalNumber: 79,
  pokedexNumber: 79,
  primaryType: { id: 14, name: "Psychic", slug: "psychic" },
  secondaryType: null,
  speciesId: 79,
  speciesName: "Slowpoke",
  speciesSlug: "slowpoke",
  state: "missing",
};

const labelOf = (entry: MainlinePlayPokedexEntry) =>
  /aria-label="([^"]*)"[^>]*aria-pressed/.exec(
    renderToStaticMarkup(
      <PokedexSpeciesItem
        entry={entry}
        isPending={false}
        mode="caught"
        onStateChange={() => undefined}
        state="missing"
      />,
    ),
  )?.[1];

describe("PokedexSpeciesItem", () => {
  it("names the button by the species, or by the form where it has one", () => {
    expect(labelOf(slowpoke)).toBe("Mark Slowpoke as Caught");
    expect(labelOf({ ...slowpoke, displayFormName: "Galarian Slowpoke" })).toBe(
      "Mark Galarian Slowpoke as Caught",
    );
  });
});
