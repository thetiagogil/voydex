import type {
  Generation,
  PokemonAttributes,
} from "@/modules/codex/shared/types";

export type PokemonDetailStatKey =
  | "base_attack"
  | "base_defense"
  | "base_hp"
  | "base_special_attack"
  | "base_special_defense"
  | "base_speed";

export type PokemonDetailStatDefinition = {
  colorClassName: string;
  key: PokemonDetailStatKey;
  label: string;
};

export const MAX_POKEMON_BASE_STAT = 255;

const modernStatDefinitions = [
  {
    colorClassName: "bg-emerald-400",
    key: "base_hp",
    label: "HP",
  },
  {
    colorClassName: "bg-cyan-400",
    key: "base_attack",
    label: "Attack",
  },
  {
    colorClassName: "bg-amber-400",
    key: "base_defense",
    label: "Defense",
  },
  {
    colorClassName: "bg-sky-400",
    key: "base_special_attack",
    label: "Sp. Atk",
  },
  {
    colorClassName: "bg-violet-400",
    key: "base_special_defense",
    label: "Sp. Def",
  },
  {
    colorClassName: "bg-pink-500",
    key: "base_speed",
    label: "Speed",
  },
] satisfies PokemonDetailStatDefinition[];

const generationOneStatDefinitions = [
  {
    colorClassName: "bg-emerald-400",
    key: "base_hp",
    label: "HP",
  },
  {
    colorClassName: "bg-cyan-400",
    key: "base_attack",
    label: "Attack",
  },
  {
    colorClassName: "bg-amber-400",
    key: "base_defense",
    label: "Defense",
  },
  {
    colorClassName: "bg-indigo-400",
    key: "base_special_attack",
    label: "Special",
  },
  {
    colorClassName: "bg-pink-500",
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

export const getPokemonDetailStatsTotal = (
  attributes: PokemonAttributes,
  stats: PokemonDetailStatDefinition[],
) => {
  return stats.reduce((total, stat) => total + attributes[stat.key], 0);
};
