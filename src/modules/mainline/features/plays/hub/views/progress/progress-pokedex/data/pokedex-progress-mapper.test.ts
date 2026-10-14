import { describe, expect, it } from "vitest";

import type {
  Generation,
  Pokedex,
  PokemonAttributes,
  PokemonForm,
  Type,
} from "@/modules/reference/types";

import type { MainlinePlayPokedexDetailRow } from "../types";
import { buildMainlinePlayPokedexData } from "./pokedex-progress-mapper";

describe("Mainline Play Pokédex mapper", () => {
  it("uses exact-generation types and normalizes caught as the strongest state", () => {
    const generations = [
      { id: 1, sort_order: 1 },
      { id: 2, sort_order: 2 },
    ] as Generation[];
    const forms = [
      {
        form_order: 1,
        id: 2,
        is_default: true,
        name: "Ivysaur",
        species_id: 2,
        sprite_slug: "ivysaur",
      },
    ] as PokemonForm[];
    const attributes = [
      {
        form_id: 2,
        generation_start_id: 1,
        primary_type_id: 12,
        secondary_type_id: 4,
      },
      {
        form_id: 2,
        generation_start_id: 2,
        primary_type_id: 12,
        secondary_type_id: null,
      },
    ] as PokemonAttributes[];
    const types = [
      { id: 12, name: "Grass", slug: "grass" },
      { id: 4, name: "Poison", slug: "poison" },
    ] as Type[];
    const pokedexes = [
      {
        id: 1,
        is_completion_relevant: true,
        name: "Kanto Pokédex",
        pokedex_kind: "regional",
        slug: "kanto",
        sort_order: 1,
      },
    ] as Pokedex[];
    const detailRows = [
      {
        display_form_id: 2,
        is_caught: true,
        is_included_in_completion: true,
        is_seen: false,
        is_source_required_for_completion: true,
        national_number: 2,
        pokedex_id: 1,
        pokedex_number: 2,
        species_id: 2,
        species_name: "Ivysaur",
        species_slug: "ivysaur",
      },
    ] as MainlinePlayPokedexDetailRow[];

    const data = buildMainlinePlayPokedexData({
      gameName: "Pokémon Red",
      generationId: 1,
      rows: {
        attributes,
        detailRows,
        forms,
        generations,
        pokedexes,
        types,
      },
    });

    expect(data.scopes[0]?.entries[0]).toMatchObject({
      primaryType: { name: "Grass" },
      secondaryType: { name: "Poison" },
      state: "caught",
    });
  });
});
