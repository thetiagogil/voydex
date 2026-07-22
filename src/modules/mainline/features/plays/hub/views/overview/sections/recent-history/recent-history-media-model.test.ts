import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

import { getTimelineMedia } from "./recent-history-media-model";

describe("getTimelineMedia", () => {
  it("resolves artwork for Pokemon refs and shiny team snapshots", () => {
    const event = {
      pokemon_refs: [
        {
          form_id: 25,
          species_name: "Pikachu",
          sprite_slug: "pikachu",
        },
      ],
      team_snapshots: [
        {
          form_id: 6,
          is_shiny: true,
          species_name: "Charizard",
          sprite_slug: "charizard",
        },
      ],
    } as unknown as MainlinePlayTimelineEvent;

    expect(getTimelineMedia(event)).toEqual([
      {
        imageUrl: "https://img.pokemondb.net/sprites/home/normal/pikachu.png",
        key: "Pikachu-0",
        name: "Pikachu",
      },
      {
        imageUrl: "https://img.pokemondb.net/sprites/home/shiny/charizard.png",
        key: "Charizard-1",
        name: "Charizard",
      },
    ]);
  });

  it("keeps a placeholder slot for a linked Pokemon with no image metadata", () => {
    const event = {
      pokemon_refs: [{ form_id: 999, species_name: "MissingNo" }],
      team_snapshots: [],
    } as unknown as MainlinePlayTimelineEvent;

    expect(getTimelineMedia(event)).toEqual([
      {
        imageUrl: null,
        key: "MissingNo-0",
        name: "MissingNo",
      },
    ]);
  });

  it("keeps before-and-after media keys unique for the same Pokemon record", () => {
    const event = {
      pokemon_refs: [
        {
          play_pokemon_id: "member-id",
          species_name: "Toxtricity",
          sprite_slug: "toxtricity",
        },
        {
          play_pokemon_id: "member-id",
          species_name: "Toxtricity (Low Key)",
          sprite_slug: "toxtricity-low-key",
        },
      ],
      team_snapshots: [],
    } as unknown as MainlinePlayTimelineEvent;

    expect(getTimelineMedia(event).map((item) => item.key)).toEqual([
      "member-id-0",
      "member-id-1",
    ]);
  });
});
