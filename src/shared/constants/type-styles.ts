/**
 * Unified Pokemon type colors and styles
 * Change colors here to update them everywhere
 */

export const TYPE_COLORS = {
  normal: {
    bg: "bg-type-normal/3",
    bgSolid: "bg-type-normal/90",
    border: "border-type-normal/25",
    text: "text-type-normal",
    hover: "hover:bg-type-normal/25",
  },
  fire: {
    bg: "bg-type-fire/3",
    bgSolid: "bg-type-fire/90",
    border: "border-type-fire/25",
    text: "text-type-fire",
    hover: "hover:bg-type-fire/25",
  },
  water: {
    bg: "bg-type-water/3",
    bgSolid: "bg-type-water/90",
    border: "border-type-water/25",
    text: "text-type-water",
    hover: "hover:bg-type-water/25",
  },
  electric: {
    bg: "bg-type-electric/3",
    bgSolid: "bg-type-electric/90",
    border: "border-type-electric/25",
    text: "text-type-electric",
    hover: "hover:bg-type-electric/25",
  },
  grass: {
    bg: "bg-type-grass/3",
    bgSolid: "bg-type-grass/90",
    border: "border-type-grass/25",
    text: "text-type-grass",
    hover: "hover:bg-type-grass/25",
  },
  ice: {
    bg: "bg-type-ice/3",
    bgSolid: "bg-type-ice/90",
    border: "border-type-ice/25",
    text: "text-type-ice",
    hover: "hover:bg-type-ice/25",
  },
  fighting: {
    bg: "bg-type-fighting/3",
    bgSolid: "bg-type-fighting/90",
    border: "border-type-fighting/25",
    text: "text-type-fighting",
    hover: "hover:bg-type-fighting/25",
  },
  poison: {
    bg: "bg-type-poison/3",
    bgSolid: "bg-type-poison/90",
    border: "border-type-poison/25",
    text: "text-type-poison",
    hover: "hover:bg-type-poison/25",
  },
  ground: {
    bg: "bg-type-ground/3",
    bgSolid: "bg-type-ground/90",
    border: "border-type-ground/25",
    text: "text-type-ground",
    hover: "hover:bg-type-ground/25",
  },
  flying: {
    bg: "bg-type-flying/3",
    bgSolid: "bg-type-flying/90",
    border: "border-type-flying/25",
    text: "text-type-flying",
    hover: "hover:bg-type-flying/25",
  },
  psychic: {
    bg: "bg-type-psychic/3",
    bgSolid: "bg-type-psychic/90",
    border: "border-type-psychic/25",
    text: "text-type-psychic",
    hover: "hover:bg-type-psychic/25",
  },
  bug: {
    bg: "bg-type-bug/3",
    bgSolid: "bg-type-bug/90",
    border: "border-type-bug/25",
    text: "text-type-bug",
    hover: "hover:bg-type-bug/25",
  },
  rock: {
    bg: "bg-type-rock/3",
    bgSolid: "bg-type-rock/90",
    border: "border-type-rock/25",
    text: "text-type-rock",
    hover: "hover:bg-type-rock/25",
  },
  ghost: {
    bg: "bg-type-ghost/3",
    bgSolid: "bg-type-ghost/90",
    border: "border-type-ghost/25",
    text: "text-type-ghost",
    hover: "hover:bg-type-ghost/25",
  },
  dragon: {
    bg: "bg-type-dragon/3",
    bgSolid: "bg-type-dragon/90",
    border: "border-type-dragon/25",
    text: "text-type-dragon",
    hover: "hover:bg-type-dragon/25",
  },
  dark: {
    bg: "bg-type-dark/3",
    bgSolid: "bg-type-dark/90",
    border: "border-type-dark/25",
    text: "text-type-dark",
    hover: "hover:bg-type-dark/25",
  },
  steel: {
    bg: "bg-type-steel/3",
    bgSolid: "bg-type-steel/90",
    border: "border-type-steel/25",
    text: "text-type-steel",
    hover: "hover:bg-type-steel/25",
  },
  fairy: {
    bg: "bg-type-fairy/3",
    bgSolid: "bg-type-fairy/90",
    border: "border-type-fairy/25",
    text: "text-type-fairy",
    hover: "hover:bg-type-fairy/25",
  },
} as const;

export type PokemonTypeKey = keyof typeof TYPE_COLORS;
