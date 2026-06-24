import type { PokemonTypeSlug } from "@/shared/domain/pokemon/constants";

type PokemonTypeClassNames = {
  background: string;
  border: string;
  foreground: string;
  solidBackground: string;
};

export const pokemonTypeClassNames = {
  normal: {
    background: "bg-type-normal/12",
    border: "border-type-normal/35",
    foreground: "text-type-normal",
    solidBackground: "bg-type-normal",
  },
  fire: {
    background: "bg-type-fire/12",
    border: "border-type-fire/35",
    foreground: "text-type-fire",
    solidBackground: "bg-type-fire",
  },
  water: {
    background: "bg-type-water/12",
    border: "border-type-water/35",
    foreground: "text-type-water",
    solidBackground: "bg-type-water",
  },
  electric: {
    background: "bg-type-electric/12",
    border: "border-type-electric/35",
    foreground: "text-type-electric",
    solidBackground: "bg-type-electric",
  },
  grass: {
    background: "bg-type-grass/12",
    border: "border-type-grass/35",
    foreground: "text-type-grass",
    solidBackground: "bg-type-grass",
  },
  ice: {
    background: "bg-type-ice/12",
    border: "border-type-ice/35",
    foreground: "text-type-ice",
    solidBackground: "bg-type-ice",
  },
  fighting: {
    background: "bg-type-fighting/12",
    border: "border-type-fighting/35",
    foreground: "text-type-fighting",
    solidBackground: "bg-type-fighting",
  },
  poison: {
    background: "bg-type-poison/12",
    border: "border-type-poison/35",
    foreground: "text-type-poison",
    solidBackground: "bg-type-poison",
  },
  ground: {
    background: "bg-type-ground/12",
    border: "border-type-ground/35",
    foreground: "text-type-ground",
    solidBackground: "bg-type-ground",
  },
  flying: {
    background: "bg-type-flying/12",
    border: "border-type-flying/35",
    foreground: "text-type-flying",
    solidBackground: "bg-type-flying",
  },
  psychic: {
    background: "bg-type-psychic/12",
    border: "border-type-psychic/35",
    foreground: "text-type-psychic",
    solidBackground: "bg-type-psychic",
  },
  bug: {
    background: "bg-type-bug/12",
    border: "border-type-bug/35",
    foreground: "text-type-bug",
    solidBackground: "bg-type-bug",
  },
  rock: {
    background: "bg-type-rock/12",
    border: "border-type-rock/35",
    foreground: "text-type-rock",
    solidBackground: "bg-type-rock",
  },
  ghost: {
    background: "bg-type-ghost/12",
    border: "border-type-ghost/35",
    foreground: "text-type-ghost",
    solidBackground: "bg-type-ghost",
  },
  dragon: {
    background: "bg-type-dragon/12",
    border: "border-type-dragon/35",
    foreground: "text-type-dragon",
    solidBackground: "bg-type-dragon",
  },
  dark: {
    background: "bg-type-dark/12",
    border: "border-type-dark/35",
    foreground: "text-type-dark",
    solidBackground: "bg-type-dark",
  },
  steel: {
    background: "bg-type-steel/12",
    border: "border-type-steel/35",
    foreground: "text-type-steel",
    solidBackground: "bg-type-steel",
  },
  fairy: {
    background: "bg-type-fairy/12",
    border: "border-type-fairy/35",
    foreground: "text-type-fairy",
    solidBackground: "bg-type-fairy",
  },
} satisfies Record<PokemonTypeSlug, PokemonTypeClassNames>;
