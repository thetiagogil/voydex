import type { CSSProperties } from "react";

import { cn } from "@/shared/utils/cn";
import {
  isPokemonGameSlug,
  type PokemonGameSlug,
} from "@/shared/domain/games/constants";

export type PokemonGameColorCssVariables = CSSProperties & {
  "--pokemon-game-color": string;
  "--pokemon-game-hover-shadow": string;
};

export const getPokemonGameColorValue = (
  game: PokemonGameSlug | string | null,
) => {
  return game && isPokemonGameSlug(game)
    ? `var(--game-${game})`
    : "var(--primary)";
};

export const getPokemonGameColorCssVariables = (
  game: PokemonGameSlug | string | null,
): PokemonGameColorCssVariables => {
  const colorValue = getPokemonGameColorValue(game);

  return {
    "--pokemon-game-color": colorValue,
    "--pokemon-game-hover-shadow": `0 0 20px color-mix(in oklch, ${colorValue}, transparent 68%)`,
  };
};

export const pokemonGameTextClassName = "text-(--pokemon-game-color)";

export const pokemonGameSoftBackgroundClassName =
  "bg-(--pokemon-game-color)/12";

export const pokemonGameSoftBorderClassName =
  "border-(--pokemon-game-color)/35";

export const pokemonGameCardSurfaceClassName = cn(
  "border-(--pokemon-game-color)/35",
  "bg-card",
  "transition-all duration-200",
  "hover:border-(--pokemon-game-color)",
  "hover:shadow-(--pokemon-game-hover-shadow)",
  "focus-visible:border-(--pokemon-game-color)",
  "focus-visible:shadow-(--pokemon-game-hover-shadow)",
);
