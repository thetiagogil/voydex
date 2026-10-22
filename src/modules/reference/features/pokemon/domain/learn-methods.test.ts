import { describe, expect, it } from "vitest";

import { formatLearnMethodDetail, getLearnMethodLabel } from "./learn-methods";

describe("getLearnMethodLabel", () => {
  it("shortens the common methods and keeps the others' names", () => {
    expect(getLearnMethodLabel("level_up", "Level Up")).toBe("Level up");
    expect(getLearnMethodLabel("egg", "Egg Move")).toBe("Egg");
    expect(getLearnMethodLabel("reminder", "Move Reminder")).toBe(
      "Move Reminder",
    );
  });
});

describe("formatLearnMethodDetail", () => {
  it("says the level, the machine, or the method", () => {
    expect(
      formatLearnMethodDetail({
        level: 12,
        machineLabel: null,
        name: "Level Up",
        slug: "level_up",
      }),
    ).toBe("Lv. 12");
    expect(
      formatLearnMethodDetail({
        level: null,
        machineLabel: "TM08",
        name: "TM",
        slug: "tm",
      }),
    ).toBe("TM 08");
    expect(
      formatLearnMethodDetail({
        level: null,
        machineLabel: null,
        name: "Evolution",
        slug: "evolution",
      }),
    ).toBe("Evo.");
    expect(
      formatLearnMethodDetail({
        level: null,
        machineLabel: null,
        name: "Egg Move",
        slug: "egg",
      }),
    ).toBe("Egg");
  });
});
