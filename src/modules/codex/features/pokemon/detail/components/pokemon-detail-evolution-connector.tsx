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
}: {
  direction: PokemonDetailEvolutionConnectorProps["direction"];
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
    <svg
      aria-hidden
      viewBox="0 0 72 12"
      preserveAspectRatio="none"
      className="text-primary h-3 w-full overflow-hidden"
    >
      <path
        d="M1 6H66"
        stroke="currentColor"
        strokeLinecap="round"
        strokeWidth="1.25"
        opacity="0.76"
      />
      <path
        d="M61 2.5L68 6L61 9.5"
        fill="none"
        stroke="currentColor"
        strokeLinecap="round"
        strokeLinejoin="round"
        strokeWidth="1.25"
        opacity="0.86"
      />
    </svg>
  );
};

export const PokemonDetailEvolutionConnector = ({
  direction,
  edges,
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
        direction === "horizontal" && "w-full",
      )}
    >
      <div
        className={cn(
          "flex min-w-0 flex-col items-center gap-0.5",
          direction === "horizontal" && "w-full",
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

        <EvolutionArrowLine direction={direction} />
      </div>
    </div>
  );
};
