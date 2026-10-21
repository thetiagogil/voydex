import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import {
  applyRosterMove,
  describeRosterMove,
  formatRosterSlot,
  getRosterMove,
  teamNeedsOneMessage,
} from "./roster-moves";

const member = (
  id: string,
  rosterState: "active" | "reserve" | "retired",
  slot: number | null,
) =>
  ({
    nickname: id,
    play_pokemon_id: id,
    roster_state_slug: rosterState,
    slot,
    species_name: id,
  }) as MainlinePlayTeamMember;

const roster = [
  member("Leaf", "active", 1),
  member("Ember", "active", 2),
  member("Peck", "reserve", 7),
  member("Gone", "retired", null),
];

const slotsOf = (members: MainlinePlayTeamMember[]) =>
  Object.fromEntries(
    members.map((entry) => [
      entry.play_pokemon_id,
      [entry.roster_state_slug, entry.slot],
    ]),
  );

describe("getRosterMove", () => {
  it("swaps onto a taken slot, in the team or across to the reserve", () => {
    expect(getRosterMove(roster, "Leaf", 2)).toMatchObject({
      kind: "swap",
      with: { play_pokemon_id: "Ember" },
    });
    expect(getRosterMove(roster, "Leaf", 7)).toMatchObject({
      kind: "swap",
      with: { play_pokemon_id: "Peck" },
    });
  });

  it("moves onto an open slot and stays put on its own", () => {
    expect(getRosterMove(roster, "Peck", 4)).toEqual({
      kind: "move",
      toSlot: 4,
    });
    expect(getRosterMove(roster, "Leaf", 1)).toEqual({ kind: "stay" });
  });

  it("keeps one Pokémon on the team", () => {
    const solo = [member("Solo", "active", 1), member("Bench", "reserve", 7)];

    expect(getRosterMove(solo, "Solo", 8)).toEqual({
      kind: "blocked",
      reason: teamNeedsOneMessage,
    });
    expect(getRosterMove(solo, "Solo", 7).kind).toBe("swap");
    expect(getRosterMove(solo, "Solo", 3).kind).toBe("move");
    expect(getRosterMove(roster, "Leaf", 9).kind).toBe("move");
  });

  it("refuses past Pokémon and slots past the reserve", () => {
    expect(getRosterMove(roster, "Gone", 3).kind).toBe("blocked");
    expect(getRosterMove(roster, "Leaf", 13).kind).toBe("blocked");
    expect(getRosterMove(roster, "Unknown", 3).kind).toBe("blocked");
  });
});

describe("applyRosterMove", () => {
  it("trades both slots and states in a swap", () => {
    expect(slotsOf(applyRosterMove(roster, "Leaf", 7))).toMatchObject({
      Leaf: ["reserve", 7],
      Peck: ["active", 1],
    });
  });

  it("moves into an open slot and leaves the rest alone", () => {
    expect(slotsOf(applyRosterMove(roster, "Ember", 12))).toEqual({
      Ember: ["reserve", 12],
      Gone: ["retired", null],
      Leaf: ["active", 1],
      Peck: ["reserve", 7],
    });
  });

  it("changes nothing for a refused move", () => {
    const solo = [member("Solo", "active", 1)];

    expect(applyRosterMove(solo, "Solo", 8)).toEqual(solo);
  });
});

describe("roster move words", () => {
  it("names slots as the roster reads them", () => {
    expect(formatRosterSlot(3)).toBe("Team slot 3");
    expect(formatRosterSlot(9)).toBe("Reserve R3");
  });

  it("says what a move or a swap did", () => {
    const [leaf, ember] = roster;

    expect(
      describeRosterMove(leaf!, { kind: "swap", toSlot: 2, with: ember! }),
    ).toBe("Leaf swapped with Ember");
    expect(describeRosterMove(leaf!, { kind: "move", toSlot: 8 })).toBe(
      "Leaf moved to Reserve R2",
    );
  });
});
