"use client";

import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { Card } from "@/shared/components/ui/card";
import { CARD_HOVER_EFFECT } from "@/shared/constants/styles";
import type { PlayPokedexOverviewSummary } from "../../types";
import { computeEffectivePokedexCounts } from "../../utils/pokedex-summary";

type PokedexCardProps = {
  summary: PlayPokedexOverviewSummary;
  includeMythicalPokemon: boolean;
  isExcludedFromCompletion?: boolean;
  onClick: () => void;
};

export const PokedexCard = ({
  summary,
  includeMythicalPokemon,
  isExcludedFromCompletion,
  onClick,
}: PokedexCardProps) => {
  const { total, caught, seen, excludeMythical } =
    computeEffectivePokedexCounts(summary, includeMythicalPokemon);

  const caughtPct = total > 0 ? Math.floor((caught / total) * 100) : 0;
  const isCaughtComplete = caughtPct === 100;
  const isSeenComplete = total > 0 && seen === total;
  const isComplete = isCaughtComplete;

  return (
    <Card
      onClick={onClick}
      className={cn(
        "group flex flex-row items-center",
        isComplete && "border-success/40 hover:border-success",
        isExcludedFromCompletion && "opacity-70",
        CARD_HOVER_EFFECT,
      )}
    >
      {isComplete ? (
        <Icon type="completed" size={20} className="text-success" />
      ) : isSeenComplete ? (
        <Icon type="completed" size={20} className="text-seen" />
      ) : (
        <Icon type="circle" size={20} />
      )}

      <div className="min-w-0 flex-1">
        <div className="flex items-center gap-1.5">
          <h3 className="text-foreground truncate text-sm font-semibold">
            {summary.pokedexName}
          </h3>
          {excludeMythical && (
            <Icon type="mythical" size={14} className="text-mythic shrink-0" />
          )}
          {isExcludedFromCompletion && (
            <Icon
              type="excluded"
              size={14}
              className="text-muted-foreground shrink-0"
            />
          )}
        </div>
        <p className="text-muted-foreground text-xs">
          {total} total - {seen} seen - {caught} caught
          {excludeMythical && "*"}
        </p>
      </div>

      <div className="flex shrink-0 items-center gap-2">
        <span
          className={cn(
            "text-sm font-medium",
            isComplete
              ? "text-success"
              : isSeenComplete
                ? "text-seen"
                : "text-muted-foreground",
          )}
        >
          {caughtPct}%
        </span>
        <Icon
          type="rightArrow"
          className={cn(
            "text-muted-foreground group-hover:text-primary h-4 w-4 transition-colors",
            isComplete && "group-hover:text-success",
          )}
        />
      </div>
    </Card>
  );
};
