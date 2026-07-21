import { describe, expect, it } from "vitest";

import {
  getMainlineTimelinePokemonFormIds,
  hydrateMainlineTimelinePokemonImages,
} from "@/modules/mainline/features/plays/hub/data/play-timeline-mappers";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import type { PokemonForm } from "@/modules/reference/types";

describe("Mainline timeline Pokemon image hydration", () => {
  const events = [
    {
      pokemon_refs: [{ form_id: 25, species_name: "Pikachu" }],
      team_snapshots: [
        { form_id: 6, species_name: "Charizard" },
        { form_id: 25, species_name: "Pikachu" },
      ],
    } as unknown as MainlinePlayTimelineEvent,
  ];

  it("collects the unique forms represented by event refs and snapshots", () => {
    expect(getMainlineTimelinePokemonFormIds(events)).toEqual([25, 6]);
  });

  it("adds each form sprite slug without changing the event shape", () => {
    const hydratedEvents = hydrateMainlineTimelinePokemonImages(events, [
      { id: 6, sprite_slug: "charizard" } as PokemonForm,
      { id: 25, sprite_slug: "pikachu" } as PokemonForm,
    ]);

    expect(hydratedEvents[0]?.pokemon_refs).toEqual([
      {
        form_id: 25,
        species_name: "Pikachu",
        sprite_slug: "pikachu",
      },
    ]);
    expect(hydratedEvents[0]?.team_snapshots).toEqual([
      {
        form_id: 6,
        species_name: "Charizard",
        sprite_slug: "charizard",
      },
      {
        form_id: 25,
        species_name: "Pikachu",
        sprite_slug: "pikachu",
      },
    ]);
  });
});
