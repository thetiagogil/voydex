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
 * The stat shape reaches its outer ring at 160, so ordinary stats read at a
 * useful size; anything higher (Blissey's HP, say) simply touches it.
 */
export const POKEMON_DETAIL_STAT_FULL_AT = 160;

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

type Point = { x: number; y: number };

/*
 * The stat shape: one axis per stat, the first straight up and the rest
 * clockwise (HP, Attack, Defense, then round to Sp. Atk, as the games draw
 * it), each stat's point along its axis by its share of the full scale.
 */
export const getPokemonDetailStatPolygon = ({
  centre,
  radius,
  stats,
}: {
  centre: Point;
  radius: number;
  stats: PokemonDetailStat[];
}) => {
  const order = getPokemonDetailStatAxisOrder(stats);

  return order.map((stat, index) => {
    const angle = -Math.PI / 2 + (index * 2 * Math.PI) / order.length;
    const axis = { x: Math.cos(angle), y: Math.sin(angle) };
    const share = Math.min(stat.value / POKEMON_DETAIL_STAT_FULL_AT, 1);

    return {
      axis,
      point: {
        x: centre.x + axis.x * radius * share,
        y: centre.y + axis.y * radius * share,
      },
      stat,
    };
  });
};

/*
 * The games' order round the shape: HP, Attack, Defense, Speed, Sp. Def,
 * Sp. Atk, so the attacking and defending stats face each other.
 */
const axisOrder: PokemonDetailStatKey[] = [
  "base_hp",
  "base_attack",
  "base_defense",
  "base_speed",
  "base_special_defense",
  "base_special_attack",
];

export const getPokemonDetailStatAxisOrder = (stats: PokemonDetailStat[]) => {
  return axisOrder.flatMap((key) => {
    const stat = stats.find((candidate) => candidate.key === key);

    return stat ? [stat] : [];
  });
};
