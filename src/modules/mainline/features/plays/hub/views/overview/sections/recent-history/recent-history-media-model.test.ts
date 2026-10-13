import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

import { getTimelineEventImageUrl } from "./recent-history-media-model";

const event = (pokemonRefs: unknown[]) =>
  ({ pokemon_refs: pokemonRefs }) as unknown as MainlinePlayTimelineEvent;

describe("getTimelineEventImageUrl", () => {
  it("shows what a Pokémon evolved into, not what it was", () => {
    expect(
      getTimelineEventImageUrl(
        event([
          { role: "from", species_name: "Rookidee", sprite_slug: "rookidee" },
          {
            role: "to",
            species_name: "Corvisquire",
            sprite_slug: "corvisquire",
          },
        ]),
      ),
    ).toBe("https://img.pokemondb.net/sprites/home/normal/corvisquire.png");
  });

  it("shows the replacement in a replaced moment", () => {
    expect(
      getTimelineEventImageUrl(
        event([
          { role: "replaced", species_name: "Wooloo", sprite_slug: "wooloo" },
          { role: "replacement", species_name: "Eevee", sprite_slug: "eevee" },
        ]),
      ),
    ).toBe("https://img.pokemondb.net/sprites/home/normal/eevee.png");
  });

  it("uses the shiny art for a shiny Pokémon", () => {
    expect(
      getTimelineEventImageUrl(
        event([
          {
            is_shiny: true,
            role: "subject",
            species_name: "Charizard",
            sprite_slug: "charizard",
          },
        ]),
      ),
    ).toBe("https://img.pokemondb.net/sprites/home/shiny/charizard.png");
  });

  it("has no art when no Pokémon has image metadata", () => {
    expect(
      getTimelineEventImageUrl(
        event([{ form_id: 999, species_name: "MissingNo" }]),
      ),
    ).toBeNull();
  });
});
