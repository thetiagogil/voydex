import type { CSSProperties } from "react";

import {
  isPokemonGameSlug,
  type PokemonGameSlug,
} from "@/modules/reference/features/games/domain/game-slugs";

/*
 * Every game's own colour in one table. The app wears one palette, so a
 * game's colour only marks which game is which: a version dot, a cover's
 * stand-in, the time chart. Sword, Scarlet, Violet and HeartGold are picked
 * by hand; the rest are the Codex accents dusted 18% toward #7A6F5E.
 */
export const gameColours: Record<PokemonGameSlug, string> = {
  red: "#B94739",
  blue: "#3975AF",
  yellow: "#BA9628",
  gold: "#B18B35",
  silver: "#838D98",
  crystal: "#3B8FA4",
  ruby: "#AD423B",
  sapphire: "#2669A6",
  emerald: "#377B4D",
  firered: "#C25B31",
  leafgreen: "#5E924A",
  diamond: "#6181A0",
  pearl: "#AC7A97",
  platinum: "#747E8E",
  heartgold: "#B8892A",
  soulsilver: "#758A9C",
  black: "#3F4248",
  white: "#9BA1A7",
  "black-2": "#434F67",
  "white-2": "#809AA9",
  x: "#4475A6",
  y: "#B44E57",
  "omega-ruby": "#AD423B",
  "alpha-sapphire": "#2669A6",
  sun: "#D1802F",
  moon: "#535B96",
  "ultra-sun": "#CF6E2D",
  "ultra-moon": "#544E8E",
  "lets-go-pikachu": "#C8A73C",
  "lets-go-eevee": "#B17D48",
  sword: "#3A6EA8",
  shield: "#B44E57",
  "brilliant-diamond": "#6286AA",
  "shining-pearl": "#B57D9E",
  "legends-arceus": "#3B8D85",
  scarlet: "#C4553F",
  violet: "#7B5CB8",
  "legends-za": "#25888A",
};

const fallbackGameColour = "#8C867D";

export type GameColourStyle = CSSProperties & {
  "--game": string;
  "--game-strong": string;
};

export const getGameColour = (game: PokemonGameSlug | string | null) => {
  return game && isPokemonGameSlug(game)
    ? gameColours[game]
    : fallbackGameColour;
};

const parseHex = (hex: string) =>
  [1, 3, 5].map(
    (index) => Number.parseInt(hex.slice(index, index + 2), 16) / 255,
  );

const toLinear = (channel: number) =>
  channel <= 0.04045 ? channel / 12.92 : ((channel + 0.055) / 1.055) ** 2.4;

const contrastWithWhite = (channels: number[]) => {
  const [red, green, blue] = channels.map(toLinear);
  const luminance = 0.2126 * red + 0.7152 * green + 0.0722 * blue;

  return 1.05 / (luminance + 0.05);
};

const toHex = (channels: number[]) =>
  `#${channels
    .map((channel) =>
      Math.round(Math.min(Math.max(channel, 0), 1) * 255)
        .toString(16)
        .padStart(2, "0"),
    )
    .join("")}`;

/*
 * The game colour darkened only as far as a white label needs to reach 4.5:1,
 * for solid fills that carry text (the active Play tab, the start medallion).
 */
export const getGameStrongColour = (hex: string) => {
  let channels = parseHex(hex);

  for (
    let step = 0;
    step < 40 && contrastWithWhite(channels) < 4.5;
    step += 1
  ) {
    channels = channels.map((channel) => channel * 0.97);
  }

  return toHex(channels);
};

/*
 * A game's own colour as `--game`, and `--game-strong` for a fill that holds
 * a white label, for the marks that tell games apart.
 */
export const getGameColourStyle = (
  game: PokemonGameSlug | string | null,
): GameColourStyle => {
  const hex = getGameColour(game);

  return {
    "--game": hex,
    "--game-strong": getGameStrongColour(hex),
  };
};

/* Hue, saturation and lightness (each 0 to 1) of a colour's channels. */
const toHsl = ([red, green, blue]: number[]) => {
  const max = Math.max(red, green, blue);
  const min = Math.min(red, green, blue);
  const lightness = (max + min) / 2;
  const delta = max - min;

  if (!delta) return [0, 0, lightness];

  const saturation = delta / (1 - Math.abs(2 * lightness - 1));
  const hue =
    max === red
      ? ((green - blue) / delta + 6) % 6
      : max === green
        ? (blue - red) / delta + 2
        : (red - green) / delta + 4;

  return [hue / 6, saturation, lightness];
};

const fromHsl = ([hue, saturation, lightness]: number[]) => {
  const chroma = (1 - Math.abs(2 * lightness - 1)) * saturation;
  const section = hue * 6;
  const second = chroma * (1 - Math.abs((section % 2) - 1));
  const [red, green, blue] =
    section < 1
      ? [chroma, second, 0]
      : section < 2
        ? [second, chroma, 0]
        : section < 3
          ? [0, chroma, second]
          : section < 4
            ? [0, second, chroma]
            : section < 5
              ? [second, 0, chroma]
              : [chroma, 0, second];
  const lift = lightness - chroma / 2;

  return [red + lift, green + lift, blue + lift];
};

/*
 * A game's colour for a whole card (a played game in the Collection): the
 * dusted mark colour made as lively as a Pokémon type's, so a game card and
 * a Pokémon card sit side by side at one brightness. A grey game (Black,
 * Platinum) stays grey. Text never sits on it, only on the pale face mixed
 * from it.
 */
export const getGameCardColour = (game: PokemonGameSlug | string | null) => {
  const [hue, saturation, lightness] = toHsl(parseHex(getGameColour(game)));

  return toHex(
    fromHsl([
      hue,
      saturation < 0.15 ? saturation : Math.min(0.75, saturation * 1.3 + 0.05),
      Math.min(0.6, Math.max(0.5, lightness + 0.1)),
    ]),
  );
};
