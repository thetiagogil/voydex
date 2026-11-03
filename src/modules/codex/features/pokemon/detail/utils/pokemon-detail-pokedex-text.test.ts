import { describe, expect, it } from "vitest";

import type { Game, PokemonPokedexText } from "@/modules/reference/types";

import { selectPokemonDetailPokedexTexts } from "./pokemon-detail-pokedex-text";

const games = [
  { id: 32, name: "Pokémon Shield", sort_order: 2 },
  { id: 31, name: "Pokémon Sword", sort_order: 1 },
] as Game[];

const text = (fields: Partial<PokemonPokedexText>): PokemonPokedexText => ({
  created_at: "",
  entry_text: "",
  form_id: 5200,
  game_id: 31,
  species_id: 52,
  ...fields,
});

describe("selectPokemonDetailPokedexTexts", () => {
  it("reads each version's row for the form, in the games' order", () => {
    const entries = selectPokemonDetailPokedexTexts({
      defaultFormId: 5200,
      formId: 5202,
      games,
      texts: [
        text({
          entry_text: "Shield's Galarian words.",
          form_id: 5202,
          game_id: 32,
        }),
        text({ entry_text: "Sword's Galarian words.", form_id: 5202 }),
        text({ entry_text: "Sword's Kantonian words." }),
      ],
    });

    expect(entries).toEqual([
      { gameNames: ["Sword"], text: "Sword's Galarian words." },
      { gameNames: ["Shield"], text: "Shield's Galarian words." },
    ]);
  });

  it("falls back to the species' default form and folds versions that agree", () => {
    const entries = selectPokemonDetailPokedexTexts({
      defaultFormId: 5200,
      formId: 5201,
      games,
      texts: [
        text({ entry_text: "The same words." }),
        text({ entry_text: "The same words.", game_id: 32 }),
      ],
    });

    expect(entries).toEqual([
      { gameNames: ["Sword", "Shield"], text: "The same words." },
    ]);
  });

  it("is empty for a game with no row", () => {
    expect(
      selectPokemonDetailPokedexTexts({
        defaultFormId: 5200,
        formId: 5200,
        games,
        texts: [text({ entry_text: "Other game.", game_id: 1 })],
      }),
    ).toEqual([]);
  });
});
