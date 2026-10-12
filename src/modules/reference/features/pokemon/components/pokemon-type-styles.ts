import type { CSSProperties } from "react";

import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

/* A Pokémon's type colour as `--t`, the variable every type-tinted surface reads. */
export type PokemonTypeCssVariables = CSSProperties & {
  "--t": string;
};

export const getPokemonTypeCssVariables = (
  type: PokemonTypeSlug | null,
): PokemonTypeCssVariables => {
  return { "--t": type ? `var(--type-${type})` : "var(--mute)" };
};

export const pokemonTypeTextClassName =
  "text-[color-mix(in_oklab,var(--t)_62%,var(--ink))]";

export const pokemonTypeSoftBackgroundClassName = "type-tint";

export const pokemonTypeSoftBorderClassName =
  "border-[color-mix(in_oklab,var(--t)_38%,var(--lip))]";

export const pokemonTypeSolidBackgroundClassName = "bg-(--t)";

/* Grid items you don't own are flat, with a 1px line. */
export const pokemonTypeCardSurfaceClassName =
  "border border-line bg-surface transition-transform duration-150 hover:-translate-y-0.5";
