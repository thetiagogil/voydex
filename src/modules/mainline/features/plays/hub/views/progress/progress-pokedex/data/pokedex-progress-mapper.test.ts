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
        slug: "ivysaur",
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
      pokedexMode: "caught_and_seen",
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

describe("Mainline Play Pokédex mapper, caught only", () => {
  const forms = [
    { form_order: 1, id: 2, is_default: true, species_id: 2, slug: "ivysaur" },
    { form_order: 1, id: 3, is_default: true, species_id: 3, slug: "venusaur" },
  ] as PokemonForm[];
  const row = (speciesId: number, isCaught: boolean, isSeen: boolean) =>
    ({
      display_form_id: speciesId,
      is_caught: isCaught,
      is_included_in_completion: true,
      is_seen: isSeen,
      is_source_required_for_completion: true,
      national_number: speciesId,
      pokedex_id: 1,
      pokedex_number: speciesId,
      species_id: speciesId,
      species_name: `Species ${speciesId}`,
      species_slug: `species-${speciesId}`,
    }) as MainlinePlayPokedexDetailRow;
  const build = (pokedexMode: "caught_and_seen" | "caught_only") =>
    buildMainlinePlayPokedexData({
      gameName: "Pokémon Red",
      generationId: 1,
      pokedexMode,
      rows: {
        attributes: [],
        detailRows: [row(2, true, true), row(3, false, true)],
        forms,
        generations: [{ id: 1, sort_order: 1 }] as Generation[],
        pokedexes: [
          {
            id: 1,
            is_completion_relevant: true,
            name: "Kanto Pokédex",
            pokedex_kind: "regional",
            slug: "kanto",
            sort_order: 1,
          },
        ] as Pokedex[],
        types: [],
      },
    });

  it("shows what you only saw as seen when the Play tracks both", () => {
    const data = build("caught_and_seen");

    expect(data.pokedexMode).toBe("caught_and_seen");
    expect(data.scopes[0]?.entries.map((entry) => entry.state)).toEqual([
      "caught",
      "seen",
    ]);
  });

  it("shows what you only saw as missing when the Play tracks caught only", () => {
    const data = build("caught_only");

    expect(data.pokedexMode).toBe("caught_only");
    expect(data.scopes[0]?.entries.map((entry) => entry.state)).toEqual([
      "caught",
      "missing",
    ]);
  });
});
