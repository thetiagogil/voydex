import { describe, expect, it } from "vitest";

import { getMilestonePickRowClassName } from "./milestone-pick-row";

const classes = (
  state: Parameters<typeof getMilestonePickRowClassName>[0]["state"],
  selected = false,
) => getMilestonePickRowClassName({ selected, state }).split(" ");

describe("getMilestonePickRowClassName", () => {
  it("draws a row still ahead as an empty slot, like a Pokémon not caught", () => {
    expect(classes("todo")).toContain("empty-slot");
  });

  it("keeps the slot's border width on every row, so columns line up", () => {
    expect(classes("done")).toContain("border-[2.5px]");
    expect(classes("next")).toContain("border-[2.5px]");
  });

  it("outlines the next objective on its edge in the softened red", () => {
    expect(classes("next")).toEqual(
      expect.arrayContaining(["border-action/45", "shadow-soft"]),
    );
    expect(classes("next")).not.toContain("bg-select-soft");
  });

  it("gives the picked row the selected tint, as every selected row has", () => {
    expect(classes("todo", true)).toContain("bg-select-soft");
    expect(classes("done", true)).toContain("bg-select-soft");
    expect(classes("next", true)).toEqual(
      expect.arrayContaining(["bg-select-soft", "border-action/45"]),
    );
  });
});
