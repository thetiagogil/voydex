import { describe, expect, it } from "vitest";

import { toItemOptions } from "./item-options";

describe("toItemOptions", () => {
  it("puts each item under its category, with an icon and its id", () => {
    const options = toItemOptions(
      [
        {
          category: "Berries",
          categoryOrder: 6,
          effect: null,
          id: 10,
          name: "Oran Berry",
          slug: "oran-berry",
        },
        {
          category: "Mega Stones",
          categoryOrder: 7,
          effect: null,
          id: 20,
          name: "Abomasite",
          slug: "abomasite",
        },
      ],
      "held",
    );

    expect(
      options.map((option) => [option.group, option.label, option.value]),
    ).toEqual([
      ["Berries", "Oran Berry", "10"],
      ["Mega Stones", "Abomasite", "20"],
    ]);
    expect(options.every((option) => option.icon)).toBe(true);
  });
});
