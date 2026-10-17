import { describe, expect, it } from "vitest";

import {
  gameColours,
  getGameColourStyle,
  getGameStrongColour,
} from "./game-color-styles";

const luminance = (hex: string) => {
  const [red, green, blue] = [1, 3, 5]
    .map((index) => Number.parseInt(hex.slice(index, index + 2), 16) / 255)
    .map((channel) =>
      channel <= 0.04045 ? channel / 12.92 : ((channel + 0.055) / 1.055) ** 2.4,
    );

  return 0.2126 * red + 0.7152 * green + 0.0722 * blue;
};

describe("game colours", () => {
  it("gives every game a strong fill that holds 4.5:1 with white", () => {
    for (const hex of Object.values(gameColours)) {
      const strong = getGameStrongColour(hex);

      expect(1.05 / (luminance(strong) + 0.05)).toBeGreaterThanOrEqual(4.5);
    }
  });

  it("leaves a game colour alone when white already reads on it", () => {
    expect(getGameStrongColour("#3A6EA8")).toBe("#3a6ea8");
  });

  it("falls back to a neutral colour for unknown games", () => {
    expect(getGameColourStyle("unknown")).toMatchObject({
      "--game": "#8C867D",
    });
  });
});
