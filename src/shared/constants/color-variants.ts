import type { ColorVariant } from "../types";
import { type PokemonType } from "./reference";

// =============================================================================
// COLOR VARIANTS
// =============================================================================

export const COLOR_VARIANTS: Record<string, ColorVariant> = {
  blue: {
    text: "text-blue-600 dark:text-blue-400",
    icon: "text-blue-600 dark:text-blue-400",
    bg: "bg-blue-500/15",
  },
  green: {
    text: "text-green-600 dark:text-green-400",
    icon: "text-green-600 dark:text-green-400",
    bg: "bg-green-500/15",
  },
  yellow: {
    text: "text-yellow-600 dark:text-yellow-400",
    icon: "text-yellow-600 dark:text-yellow-400",
    bg: "bg-yellow-500/15",
  },
  pink: {
    text: "text-pink-600 dark:text-pink-400",
    icon: "text-pink-600 dark:text-pink-400",
    bg: "bg-pink-500/15",
  },
  orange: {
    text: "text-orange-600 dark:text-orange-400",
    icon: "text-orange-600 dark:text-orange-400",
    bg: "bg-orange-500/15",
  },
  gray: {
    text: "text-gray-600 dark:text-gray-400",
    icon: "text-gray-600 dark:text-gray-400",
    bg: "bg-gray-500/15",
  },
} as const;

// =============================================================================
// TYPE COLOR VARIANTS
// =============================================================================

export const TYPE_COLOR_VARIANTS: Record<PokemonType, ColorVariant> = {
  normal: {
    text: "text-type-normal",
    bg: "bg-type-normal/3",
    bgSolid: "bg-type-normal/90",
    border: "border-type-normal/25",
    borderSolid: "border-type-normal/90",
    hover: "hover:bg-type-normal/25",
  },
  fire: {
    text: "text-type-fire",
    bg: "bg-type-fire/3",
    bgSolid: "bg-type-fire/90",
    border: "border-type-fire/25",
    borderSolid: "border-type-fire/90",
    hover: "hover:bg-type-fire/25",
  },
  water: {
    text: "text-type-water",
    bg: "bg-type-water/3",
    bgSolid: "bg-type-water/90",
    border: "border-type-water/25",
    borderSolid: "border-type-water/90",
    hover: "hover:bg-type-water/25",
  },
  electric: {
    text: "text-type-electric",
    bg: "bg-type-electric/3",
    bgSolid: "bg-type-electric/90",
    border: "border-type-electric/25",
    borderSolid: "border-type-electric/90",
    hover: "hover:bg-type-electric/25",
  },
  grass: {
    text: "text-type-grass",
    bg: "bg-type-grass/3",
    bgSolid: "bg-type-grass/90",
    border: "border-type-grass/25",
    borderSolid: "border-type-grass/90",
    hover: "hover:bg-type-grass/25",
  },
  ice: {
    text: "text-type-ice",
    bg: "bg-type-ice/3",
    bgSolid: "bg-type-ice/90",
    border: "border-type-ice/25",
    borderSolid: "border-type-ice/90",
    hover: "hover:bg-type-ice/25",
  },
  fighting: {
    text: "text-type-fighting",
    bg: "bg-type-fighting/3",
    bgSolid: "bg-type-fighting/90",
    border: "border-type-fighting/25",
    borderSolid: "border-type-fighting/90",
    hover: "hover:bg-type-fighting/25",
  },
  poison: {
    text: "text-type-poison",
    bg: "bg-type-poison/3",
    bgSolid: "bg-type-poison/90",
    border: "border-type-poison/25",
    borderSolid: "border-type-poison/90",
    hover: "hover:bg-type-poison/25",
  },
  ground: {
    text: "text-type-ground",
    bg: "bg-type-ground/3",
    bgSolid: "bg-type-ground/90",
    border: "border-type-ground/25",
    borderSolid: "border-type-ground/90",
    hover: "hover:bg-type-ground/25",
  },
  flying: {
    text: "text-type-flying",
    bg: "bg-type-flying/3",
    bgSolid: "bg-type-flying/90",
    border: "border-type-flying/25",
    borderSolid: "border-type-flying/90",
    hover: "hover:bg-type-flying/25",
  },
  psychic: {
    text: "text-type-psychic",
    bg: "bg-type-psychic/3",
    bgSolid: "bg-type-psychic/90",
    border: "border-type-psychic/25",
    borderSolid: "border-type-psychic/90",
    hover: "hover:bg-type-psychic/25",
  },
  bug: {
    text: "text-type-bug",
    bg: "bg-type-bug/3",
    bgSolid: "bg-type-bug/90",
    border: "border-type-bug/25",
    borderSolid: "border-type-bug/90",
    hover: "hover:bg-type-bug/25",
  },
  rock: {
    text: "text-type-rock",
    bg: "bg-type-rock/3",
    bgSolid: "bg-type-rock/90",
    border: "border-type-rock/25",
    borderSolid: "border-type-rock/90",
    hover: "hover:bg-type-rock/25",
  },
  ghost: {
    text: "text-type-ghost",
    bg: "bg-type-ghost/3",
    bgSolid: "bg-type-ghost/90",
    border: "border-type-ghost/25",
    borderSolid: "border-type-ghost/90",
    hover: "hover:bg-type-ghost/25",
  },
  dragon: {
    text: "text-type-dragon",
    bg: "bg-type-dragon/3",
    bgSolid: "bg-type-dragon/90",
    border: "border-type-dragon/25",
    borderSolid: "border-type-dragon/90",
    hover: "hover:bg-type-dragon/25",
  },
  dark: {
    text: "text-type-dark",
    bg: "bg-type-dark/3",
    bgSolid: "bg-type-dark/90",
    border: "border-type-dark/25",
    borderSolid: "border-type-dark/90",
    hover: "hover:bg-type-dark/25",
  },
  steel: {
    text: "text-type-steel",
    bg: "bg-type-steel/3",
    bgSolid: "bg-type-steel/90",
    border: "border-type-steel/25",
    borderSolid: "border-type-steel/90",
    hover: "hover:bg-type-steel/25",
  },
  fairy: {
    text: "text-type-fairy",
    bg: "bg-type-fairy/3",
    bgSolid: "bg-type-fairy/90",
    border: "border-type-fairy/25",
    borderSolid: "border-type-fairy/90",
    hover: "hover:bg-type-fairy/25",
  },
} as const;

export type PokemonTypeKey = keyof typeof TYPE_COLOR_VARIANTS;
