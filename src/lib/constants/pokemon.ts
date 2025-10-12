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

export type PokemonType = (typeof POKEMON_TYPES)[number];
export type Generation = (typeof GENERATIONS)[number];
