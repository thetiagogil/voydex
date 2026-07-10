import type { CSSProperties } from "react";

import { cn } from "@/shared/utils/cn";
import {
  getPokemonDetailDefendingTypes,
  getPokemonDetailTypeMatchupChart,
  type PokemonDetailTypeMatchupChartColumn,
} from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-model";
import type { Generation, PokemonTypePair } from "@/modules/codex/shared/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PokemonTypeBadge } from "@/shared/components/pokemon/pokemon-type-icon";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

type PokemonDetailTypeMatchupsCardProps = {
  generation: Generation;
  typePair: PokemonTypePair | null;
};

const getPokemonDetailTypeMatchupValueClassName = (multiplier: number) => {
  return cn(
    "focus-visible:ring-ring/50 inline-flex h-7 min-w-7 items-center justify-center rounded-md px-1 text-xs font-semibold tabular-nums outline-none focus-visible:ring-2",
    multiplier === 0 && "text-emerald-400",
    multiplier === 0.25 && "text-emerald-400",
    multiplier === 0.5 && "text-lime-400",
    multiplier === 1 && "text-muted-foreground/70 font-medium",
    multiplier === 2 && "text-orange-400",
    multiplier === 4 && "text-red-400",
  );
};

const PokemonDetailTypeMatchupTypeCell = ({
  column,
}: {
  column: PokemonDetailTypeMatchupChartColumn;
}) => {
  return (
    <div className="flex min-w-0 justify-center">
      <Tooltip>
        <TooltipTrigger
          render={
            <span
              tabIndex={0}
              role="img"
              aria-label={column.typeLabel}
              className="focus-visible:ring-ring/50 inline-flex rounded-full outline-none focus-visible:ring-2"
            />
          }
        >
          <PokemonTypeBadge
            type={column.attackingType}
            label={column.typeLabel}
            display="icon"
            size="sm"
          />
        </TooltipTrigger>
        <TooltipContent>{column.typeLabel}</TooltipContent>
      </Tooltip>
    </div>
  );
};

const PokemonDetailTypeMatchupEffectivenessCell = ({
  column,
}: {
  column: PokemonDetailTypeMatchupChartColumn;
}) => {
  return (
    <div className="flex min-w-0 justify-center">
      <Tooltip>
        <TooltipTrigger
          render={
            <span
              tabIndex={0}
              aria-label={column.tooltipLabel}
              className={getPokemonDetailTypeMatchupValueClassName(
                column.multiplier,
              )}
            />
          }
        >
          {column.multiplierLabel}
        </TooltipTrigger>
        <TooltipContent className="flex-col items-start text-left">
          <span className="font-medium">{column.tooltipTitle}</span>
          <span className="opacity-80">{column.tooltipDescription}</span>
        </TooltipContent>
      </Tooltip>
    </div>
  );
};

export const PokemonDetailTypeMatchupsCard = ({
  generation,
  typePair,
}: PokemonDetailTypeMatchupsCardProps) => {
  const defendingTypes = getPokemonDetailDefendingTypes(typePair);

  if (!defendingTypes.length) {
    return null;
  }

  const chartColumns = getPokemonDetailTypeMatchupChart({
    defendingTypes,
    generationOrder: generation.sort_order,
  });
  const chartGridStyle = {
    gridTemplateColumns: `repeat(${chartColumns.length}, minmax(2rem, 1fr))`,
  } satisfies CSSProperties;

  return (
    <DetailSectionCard
      title="Type Matchups"
      className="h-full"
      contentClassName="p-0"
      showSeparator
    >
      <div className="overflow-x-auto">
        <div className="min-w-xl">
          <div
            className="grid items-center gap-1 px-4 py-2"
            style={chartGridStyle}
          >
            {chartColumns.map((column) => (
              <PokemonDetailTypeMatchupTypeCell
                key={column.attackingType}
                column={column}
              />
            ))}
          </div>

          <div
            className="grid items-center gap-1 px-4 py-2"
            style={chartGridStyle}
          >
            {chartColumns.map((column) => (
              <PokemonDetailTypeMatchupEffectivenessCell
                key={column.attackingType}
                column={column}
              />
            ))}
          </div>
        </div>
      </div>
    </DetailSectionCard>
  );
};
