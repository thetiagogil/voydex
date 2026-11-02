import { describe, expect, it } from "vitest";

import type { FavouritePokemonRows } from "@/modules/mainline/features/collection/server/favourite-pokemon-reader";
import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import type { TrainerPokemonRows } from "@/modules/mainline/shared/server/trainer-pokemon-reader";

import { buildFavouritePokemon } from "./favourite-pokemon-model";

const types = [
  { id: 4, name: "Electric", slug: "electric" },
  { id: 9, name: "Fire", slug: "fire" },
  { id: 13, name: "Rock", slug: "rock" },
] as unknown as TrainerPokemonRows["types"];

const rows: FavouritePokemonRows = {
  attributes: [
    { form_id: 2501, generation_start_id: 7, primary_type_id: 4 },
    {
      form_id: 5901,
      generation_start_id: 8,
      primary_type_id: 9,
      secondary_type_id: 13,
    },
  ] as unknown as FavouritePokemonRows["attributes"],
  favourites: [
    { created_at: "2026-11-02T10:00:00Z", form_id: 5901, species_id: 59 },
    { created_at: "2026-11-01T10:00:00Z", form_id: 2501, species_id: 25 },
    /* A form the reference no longer has. */
    { created_at: "2026-10-01T10:00:00Z", form_id: 9999, species_id: 25 },
  ],
  forms: [
    {
      id: 2501,
      is_default: false,
      name: "Pikachu (Partner)",
      slug: "pikachu-partner",
      species_id: 25,
    },
    {
      id: 5901,
      is_default: true,
      name: "Arcanine",
      slug: "arcanine",
      species_id: 59,
    },
  ],
  species: [
    { id: 25, name: "Pikachu", national_number: 25, slug: "pikachu" },
    { id: 59, name: "Arcanine", national_number: 59, slug: "arcanine" },
  ],
};

const pikachu = { speciesId: 25 } as TrainerPokemonEntry;

describe("buildFavouritePokemon", () => {
  it("keeps the newest heart first and opens each on its own form in the Codex", () => {
    const favourites = buildFavouritePokemon(rows, types, []);

    expect(favourites.map((each) => [each.name, each.codexHref])).toEqual([
      ["Arcanine", "/codex/pokemon/arcanine"],
      ["Pikachu (Partner)", "/codex/pokemon/pikachu?form=pikachu-partner"],
    ]);
  });

  it("reads each form's own types", () => {
    const [arcanine, pikachuPartner] = buildFavouritePokemon(rows, types, []);

    expect(arcanine?.types.map((type) => type.slug)).toEqual(["fire", "rock"]);
    expect(pikachuPartner?.types.map((type) => type.slug)).toEqual([
      "electric",
    ]);
  });

  it("marks a favourite owned once its species has joined your teams, in any form", () => {
    const [arcanine, pikachuPartner] = buildFavouritePokemon(rows, types, [
      pikachu,
    ]);

    expect(arcanine?.owned).toBeNull();
    expect(pikachuPartner?.owned).toBe(pikachu);
  });

  it("is empty with no favourites", () => {
    expect(
      buildFavouritePokemon(
        { attributes: [], favourites: [], forms: [], species: [] },
        types,
        [pikachu],
      ),
    ).toEqual([]);
  });
});
