import type { ColorVariant } from "../types";
import { type PokemonType } from "./reference";

// =============================================================================
// COLOR VARIANTS
// =============================================================================

export const COLOR_VARIANTS: Record<string, ColorVariant> = {
  blue: {
    text: "text-info",
    icon: "text-info",
    bg: "bg-info/15",
  },
  green: {
    text: "text-success",
    icon: "text-success",
    bg: "bg-success/15",
  },
  yellow: {
    text: "text-warning",
    icon: "text-warning",
    bg: "bg-warning/15",
  },
  pink: {
    text: "text-rare",
    icon: "text-rare",
    bg: "bg-rare/15",
  },
  orange: {
    text: "text-legendary",
    icon: "text-legendary",
    bg: "bg-legendary/15",
  },
  gray: {
    text: "text-neutral-strong",
    icon: "text-neutral-strong",
    bg: "bg-neutral-strong/12",
  },
} as const;

// =============================================================================
// TYPE COLOR VARIANTS
// =============================================================================

export const TYPE_COLOR_VARIANTS: Record<PokemonType, ColorVariant> = {
  normal: {
    text: "text-type-normal",
    bg: "bg-type-normal/12",
    bgSolid: "bg-type-normal/88",
    border: "border-type-normal/35",
    borderSolid: "border-type-normal/88",
    hover: "hover:bg-type-normal/20",
  },
  fire: {
    text: "text-type-fire",
    bg: "bg-type-fire/12",
    bgSolid: "bg-type-fire/88",
    border: "border-type-fire/35",
    borderSolid: "border-type-fire/88",
    hover: "hover:bg-type-fire/20",
  },
  water: {
    text: "text-type-water",
    bg: "bg-type-water/12",
    bgSolid: "bg-type-water/88",
    border: "border-type-water/35",
    borderSolid: "border-type-water/88",
    hover: "hover:bg-type-water/20",
  },
  electric: {
    text: "text-type-electric",
    bg: "bg-type-electric/12",
    bgSolid: "bg-type-electric/88",
    border: "border-type-electric/35",
    borderSolid: "border-type-electric/88",
    hover: "hover:bg-type-electric/20",
  },
  grass: {
    text: "text-type-grass",
    bg: "bg-type-grass/12",
    bgSolid: "bg-type-grass/88",
    border: "border-type-grass/35",
    borderSolid: "border-type-grass/88",
    hover: "hover:bg-type-grass/20",
  },
  ice: {
    text: "text-type-ice",
    bg: "bg-type-ice/12",
    bgSolid: "bg-type-ice/88",
    border: "border-type-ice/35",
    borderSolid: "border-type-ice/88",
    hover: "hover:bg-type-ice/20",
  },
  fighting: {
    text: "text-type-fighting",
    bg: "bg-type-fighting/12",
    bgSolid: "bg-type-fighting/88",
    border: "border-type-fighting/35",
    borderSolid: "border-type-fighting/88",
    hover: "hover:bg-type-fighting/20",
  },
  poison: {
    text: "text-type-poison",
    bg: "bg-type-poison/12",
    bgSolid: "bg-type-poison/88",
    border: "border-type-poison/35",
    borderSolid: "border-type-poison/88",
    hover: "hover:bg-type-poison/20",
  },
  ground: {
    text: "text-type-ground",
    bg: "bg-type-ground/12",
    bgSolid: "bg-type-ground/88",
    border: "border-type-ground/35",
    borderSolid: "border-type-ground/88",
    hover: "hover:bg-type-ground/20",
  },
  flying: {
    text: "text-type-flying",
    bg: "bg-type-flying/12",
    bgSolid: "bg-type-flying/88",
    border: "border-type-flying/35",
    borderSolid: "border-type-flying/88",
    hover: "hover:bg-type-flying/20",
  },
  psychic: {
    text: "text-type-psychic",
    bg: "bg-type-psychic/12",
    bgSolid: "bg-type-psychic/88",
    border: "border-type-psychic/35",
    borderSolid: "border-type-psychic/88",
    hover: "hover:bg-type-psychic/20",
  },
  bug: {
    text: "text-type-bug",
    bg: "bg-type-bug/12",
    bgSolid: "bg-type-bug/88",
    border: "border-type-bug/35",
    borderSolid: "border-type-bug/88",
    hover: "hover:bg-type-bug/20",
  },
  rock: {
    text: "text-type-rock",
    bg: "bg-type-rock/12",
    bgSolid: "bg-type-rock/88",
    border: "border-type-rock/35",
    borderSolid: "border-type-rock/88",
    hover: "hover:bg-type-rock/20",
  },
  ghost: {
    text: "text-type-ghost",
    bg: "bg-type-ghost/12",
    bgSolid: "bg-type-ghost/88",
    border: "border-type-ghost/35",
    borderSolid: "border-type-ghost/88",
    hover: "hover:bg-type-ghost/20",
  },
  dragon: {
    text: "text-type-dragon",
    bg: "bg-type-dragon/12",
    bgSolid: "bg-type-dragon/88",
    border: "border-type-dragon/35",
    borderSolid: "border-type-dragon/88",
    hover: "hover:bg-type-dragon/20",
  },
  dark: {
    text: "text-type-dark",
    bg: "bg-type-dark/12",
    bgSolid: "bg-type-dark/88",
    border: "border-type-dark/35",
    borderSolid: "border-type-dark/88",
    hover: "hover:bg-type-dark/20",
  },
  steel: {
    text: "text-type-steel",
    bg: "bg-type-steel/12",
    bgSolid: "bg-type-steel/88",
    border: "border-type-steel/35",
    borderSolid: "border-type-steel/88",
    hover: "hover:bg-type-steel/20",
  },
  fairy: {
    text: "text-type-fairy",
    bg: "bg-type-fairy/12",
    bgSolid: "bg-type-fairy/88",
    border: "border-type-fairy/35",
    borderSolid: "border-type-fairy/88",
    hover: "hover:bg-type-fairy/20",
  },
} as const;

export type PokemonTypeKey = keyof typeof TYPE_COLOR_VARIANTS;
