import type { Generation, PokemonAttributes } from "@/modules/reference/types";

export type PokemonDetailStatKey =
  | "base_attack"
  | "base_defense"
  | "base_hp"
  | "base_special_attack"
  | "base_special_defense"
  | "base_speed";

export type PokemonDetailStatDefinition = {
  key: PokemonDetailStatKey;
  label: string;
};

export const MAX_POKEMON_BASE_STAT = 255;

const modernStatDefinitions = [
  {
    key: "base_hp",
    label: "HP",
  },
  {
    key: "base_attack",
    label: "Attack",
  },
  {
    key: "base_defense",
    label: "Defense",
  },
  {
    key: "base_special_attack",
    label: "Sp. Atk",
  },
  {
    key: "base_special_defense",
    label: "Sp. Def",
  },
  {
    key: "base_speed",
    label: "Speed",
  },
] satisfies PokemonDetailStatDefinition[];

const generationOneStatDefinitions = [
  {
    key: "base_hp",
    label: "HP",
  },
  {
    key: "base_attack",
    label: "Attack",
  },
  {
    key: "base_defense",
    label: "Defense",
  },
  {
    key: "base_special_attack",
    label: "Special",
  },
  {
    key: "base_speed",
    label: "Speed",
  },
] satisfies PokemonDetailStatDefinition[];

export const getPokemonDetailStatDefinitions = (generation: Generation) => {
  return generation.sort_order === 1
    ? generationOneStatDefinitions
    : modernStatDefinitions;
};

export const getPokemonDetailStatBarWidth = (value: number, max: number) => {
  return `${Math.round((Math.min(Math.max(value, 0), max) / max) * 100)}%`;
};

export const getPokemonDetailStatBarColorClassName = (value: number) => {
  if (value < 40) {
    return "bg-red-500";
  }

  if (value < 60) {
    return "bg-orange-400";
  }

  if (value < 80) {
    return "bg-yellow-400";
  }

  if (value < 100) {
    return "bg-lime-400";
  }

  if (value < 120) {
    return "bg-green-400";
  }

  return "bg-emerald-400";
};

export const getPokemonDetailStatsTotal = (
  attributes: PokemonAttributes,
  stats: PokemonDetailStatDefinition[],
) => {
  return stats.reduce((total, stat) => total + attributes[stat.key], 0);
};
