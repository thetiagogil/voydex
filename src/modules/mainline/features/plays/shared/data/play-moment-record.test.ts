import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

import {
  getPlayMomentRecord,
  getPlayMomentTypeByFormId,
} from "./play-moment-record";

const event = (fields: Partial<Record<string, unknown>>) =>
  ({
    body: null,
    event_id: "event",
    event_type_name: null,
    milestone_id: null,
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

describe("getPlayMomentRecord", () => {
  it("wears the Pokémon a moment left on the team, on the neutral tint by default", () => {
    const record = getPlayMomentRecord(evolution);

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
    const typeByFormId = getPlayMomentTypeByFormId([
      { form_id: 2, primaryType: { slug: "electric" } },
      { form_id: null, primaryType: { slug: "grass" } },
    ]);

    expect(
      getPlayMomentRecord(evolution, { typeByFormId }).medallion,
    ).toMatchObject({ kind: "pokemon", type: "electric" });
  });

  it("fades a retired Pokémon and keeps the note that came with it", () => {
    const record = getPlayMomentRecord(
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
    const record = getPlayMomentRecord(
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

describe("getPlayMomentRecord for other moments", () => {
  it("gives a gym milestone its badge, and any other milestone gold", () => {
    const milestone = event({
      event_type_name: "Milestone completed",
      event_type_slug: "story_milestone",
      milestone_id: 7,
      title: "Water Badge",
    });

    expect(
      getPlayMomentRecord(milestone, {
        badgeTypeByMilestoneId: new Map([[7, "water"]]),
      }).medallion,
    ).toEqual({ kind: "badge", type: "water" });
    expect(getPlayMomentRecord(milestone).medallion.kind).toBe("gold");
    expect(getPlayMomentRecord(milestone).label).toBe("Milestone");
  });

  it("draws a note warm and quotes its title as the line", () => {
    const record = getPlayMomentRecord(
      event({ event_type_slug: "journal_note", title: "Saved before Leon" }),
    );

    expect(record.medallion.kind).toBe("note");
    expect(record.label).toBe("Journal note");
    expect(record.headline).toEqual([{ text: "“Saved before Leon”" }]);
  });

  it("keeps an unknown moment on the neutral fallback", () => {
    const record = getPlayMomentRecord(
      event({ event_type_slug: "future_event" }),
    );

    expect(record.label).toBe("Timeline event");
    expect(record.medallion.kind).toBe("status");
  });

  it("shows the replacement in a replaced moment", () => {
    const record = getPlayMomentRecord(
      event({
        event_type_slug: "pokemon_replaced",
        pokemon_refs: [
          { role: "replaced", species_name: "Wooloo", sprite_slug: "wooloo" },
          { role: "replacement", species_name: "Eevee", sprite_slug: "eevee" },
        ],
      }),
    );

    expect(record.medallion).toMatchObject({
      imageUrl: "https://img.pokemondb.net/sprites/home/normal/eevee.png",
    });
  });
});
