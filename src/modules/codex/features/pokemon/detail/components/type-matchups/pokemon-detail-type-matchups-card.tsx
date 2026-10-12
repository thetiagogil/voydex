import type { CSSProperties } from "react";

import { cn } from "@/shared/utils/cn";
import {
  getPokemonDetailDefendingTypes,
  getPokemonDetailTypeMatchupChart,
  type PokemonDetailTypeMatchupChartColumn,
} from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-model";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import type { Generation, PokemonTypePair } from "@/modules/reference/types";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
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
    multiplier < 1 && "text-primary",
    multiplier === 1 && "text-muted-foreground/70 font-medium",
    multiplier > 1 && "text-destructive",
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

const PokemonDetailTypeMatchupMobileCell = ({
  column,
}: {
  column: PokemonDetailTypeMatchupChartColumn;
}) => {
  return (
    <div className="border-line bg-surface-2 flex min-w-0 items-center justify-between gap-2 rounded-lg border px-2 py-1.5">
      <PokemonTypeBadge
        type={column.attackingType}
        label={column.typeLabel}
        display="icon-label"
        size="sm"
      />
      <PokemonDetailTypeMatchupEffectivenessCell column={column} />
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
    <PokemonDetailSectionCard
      title="Type Matchups"
      className="h-full"
      contentClassName="p-0"
      showSeparator
    >
      <div className="grid grid-cols-2 gap-2 p-4 sm:grid-cols-3 md:hidden">
        {chartColumns.map((column) => (
          <PokemonDetailTypeMatchupMobileCell
            key={column.attackingType}
            column={column}
          />
        ))}
      </div>

      <div className="hidden overflow-x-auto md:block">
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
    </PokemonDetailSectionCard>
  );
};
