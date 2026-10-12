import type { Generation, PokemonAttributes } from "@/modules/reference/types";
import { PokemonDetailStatRow } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stat-row";
import {
  getPokemonDetailStatDefinitions,
  getPokemonDetailStatsTotal,
  type PokemonDetailStatDefinition,
} from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";
import { Separator } from "@/shared/components/ui/separator";

type PokemonDetailStatsTableProps = {
  attributes: PokemonAttributes;
  generation: Generation;
};

type PokemonDetailStatsColumnProps = {
  attributes: PokemonAttributes;
  stats: PokemonDetailStatDefinition[];
};

const PokemonDetailStatsColumn = ({
  attributes,
  stats,
}: PokemonDetailStatsColumnProps) => {
  return (
    <div className="grid min-w-0 content-start gap-2.5">
      {stats.map((stat) => (
        <PokemonDetailStatRow
          key={stat.key}
          stat={stat}
          value={attributes[stat.key]}
        />
      ))}
    </div>
  );
};

const PokemonDetailStatsTotal = ({ total }: { total: number }) => {
  return (
    <div className="flex min-w-0 flex-col justify-center gap-1 xl:px-4">
      <div className="text-muted-foreground text-xs">Stats Total</div>
      <div className="text-foreground text-base font-semibold tabular-nums">
        {total}
      </div>
    </div>
  );
};

const PokemonDetailStatsSeparator = () => {
  return (
    <>
      <Separator className="bg-line xl:hidden" />
      <Separator orientation="vertical" className="bg-line hidden xl:block" />
    </>
  );
};

export const PokemonDetailStatsTable = ({
  attributes,
  generation,
}: PokemonDetailStatsTableProps) => {
  const stats = getPokemonDetailStatDefinitions(generation);
  const total = getPokemonDetailStatsTotal(attributes, stats);
  const firstColumnStats = stats.slice(0, 3);
  const secondColumnStats = stats.slice(3);

  return (
    <div className="grid gap-4 xl:grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)_auto_7.5rem] xl:items-stretch">
      <PokemonDetailStatsColumn
        attributes={attributes}
        stats={firstColumnStats}
      />
      <PokemonDetailStatsSeparator />
      <PokemonDetailStatsColumn
        attributes={attributes}
        stats={secondColumnStats}
      />
      <PokemonDetailStatsSeparator />
      <PokemonDetailStatsTotal total={total} />
    </div>
  );
};
