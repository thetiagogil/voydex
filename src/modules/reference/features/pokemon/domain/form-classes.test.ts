import { describe, expect, it } from "vitest";

import {
  getChangeableFormIds,
  resolveFormClasses,
  type FormClass,
} from "./form-classes";

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

describe("getChangeableFormIds", () => {
  const rotom = [{ id: 47900 }, { id: 47901 }, { id: 47902 }];
  const rotomClasses = resolveFormClasses(
    rotom,
    classes([
      [47901, "form"],
      [47902, "form"],
    ]),
  );

  it("offers a form's other forms, its default among them", () => {
    expect(getChangeableFormIds(rotom, rotomClasses, 47901)).toEqual([
      47900, 47902,
    ]);
  });

  it("offers a variant nothing", () => {
    const arcanine = [{ id: 5900 }, { id: 5901 }];
    const arcanineClasses = resolveFormClasses(
      arcanine,
      classes([[5901, "variant"]]),
    );

    expect(getChangeableFormIds(arcanine, arcanineClasses, 5901)).toEqual([]);
    expect(getChangeableFormIds(arcanine, arcanineClasses, 5900)).toEqual([]);
  });
});
