import { cn } from "@/shared/utils/cn";
import { ChevronDownIcon, ChevronRightIcon } from "lucide-react";
import {
  getPokemonDetailDistinctEvolutionEdges,
  getPokemonDetailEvolutionConditionDescription,
  getPokemonDetailEvolutionConditionDisplay,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-display";
import type { PokemonEvolutionEdgeSummary } from "@/modules/reference/types";
import { AppIcon } from "@/shared/components/app-icon";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

type PokemonDetailEvolutionConnectorProps = {
  direction: "horizontal" | "vertical";
  edges: PokemonEvolutionEdgeSummary[];
  length?: "normal" | "stretched";
};

const MAX_VISIBLE_CONDITIONS = 3;

const EvolutionCondition = ({
  edge,
}: {
  edge: PokemonEvolutionEdgeSummary;
}) => {
  const condition = getPokemonDetailEvolutionConditionDisplay(edge);
  const conditionClassName =
    "text-foreground inline-flex h-4 min-w-5 items-center justify-center rounded-full text-xs leading-none font-semibold";

  if (condition.kind === "level") {
    return <span className={conditionClassName}>{condition.label}</span>;
  }

  return (
    <Tooltip>
      <TooltipTrigger render={<span className={conditionClassName} />}>
        <AppIcon icon={condition.icon} size="xs" aria-hidden />
      </TooltipTrigger>
      <TooltipContent className="max-w-56 text-center">
        {getPokemonDetailEvolutionConditionDescription(edge)}
      </TooltipContent>
    </Tooltip>
  );
};

const EvolutionArrowLine = ({
  direction,
  length = "normal",
}: {
  direction: PokemonDetailEvolutionConnectorProps["direction"];
  length?: PokemonDetailEvolutionConnectorProps["length"];
}) => {
  if (direction === "vertical") {
    return (
      <span className="text-primary/70 flex h-8 items-center justify-center">
        <ChevronDownIcon aria-hidden className="size-5 stroke-[1.5]" />
      </span>
    );
  }

  return (
    <div
      className={cn(
        "text-primary/70 flex h-5 items-center justify-center",
        length === "stretched" ? "w-full" : "w-14 max-w-full",
      )}
    >
      <ChevronRightIcon aria-hidden className="size-5 stroke-[1.5]" />
    </div>
  );
};

export const PokemonDetailEvolutionConnector = ({
  direction,
  edges,
  length = "normal",
}: PokemonDetailEvolutionConnectorProps) => {
  const distinctEdges = getPokemonDetailDistinctEvolutionEdges(edges);
  const visibleEdges = distinctEdges.slice(0, MAX_VISIBLE_CONDITIONS);
  const hiddenEdgeCount = Math.max(
    0,
    distinctEdges.length - visibleEdges.length,
  );

  return (
    <div
      className={cn(
        "text-muted-foreground flex min-w-0 items-center justify-center",
        direction === "horizontal" && length === "stretched" && "w-full",
      )}
    >
      <div
        className={cn(
          "flex min-w-0 flex-col items-center gap-0.5",
          direction === "horizontal" && length === "stretched" && "w-full",
        )}
      >
        {visibleEdges.length ? (
          <div className="flex max-w-full flex-wrap items-center justify-center gap-0.5">
            {visibleEdges.map((edge) => (
              <EvolutionCondition key={edge.edge.id} edge={edge} />
            ))}

            {hiddenEdgeCount ? (
              <span className="text-muted-foreground inline-flex h-5 min-w-5 items-center justify-center rounded-full text-xs font-semibold">
                +{hiddenEdgeCount}
              </span>
            ) : null}
          </div>
        ) : null}

        <EvolutionArrowLine direction={direction} length={length} />
      </div>
    </div>
  );
};
