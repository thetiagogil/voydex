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

export const pokemonTypeSoftBackgroundClassName = "type-tint";

export const pokemonTypeSolidBackgroundClassName = "bg-(--t)";
