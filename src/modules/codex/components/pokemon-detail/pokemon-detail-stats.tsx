import type { CSSProperties } from "react";

import type { PokemonAttributes } from "@/modules/codex/types";
import { CodexInlineEmpty } from "@/modules/codex/components/codex-detail";

type PokemonStatKey =
  | "base_hp"
  | "base_attack"
  | "base_defense"
  | "base_special_attack"
  | "base_special_defense"
  | "base_speed";

type PokemonStatDefinition = {
  key: PokemonStatKey;
  label: string;
};

type PokemonStatBarStyle = CSSProperties & {
  "--stat-width": string;
};

type PokemonStatsProps = {
  attributes: PokemonAttributes | null;
};

const pokemonStatDefinitions = [
  { key: "base_hp", label: "HP" },
  { key: "base_attack", label: "Attack" },
  { key: "base_defense", label: "Defense" },
  { key: "base_special_attack", label: "Sp. Atk" },
  { key: "base_special_defense", label: "Sp. Def" },
  { key: "base_speed", label: "Speed" },
] satisfies PokemonStatDefinition[];

const MAX_DISPLAY_STAT = 255;

const getStatWidth = (value: number) => {
  return `${(Math.min(value, MAX_DISPLAY_STAT) / MAX_DISPLAY_STAT) * 100}%`;
};

export const getPokemonStatTotal = (attributes: PokemonAttributes | null) => {
  if (!attributes) {
    return null;
  }

  return pokemonStatDefinitions.reduce((total, stat) => {
    return total + attributes[stat.key];
  }, 0);
};

export const PokemonStats = ({ attributes }: PokemonStatsProps) => {
  if (!attributes) {
    return (
      <CodexInlineEmpty>No battle attributes are seeded yet.</CodexInlineEmpty>
    );
  }

  return (
    <div className="grid gap-3">
      {pokemonStatDefinitions.map((stat) => {
        const value = attributes[stat.key];
        const style: PokemonStatBarStyle = {
          "--stat-width": getStatWidth(value),
        };

        return (
          <div key={stat.key} className="grid gap-1.5">
            <div className="flex items-center justify-between gap-3">
              <span className="text-muted-foreground text-xs font-medium">
                {stat.label}
              </span>
              <span className="text-sm font-semibold tabular-nums">
                {value}
              </span>
            </div>
            <div className="bg-muted h-1.5 overflow-hidden rounded-full">
              <div
                className="bg-primary h-full w-(--stat-width) rounded-full"
                style={style}
              />
            </div>
          </div>
        );
      })}
    </div>
  );
};
