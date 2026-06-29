import { cn } from "@/lib/utils";
import {
  getPokemonDetailDistinctEvolutionEdges,
  getPokemonDetailEvolutionConditionDescription,
  getPokemonDetailEvolutionConditionDisplay,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-display";
import type { PokemonEvolutionEdgeSummary } from "@/modules/codex/shared/types";
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

  return (
    <Tooltip>
      <TooltipTrigger
        render={
          <span className="text-foreground inline-flex h-4 min-w-5 items-center justify-center rounded-full text-xs leading-none font-semibold" />
        }
      >
        {condition.kind === "level" ? (
          condition.label
        ) : (
          <AppIcon icon={condition.icon} size="xs" aria-hidden />
        )}
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
      <svg
        aria-hidden
        viewBox="0 0 12 48"
        preserveAspectRatio="none"
        className="text-primary h-11 w-3 overflow-hidden"
      >
        <path
          d="M6 1V42"
          stroke="currentColor"
          strokeLinecap="round"
          strokeWidth="1.25"
          opacity="0.76"
        />
        <path
          d="M2.5 38.5L6 44L9.5 38.5"
          fill="none"
          stroke="currentColor"
          strokeLinecap="round"
          strokeLinejoin="round"
          strokeWidth="1.25"
          opacity="0.86"
        />
      </svg>
    );
  }

  return (
    <div
      className={cn(
        "text-primary flex h-3 items-center",
        length === "stretched" ? "w-full" : "w-14 max-w-full",
      )}
    >
      <span className="from-primary/25 via-primary/80 to-primary/70 h-px min-w-8 flex-1 rounded-full bg-linear-to-r" />
      <svg
        aria-hidden
        viewBox="0 0 10 12"
        className="-ml-1 size-3 shrink-0 overflow-visible"
      >
        <path
          d="M1.5 2.75L8.5 6L1.5 9.25"
          fill="none"
          stroke="currentColor"
          strokeLinecap="round"
          strokeLinejoin="round"
          strokeWidth="1.25"
          opacity="0.86"
        />
      </svg>
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
