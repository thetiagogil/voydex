import type { CSSProperties } from "react";

import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

/*
 * A Pokémon's type colour as `--t`, the variable every type-tinted surface
 * reads, and `--t-on`, the ink for a label or icon on that colour.
 */
export type PokemonTypeCssVariables = CSSProperties & {
  "--t": string;
  "--t-on": string;
};

export const getPokemonTypeCssVariables = (
  type: PokemonTypeSlug | null,
): PokemonTypeCssVariables => {
  return type
    ? { "--t": `var(--type-${type})`, "--t-on": `var(--type-${type}-on)` }
    : { "--t": "var(--mute)", "--t-on": "var(--on-type-dark)" };
};

export const pokemonTypeSoftBackgroundClassName = "type-tint";

export const pokemonTypeSolidBackgroundClassName = "bg-(--t)";
