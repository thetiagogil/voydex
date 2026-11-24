import { describe, expect, it } from "vitest";

import {
  gameColours,
  getGameCardColour,
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

describe("game card colours", () => {
  const channels = (hex: string) =>
    [1, 3, 5].map((index) => Number.parseInt(hex.slice(index, index + 2), 16));
  /* Saturation and lightness, each 0 to 1, as HSL reads them. */
  const hsl = (hex: string) => {
    const [red, green, blue] = channels(hex).map((channel) => channel / 255);
    const max = Math.max(red, green, blue);
    const min = Math.min(red, green, blue);
    const lightness = (max + min) / 2;
    const saturation =
      max === min ? 0 : (max - min) / (1 - Math.abs(2 * lightness - 1));

    return { lightness, saturation };
  };
  /* The card's face: its colour mixed 16% into white, as `card-face` does. */
  const face = (hex: string) =>
    `#${channels(hex)
      .map((channel) =>
        Math.round(channel * 0.16 + 255 * 0.84)
          .toString(16)
          .padStart(2, "0"),
      )
      .join("")}`;
  const contrast = (first: string, second: string) => {
    const [light, dark] = [luminance(first), luminance(second)].sort(
      (a, b) => b - a,
    );

    return (light + 0.05) / (dark + 0.05);
  };

  it("sets every game's card at one brightness, livelier and never greyer than its mark", () => {
    for (const [slug, hex] of Object.entries(gameColours)) {
      const mark = hsl(hex);
      const card = hsl(getGameCardColour(slug));

      expect(card.lightness).toBeGreaterThanOrEqual(0.49);
      expect(card.lightness).toBeLessThanOrEqual(0.61);
      expect(card.saturation).toBeGreaterThanOrEqual(
        Math.min(mark.saturation, 0.75) - 0.02,
      );
    }
  });

  it("keeps the ink 4.5:1 on every game card's face", () => {
    for (const slug of Object.keys(gameColours)) {
      expect(
        contrast(face(getGameCardColour(slug)), "#1f2c49"),
      ).toBeGreaterThanOrEqual(4.5);
    }
  });
});
