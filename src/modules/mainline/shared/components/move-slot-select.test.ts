import { describe, expect, it } from "vitest";

import { groupMoveSlotOptions, type MoveSlotOption } from "./move-slot-select";

const move = (
  label: string,
  learn: MoveSlotOption["learn"] = null,
): MoveSlotOption => ({ label, learn, value: label });
const levelUp = (level: number) => ({
  detail: `Lv. ${level}`,
  label: "Level up",
  methodOrder: 1,
  order: level,
});
const tm = (number: number) => ({
  detail: `TM ${number}`,
  label: "TM",
  methodOrder: 2,
  order: number,
});

describe("groupMoveSlotOptions", () => {
  it("groups by how it's learned, in order, the empty choice first", () => {
    const groups = groupMoveSlotOptions(move("Empty move slot"), [
      move("Swift", tm(32)),
      move("Growl", levelUp(1)),
      move("Protect", tm(7)),
      move("Scary Face", levelUp(12)),
      move("Old Move"),
    ]);

    expect(
      groups.map((group) => [
        group.value,
        group.items.map((item) => item.label),
      ]),
    ).toEqual([
      ["", ["Empty move slot"]],
      ["Level up", ["Growl", "Scary Face"]],
      ["TM", ["Protect", "Swift"]],
      ["Others it knows", ["Old Move"]],
    ]);
  });
});
