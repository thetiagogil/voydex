import { describe, expect, it } from "vitest";

import { resolveFormClasses, type FormClass } from "./form-classes";

const classes = (entries: [number, FormClass][]) => new Map(entries);

describe("resolveFormClasses", () => {
  it("puts the default with the species' variants", () => {
    const result = resolveFormClasses(
      [{ id: 5200 }, { id: 5201 }, { id: 5203 }],
      classes([
        [5201, "variant"],
        [5203, "battle"],
      ]),
    );

    expect([...result]).toEqual([
      [5200, "variant"],
      [5201, "variant"],
      [5203, "battle"],
    ]);
  });

  it("puts the default with the forms it switches between", () => {
    const result = resolveFormClasses(
      [{ id: 47900 }, { id: 47901 }],
      classes([[47901, "form"]]),
    );

    expect(result.get(47900)).toBe("form");
  });

  it("gives a default with only battle forms no class", () => {
    const result = resolveFormClasses(
      [{ id: 600 }, { id: 601 }],
      classes([[601, "battle"]]),
    );

    expect(result.get(600)).toBeNull();
  });
});
