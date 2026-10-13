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
  /* The short label the stats card uses. */
  label: string;
  /* The full name a sentence uses. */
  name: string;
};

export type PokemonDetailStat = PokemonDetailStatDefinition & {
  value: number;
};

/*
 * v3 draws a full bar at 160, so ordinary stats read at a useful length;
 * anything higher (Blissey's HP, say) simply fills it.
 */
export const POKEMON_DETAIL_STAT_BAR_FULL_AT = 160;

const modernStatDefinitions = [
  { key: "base_hp", label: "HP", name: "HP" },
  { key: "base_attack", label: "Attack", name: "Attack" },
  { key: "base_defense", label: "Defense", name: "Defense" },
  { key: "base_special_attack", label: "Sp. Atk", name: "Special Attack" },
  { key: "base_special_defense", label: "Sp. Def", name: "Special Defense" },
  { key: "base_speed", label: "Speed", name: "Speed" },
] satisfies PokemonDetailStatDefinition[];

const generationOneStatDefinitions = [
  { key: "base_hp", label: "HP", name: "HP" },
  { key: "base_attack", label: "Attack", name: "Attack" },
  { key: "base_defense", label: "Defense", name: "Defense" },
  { key: "base_special_attack", label: "Special", name: "Special" },
  { key: "base_speed", label: "Speed", name: "Speed" },
] satisfies PokemonDetailStatDefinition[];

/* Generation I has one Special stat in place of Special Attack and Defense. */
export const getPokemonDetailStats = (
  attributes: PokemonAttributes,
  generation: Generation,
): PokemonDetailStat[] => {
  const definitions =
    generation.sort_order === 1
      ? generationOneStatDefinitions
      : modernStatDefinitions;

  return definitions.map((definition) => ({
    ...definition,
    value: attributes[definition.key],
  }));
};

export const getPokemonDetailStatsTotal = (stats: PokemonDetailStat[]) => {
  return stats.reduce((total, stat) => total + stat.value, 0);
};
