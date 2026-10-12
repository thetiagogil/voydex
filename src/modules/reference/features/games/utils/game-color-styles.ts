import type { CSSProperties } from "react";

import {
  isPokemonGameSlug,
  type PokemonGameSlug,
} from "@/modules/reference/features/games/domain/game-slugs";

type GameColour = readonly [hex: string, tintStrength: number];

/*
 * Every game's colour in one table: the colour a Play of the game wears and
 * how much of it its pale surfaces mix in (%). Warm golds sit next to the
 * cream ground and greys carry little colour, so they mix in more.
 * Sword, Scarlet, Violet and HeartGold are picked by hand; the rest are the
 * Codex accents dusted 18% toward #7A6F5E.
 */
export const gameColours: Record<PokemonGameSlug, GameColour> = {
  red: ["#B94739", 17],
  blue: ["#3975AF", 17],
  yellow: ["#BA9628", 30],
  gold: ["#B18B35", 29],
  silver: ["#838D98", 27],
  crystal: ["#3B8FA4", 17],
  ruby: ["#AD423B", 17],
  sapphire: ["#2669A6", 17],
  emerald: ["#377B4D", 17],
  firered: ["#C25B31", 18],
  leafgreen: ["#5E924A", 17],
  diamond: ["#6181A0", 20],
  pearl: ["#AC7A97", 18],
  platinum: ["#747E8E", 26],
  heartgold: ["#B8892A", 28],
  soulsilver: ["#758A9C", 24],
  black: ["#3F4248", 28],
  white: ["#9BA1A7", 28],
  "black-2": ["#434F67", 23],
  "white-2": ["#809AA9", 24],
  x: ["#4475A6", 17],
  y: ["#B44E57", 17],
  "omega-ruby": ["#AD423B", 17],
  "alpha-sapphire": ["#2669A6", 17],
  sun: ["#D1802F", 23],
  moon: ["#535B96", 17],
  "ultra-sun": ["#CF6E2D", 20],
  "ultra-moon": ["#544E8E", 17],
  "lets-go-pikachu": ["#C8A73C", 29],
  "lets-go-eevee": ["#B17D48", 24],
  sword: ["#3A6EA8", 17],
  shield: ["#B44E57", 17],
  "brilliant-diamond": ["#6286AA", 19],
  "shining-pearl": ["#B57D9E", 17],
  "legends-arceus": ["#3B8D85", 17],
  scarlet: ["#C4553F", 17],
  violet: ["#7B5CB8", 17],
  "legends-za": ["#25888A", 17],
};

const fallbackGameColour: GameColour = ["#8C867D", 17];

export type GameColourStyle = CSSProperties & {
  "--game": string;
  "--gt": string;
};

export const getGameColour = (game: PokemonGameSlug | string | null) => {
  return game && isPokemonGameSlug(game)
    ? gameColours[game]
    : fallbackGameColour;
};

/*
 * Style for an element with the `game-scope` class: it wears this game's
 * colour, and its soft, wash, lip and deep tints follow.
 */
export const getGameColourStyle = (
  game: PokemonGameSlug | string | null,
): GameColourStyle => {
  const [hex, tintStrength] = getGameColour(game);

  return { "--game": hex, "--gt": `${tintStrength}%` };
};
