import type {
  Generation,
  PokemonAttributes,
} from "@/modules/codex/shared/types";
import { PokemonDetailStatRow } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stat-row";
import {
  getPokemonDetailStatDefinitions,
  getPokemonDetailStatsTotal,
} from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-utils";
import { Separator } from "@/shared/components/ui/separator";

type PokemonDetailStatsTableProps = {
  attributes: PokemonAttributes;
  generation: Generation;
};

export const PokemonDetailStatsTable = ({
  attributes,
  generation,
}: PokemonDetailStatsTableProps) => {
  const stats = getPokemonDetailStatDefinitions(generation);
  const total = getPokemonDetailStatsTotal(attributes, stats);

  return (
    <div className="grid gap-2.5">
      <div className="text-muted-foreground grid grid-cols-[4.75rem_3rem_minmax(0,1fr)] items-center gap-3 text-xs">
        <div>Stat</div>
        <div className="text-right">Base</div>
        <div />
      </div>

      {stats.map((stat) => (
        <PokemonDetailStatRow
          key={stat.key}
          stat={stat}
          value={attributes[stat.key]}
        />
      ))}

      <Separator className="bg-app-surface-border/60 my-1" />

      <div className="grid grid-cols-[4.75rem_3rem_minmax(0,1fr)] items-center gap-3">
        <div className="text-foreground text-sm font-medium">Total</div>
        <div className="text-foreground text-right text-sm font-semibold tabular-nums">
          {total}
        </div>
        <div />
      </div>
    </div>
  );
};
