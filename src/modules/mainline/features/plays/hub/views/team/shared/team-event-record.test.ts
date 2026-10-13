import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";

import {
  getTeamEventRecord,
  getTeamEventTypeByFormId,
} from "./team-event-record";

const event = (fields: Partial<Record<string, unknown>>) =>
  ({
    body: null,
    event_id: "event",
    event_type_name: null,
    pokemon_refs: [],
    title: null,
    ...fields,
  }) as unknown as MainlinePlayTimelineEvent;

const evolution = event({
  event_type_slug: "pokemon_evolved",
  pokemon_refs: [
    { form_id: 1, role: "from", species_name: "Toxel", sprite_slug: "toxel" },
    {
      form_id: 2,
      role: "to",
      species_name: "Toxtricity",
      sprite_slug: "toxtricity-amped",
    },
  ],
});

describe("getTeamEventRecord", () => {
  it("wears the Pokémon a moment left on the team, on the neutral tint by default", () => {
    const record = getTeamEventRecord(evolution);

    expect(record.label).toBe("Evolved");
    expect(record.faded).toBe(false);
    expect(record.medallion).toEqual({
      imageUrl:
        "https://img.pokemondb.net/sprites/home/normal/toxtricity-amped.png",
      kind: "pokemon",
      type: null,
    });
    expect(record.headline.map((part) => part.text).join("")).toBe(
      "Toxtricity evolved from Toxel.",
    );
  });

  it("tints the medallion with the type of a form on the roster", () => {
    const typeByFormId = getTeamEventTypeByFormId([
      {
        form_id: 2,
        primaryType: { slug: "electric" },
      } as MainlinePlayTeamMember,
      {
        form_id: null,
        primaryType: { slug: "grass" },
      } as MainlinePlayTeamMember,
    ]);

    expect(getTeamEventRecord(evolution, typeByFormId).medallion).toMatchObject(
      { kind: "pokemon", type: "electric" },
    );
  });

  it("fades a retired Pokémon and keeps the note that came with it", () => {
    const record = getTeamEventRecord(
      event({
        body: "Rested after Hammerlocke.",
        event_type_slug: "pokemon_retired",
        pokemon_refs: [
          { role: "subject", species_name: "Boltund", sprite_slug: "boltund" },
        ],
        title: "Retired Boltund",
      }),
    );

    expect(record.faded).toBe(true);
    expect(record.description).toBe("Rested after Hammerlocke.");
  });

  it("falls back to the event's icon without art and drops a body that repeats the title", () => {
    const record = getTeamEventRecord(
      event({
        body: "Added Pikachu",
        event_type_slug: "pokemon_added",
        pokemon_refs: [{ role: "subject", species_name: "Pikachu" }],
        title: "Added Pikachu",
      }),
    );

    expect(record.medallion.kind).toBe("status");
    expect(record.description).toBeNull();
  });
});
