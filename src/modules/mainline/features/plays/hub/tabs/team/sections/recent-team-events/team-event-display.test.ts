import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

import { getTeamEventDisplay } from "./team-event-display";

const event = (
  eventTypeSlug: string,
  pokemonRefs: MainlinePlayTimelineEvent["pokemon_refs"],
  title = "Team event",
) =>
  ({
    event_id: "event-id",
    event_type_slug: eventTypeSlug,
    pokemon_refs: pokemonRefs,
    title,
  }) as MainlinePlayTimelineEvent;

describe("getTeamEventDisplay", () => {
  it("uses event-time before and after identities for evolutions", () => {
    const display = getTeamEventDisplay(
      event("pokemon_evolved", [
        {
          form_name: "Crocalor",
          play_pokemon_id: "starter",
          role: "from",
          species_name: "Crocalor",
          sprite_slug: "crocalor",
        },
        {
          form_name: "Skeledirge",
          play_pokemon_id: "starter",
          role: "to",
          species_name: "Skeledirge",
          sprite_slug: "skeledirge",
        },
      ]),
    );

    expect(display.text.map((part) => part.text).join("")).toBe(
      "Skeledirge evolved from Crocalor.",
    );
    expect(display.visuals).toHaveLength(2);
    expect(display.visuals.map((visual) => visual.kind)).toEqual([
      "pokemon",
      "pokemon",
    ]);
  });

  it("shows the roster destination for a movement event", () => {
    const display = getTeamEventDisplay(
      event(
        "pokemon_moved",
        [
          {
            nickname: "Comet",
            play_pokemon_id: "member",
            role: "subject",
            species_name: "Decidueye",
          },
        ],
        "Comet moved to reserves",
      ),
    );

    expect(display.text.map((part) => part.text).join("")).toBe(
      "Comet moved to Reserve.",
    );
    expect(display.visuals.at(-1)).toEqual({
      kind: "destination",
      label: "Reserve",
    });
  });

  it("prefers a structured roster destination over event copy", () => {
    const display = getTeamEventDisplay(
      event(
        "pokemon_moved",
        [
          {
            destination: "reserve",
            nickname: "Comet",
            play_pokemon_id: "member",
            role: "subject",
            species_name: "Decidueye",
          },
        ],
        "Comet changed roster position",
      ),
    );

    expect(display.text.map((part) => part.text).join("")).toBe(
      "Comet moved to Reserve.",
    );
    expect(display.visuals.at(-1)).toEqual({
      kind: "destination",
      label: "Reserve",
    });
  });

  it("keeps an image placeholder for a Team event with no Pokémon ref", () => {
    const display = getTeamEventDisplay(event("pokemon_removed", []));

    expect(display.visuals).toEqual([
      {
        kind: "pokemon",
        pokemon: expect.objectContaining({
          imageUrl: null,
          name: "Unknown Pokémon",
        }),
      },
    ]);
  });
});
