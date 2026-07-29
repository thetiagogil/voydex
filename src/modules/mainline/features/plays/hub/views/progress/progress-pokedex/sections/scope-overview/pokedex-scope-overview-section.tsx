import { Card, CardContent } from "@/shared/components/ui/card";
import { Progress } from "@/shared/components/ui/progress";

import {
  getPokedexScopeCounts,
  getPokedexScopeProgress,
} from "../../data/pokedex-progress-model";
import type {
  MainlinePlayPokedexScope,
  PokedexProgressState,
} from "../../types";
import { PokedexScopeNavigation } from "./pokedex-scope-navigation";

export const PokedexScopeOverviewSection = ({
  onScopeChange,
  scope,
  scopes,
  stateBySpeciesId,
}: {
  onScopeChange: (scopeId: number) => void;
  scope: MainlinePlayPokedexScope;
  scopes: MainlinePlayPokedexScope[];
  stateBySpeciesId: ReadonlyMap<number, PokedexProgressState>;
}) => {
  const counts = getPokedexScopeCounts({
    entries: scope.entries,
    stateBySpeciesId,
  });
  const progress = getPokedexScopeProgress({
    counts,
    isCompletionRelevant: scope.isCompletionRelevant,
  });
  const progressLabel = progress.kind === "completion" ? "Completed" : "Caught";

  return (
    <section aria-labelledby="pokedex-scope-heading">
      <h2 id="pokedex-scope-heading" className="sr-only">
        {scope.name}
      </h2>
      <Card className="bg-card ring-app-surface-border/80 gap-0 py-0 shadow-xs">
        <CardContent className="grid gap-2.5 px-4 py-4 lg:px-5">
          <div className="flex min-w-0 flex-wrap items-baseline gap-x-6 gap-y-2">
            <PokedexScopeNavigation
              onScopeChange={onScopeChange}
              scope={scope}
              scopes={scopes}
            />

            <div className="ml-auto flex w-full min-w-0 flex-wrap items-baseline gap-x-1 text-sm sm:w-auto">
              <span className="inline-flex items-baseline gap-x-1 whitespace-nowrap">
                <span className="text-primary text-xl font-semibold tabular-nums">
                  {progress.caughtCount}
                </span>
                <span className="font-medium">caught</span>
              </span>
              <span className="inline-flex items-baseline gap-x-1 whitespace-nowrap">
                <span className="text-muted-foreground" aria-hidden>
                  ·
                </span>
                <span className="text-secondary-foreground text-xl tabular-nums">
                  {counts.seenCount}
                </span>
                <span>seen</span>
              </span>
              <span className="inline-flex items-baseline gap-x-1 whitespace-nowrap">
                <span className="text-muted-foreground" aria-hidden>
                  ·
                </span>
                <span className="text-xl tabular-nums">
                  {progress.totalCount}
                </span>
                <span className="text-muted-foreground">in total</span>
                <span className="text-muted-foreground" aria-hidden>
                  ·
                </span>
                <span className="text-xl tabular-nums">
                  {progress.percentage}%
                </span>
                <span className="text-muted-foreground">{progressLabel}</span>
              </span>
            </div>
          </div>

          <Progress
            aria-label={`${scope.name} ${
              progress.kind === "completion" ? "completion" : "caught progress"
            }`}
            className="**:data-[slot=progress-track]:h-1.5"
            value={progress.percentage}
          />
        </CardContent>
      </Card>
    </section>
  );
};
