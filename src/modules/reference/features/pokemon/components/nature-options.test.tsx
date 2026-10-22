import { describe, expect, it } from "vitest";

import { toNatureOptions } from "./nature-options";

const nature = (
  id: number,
  name: string,
  increased: string | null,
  decreased: string | null,
) => ({ decreased, id, increased, name });

describe("toNatureOptions", () => {
  const options = toNatureOptions([
    nature(1, "Hardy", null, null),
    nature(2, "Lonely", "attack", "defense"),
    nature(3, "Bold", "defense", "attack"),
    nature(4, "Brave", "attack", "speed"),
    nature(5, "Timid", "speed", "attack"),
    nature(6, "Docile", null, null),
  ]);

  it("groups by the stat raised, the neutral natures last", () => {
    expect(options.map((option) => [option.group, option.label])).toEqual([
      ["Raises Attack", "Lonely"],
      ["Raises Attack", "Brave"],
      ["Raises Defense", "Bold"],
      ["Raises Speed", "Timid"],
      ["Neutral", "Hardy"],
      ["Neutral", "Docile"],
    ]);
  });

  it("keeps each nature's id as its value", () => {
    expect(options.find((option) => option.label === "Timid")?.value).toBe("5");
  });
});
