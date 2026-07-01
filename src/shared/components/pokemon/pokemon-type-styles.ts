import type { CSSProperties } from "react";

import { cn } from "@/lib/utils";
import type { PokemonTypeSlug } from "@/shared/domain/pokemon/constants";

export type PokemonTypeCssVariables = CSSProperties & {
  "--pokemon-type-color": string;
  "--pokemon-type-hover-shadow": string;
};

export const getPokemonTypeColorValue = (type: PokemonTypeSlug | null) => {
  return type ? `var(--type-${type})` : "var(--primary)";
};

export const getPokemonTypeCssVariables = (
  type: PokemonTypeSlug | null,
): PokemonTypeCssVariables => {
  const colorValue = getPokemonTypeColorValue(type);

  return {
    "--pokemon-type-color": colorValue,
    "--pokemon-type-hover-shadow": `0 0 20px color-mix(in oklch, ${colorValue}, transparent 68%)`,
  };
};

export const pokemonTypeTextClassName = "text-(--pokemon-type-color)";

export const pokemonTypeSoftBackgroundClassName =
  "bg-(--pokemon-type-color)/12";

export const pokemonTypeSoftBorderClassName =
  "border-(--pokemon-type-color)/35";

export const pokemonTypeSolidBackgroundClassName = "bg-(--pokemon-type-color)";

export const pokemonTypeSelectedSurfaceClassName = cn(
  "border-(--pokemon-type-color)/35",
  "bg-(--pokemon-type-color)/18",
);

export const pokemonTypeHoverSurfaceClassName = cn(
  "transition-all duration-200",
  "hover:border-(--pokemon-type-color)",
  "hover:bg-(--pokemon-type-color)/18",
  "hover:shadow-(--pokemon-type-hover-shadow)",
  "focus-visible:border-(--pokemon-type-color)",
  "focus-visible:bg-(--pokemon-type-color)/18",
  "focus-visible:shadow-(--pokemon-type-hover-shadow)",
);

export const pokemonTypeGroupHoverSurfaceClassName = cn(
  "transition-all duration-200",
  "group-hover:border-(--pokemon-type-color)",
  "group-hover:bg-(--pokemon-type-color)/18",
  "group-hover:shadow-(--pokemon-type-hover-shadow)",
  "group-focus-visible:border-(--pokemon-type-color)",
  "group-focus-visible:bg-(--pokemon-type-color)/18",
  "group-focus-visible:shadow-(--pokemon-type-hover-shadow)",
);

export const pokemonTypeCardSurfaceClassName = cn(
  "border-(--pokemon-type-color)/35",
  "bg-card/94",
  "backdrop-blur-xl",
  "transition-all duration-200",
  "hover:border-(--pokemon-type-color)",
  "hover:bg-card/98",
  "hover:shadow-(--pokemon-type-hover-shadow)",
  "focus-visible:border-(--pokemon-type-color)",
  "focus-visible:bg-card/98",
  "focus-visible:shadow-(--pokemon-type-hover-shadow)",
);
