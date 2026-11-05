import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { EggGroup } from "@/modules/reference/types";

import { PokemonDetailBreedingCard } from "./pokemon-detail-training-card";

const eggGroup = (id: number, name: string): EggGroup => ({
  created_at: "2026-01-01T00:00:00Z",
  id,
  introduced_generation_id: 2,
  name,
  slug: name.toLowerCase(),
  sort_order: id,
});

describe("PokemonDetailBreedingCard", () => {
  it("names the egg groups in slot order", () => {
    const html = renderToStaticMarkup(
      <PokemonDetailBreedingCard
        eggCycles={20}
        eggGroups={[eggGroup(1, "Monster"), eggGroup(13, "Dragon")]}
        femaleRatioEighths={1}
        hasGender
        note={null}
      />,
    );

    expect(html).toContain("Monster · Dragon");
    expect(html).not.toContain('data-slot="pending-data"');
  });

  it("reads one group as the game gives it, Undiscovered included", () => {
    const html = renderToStaticMarkup(
      <PokemonDetailBreedingCard
        eggCycles={120}
        eggGroups={[eggGroup(15, "Undiscovered")]}
        femaleRatioEighths={null}
        hasGender
        note={null}
      />,
    );

    expect(html).toContain("Undiscovered");
    expect(html).not.toContain("·");
  });

  it("shows the note in place of eggs when the game has none", () => {
    const html = renderToStaticMarkup(
      <PokemonDetailBreedingCard
        eggCycles={20}
        eggGroups={[eggGroup(1, "Monster")]}
        femaleRatioEighths={1}
        hasGender
        note={{ arrivesIn: 2, text: "Eggs arrive in" }}
        noteHref="/codex/pokemon/charizard?generation=ii"
      />,
    );

    expect(html).toContain("Eggs arrive in");
    expect(html).not.toContain("Egg groups");
  });
});
