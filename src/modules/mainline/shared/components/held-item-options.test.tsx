import { describe, expect, it } from "vitest";

import { toHeldItemOptions } from "./held-item-options";

describe("toHeldItemOptions", () => {
  it("puts each item under its category, with an icon and its id", () => {
    const options = toHeldItemOptions([
      {
        category: "Berries",
        categoryOrder: 6,
        effect: null,
        id: 10,
        name: "Oran Berry",
      },
      {
        category: "Mega Stones",
        categoryOrder: 7,
        effect: null,
        id: 20,
        name: "Abomasite",
      },
    ]);

    expect(
      options.map((option) => [option.group, option.label, option.value]),
    ).toEqual([
      ["Berries", "Oran Berry", "10"],
      ["Mega Stones", "Abomasite", "20"],
    ]);
    expect(options.every((option) => option.icon)).toBe(true);
  });
});
