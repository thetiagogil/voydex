import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import {
  applyRosterMove,
  describeRosterMove,
  formatRosterSlot,
  getRosterMove,
  getRosterSlotGroups,
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

describe("getRosterSlotGroups", () => {
  const groups = (id: string, from = roster) => getRosterSlotGroups(from, id);
  const slotOf = (id: string, slot: number, from = roster) =>
    groups(id, from)
      .flatMap((group) => group.slots)
      .find((entry) => entry.value === slot)!;

  it("lists the team's six slots, then the reserve's six", () => {
    const [team, reserve] = groups("Leaf");

    expect(team).toMatchObject({ label: "Team" });
    expect(team!.slots.map((entry) => entry.mark)).toEqual([
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
    ]);
    expect(reserve).toMatchObject({ label: "Reserve" });
    expect(reserve!.slots.map((entry) => [entry.value, entry.mark])).toEqual([
      [7, "R1"],
      [8, "R2"],
      [9, "R3"],
      [10, "R4"],
      [11, "R5"],
      [12, "R6"],
    ]);
  });

  it("shows itself here, who it would swap with, and open slots empty", () => {
    expect(slotOf("Leaf", 1)).toMatchObject({
      image: { name: "Leaf" },
      label: "Team slot 1, here now",
    });
    expect(slotOf("Leaf", 7)).toMatchObject({
      image: { name: "Peck" },
      label: "Move to Reserve R1, swapping with Peck",
    });
    expect(slotOf("Leaf", 4)).toMatchObject({
      image: null,
      label: "Move to Team slot 4",
    });
  });

  it("blocks the team's last Pokémon from an open reserve slot only", () => {
    const solo = [member("Solo", "active", 1), member("Bench", "reserve", 7)];

    expect(slotOf("Solo", 8, solo)).toMatchObject({
      disabledReason: teamNeedsOneMessage,
      label: `Move to Reserve R2, ${teamNeedsOneMessage}`,
    });
    expect(slotOf("Solo", 7, solo).disabledReason).toBeUndefined();
    expect(slotOf("Solo", 3, solo).disabledReason).toBeUndefined();
  });

  it("previews the team after the move, marking where it left", () => {
    const slots = (draft: number) =>
      getRosterSlotGroups(roster, "Leaf", draft).flatMap(
        (group) => group.slots,
      );
    const at = (slot: number, draft: number) =>
      slots(draft).find((entry) => entry.value === slot)!;

    /* Onto a taken slot: the two trade places on screen. */
    expect(at(2, 2).image).toMatchObject({ name: "Leaf" });
    expect(at(1, 2)).toMatchObject({ image: { name: "Ember" }, tone: "from" });
    /* Onto an open slot: where it was shows open. */
    expect(at(4, 4).image).toMatchObject({ name: "Leaf" });
    expect(at(1, 4)).toMatchObject({ image: null, tone: "from" });
    /* Staying, or a refused slot, previews nothing. */
    expect(at(1, 1)).toMatchObject({ image: { name: "Leaf" } });
    expect(at(1, 1).tone).toBeUndefined();
    expect(at(1, 13).tone).toBeUndefined();
    expect(slots(1).some((entry) => entry.tone)).toBe(false);
  });
});
