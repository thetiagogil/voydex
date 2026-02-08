export const TYPE_COLORS = {
  normal: "#A8A77A",
  fire: "#EE8130",
  water: "#6390F0",
  electric: "#F7D02C",
  grass: "#7AC74C",
  ice: "#96D9D6",
  fighting: "#C22E28",
  poison: "#A33EA1",
  ground: "#E2BF65",
  flying: "#A98FF3",
  psychic: "#F95587",
  bug: "#A6B91A",
  rock: "#B6A136",
  ghost: "#735797",
  dragon: "#6F35FC",
  dark: "#705746",
  steel: "#B7B7CE",
  fairy: "#D685AD",
} as const;

export const POKEMON_TYPES = [
  "Normal",
  "Fire",
  "Water",
  "Electric",
  "Grass",
  "Ice",
  "Fighting",
  "Poison",
  "Ground",
  "Flying",
  "Psychic",
  "Bug",
  "Rock",
  "Ghost",
  "Dragon",
  "Dark",
  "Steel",
  "Fairy",
] as const;

export const GENERATIONS = [
  "Gen 1",
  "Gen 2",
  "Gen 3",
  "Gen 4",
  "Gen 5",
  "Gen 6",
  "Gen 7",
  "Gen 8",
  "Gen 9",
] as const;

export const POKEMON_COLORS = {
  red: "#FF6B6B",
  blue: "#4DABF7",
  yellow: "#FFD43B",
  green: "#51CF66",
  black: "#495057",
  brown: "#8B4513",
  purple: "#9775FA",
  gray: "#868E96",
  white: "#F8F9FA",
  pink: "#FFB3D9",
} as const;

export type PokemonType = (typeof POKEMON_TYPES)[number];
export type Generation = (typeof GENERATIONS)[number];
export type PokemonColor = keyof typeof POKEMON_COLORS;
