import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import {
  formatTeamRosterSummary,
  getDefaultTeamMember,
  getTeamRosterSlots,
  getTeamRosterSummary,
} from "./team-roster-model";

const buildMember = (
  id: string,
  rosterState: "active" | "reserve",
  slot: number,
) => {
  return {
    play_pokemon_id: id,
    roster_state_slug: rosterState,
    slot,
  } as MainlinePlayTeamMember;
};

describe("getTeamRosterSlots", () => {
  it("preserves all Active positions and truthful unrecorded gaps", () => {
    const slots = getTeamRosterSlots(
      [buildMember("first", "active", 1), buildMember("third", "active", 3)],
      "active",
    );

    expect(slots.map((slot) => slot.label)).toEqual([
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
    ]);
    expect(slots.map((slot) => slot.member?.play_pokemon_id ?? null)).toEqual([
      "first",
      null,
      "third",
      null,
      null,
      null,
    ]);
  });

  it("maps stored Reserve slots 7 through 12 to R1 through R6", () => {
    const slots = getTeamRosterSlots(
      [
        buildMember("reserve-first", "reserve", 7),
        buildMember("reserve-last", "reserve", 12),
      ],
      "reserve",
    );

    expect(slots[0]?.label).toBe("R1");
    expect(slots[0]?.member?.play_pokemon_id).toBe("reserve-first");
    expect(slots[5]?.label).toBe("R6");
    expect(slots[5]?.member?.play_pokemon_id).toBe("reserve-last");
  });
});

describe("getTeamRosterSummary", () => {
  it("counts open slots in the team and the reserve, which always shows", () => {
    const teamOnly = getTeamRosterSummary([
      buildMember("first", "active", 1),
      buildMember("second", "active", 2),
    ]);
    const withReserve = getTeamRosterSummary([
      ...Array.from({ length: 6 }, (_, index) =>
        buildMember(`active-${index}`, "active", index + 1),
      ),
      buildMember("reserve-first", "reserve", 7),
      buildMember("reserve-third", "reserve", 9),
    ]);

    expect(teamOnly).toEqual({
      activeCount: 2,
      openSlotCount: 10,
      reserveCount: 0,
    });
    expect(formatTeamRosterSummary(teamOnly)).toBe("2 active · 10 open slots");
    expect(formatTeamRosterSummary(withReserve)).toBe(
      "6 active · 2 in reserve · 4 open slots",
    );
  });

  it("says so when the Play has no Pokémon yet", () => {
    expect(formatTeamRosterSummary(getTeamRosterSummary([]))).toBe(
      "No Pokémon yet",
    );
  });
});

describe("getDefaultTeamMember", () => {
  const roster = [
    buildMember("second", "active", 2),
    buildMember("first", "active", 1),
    buildMember("reserve", "reserve", 7),
  ];

  it("opens on the Pokémon the link names", () => {
    expect(getDefaultTeamMember(roster, "reserve")?.play_pokemon_id).toBe(
      "reserve",
    );
  });

  it("falls back to the first by slot for an unknown or missing id", () => {
    expect(getDefaultTeamMember(roster, "gone")?.play_pokemon_id).toBe("first");
    expect(getDefaultTeamMember(roster)?.play_pokemon_id).toBe("first");
  });
});
