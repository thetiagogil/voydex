import { SegmentedControl } from "@/shared/components/segmented-control";
import { Progress } from "@/shared/components/ui/progress";

import {
  getPokedexScopeCounts,
  getPokedexScopeProgress,
} from "../../data/pokedex-progress-model";
import type {
  MainlinePlayPokedexScope,
  PokedexProgressState,
} from "../../types";

const getScopeProgress = (
  scope: MainlinePlayPokedexScope,
  stateBySpeciesId: ReadonlyMap<number, PokedexProgressState>,
) =>
  getPokedexScopeProgress({
    counts: getPokedexScopeCounts({ entries: scope.entries, stateBySpeciesId }),
    isCompletionRelevant: scope.isCompletionRelevant,
  });

/*
 * The Pokédex page head: its name, one line of progress, and a pill for each
 * Pokédex that counts toward completion.
 */
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
  const progress = getScopeProgress(scope, stateBySpeciesId);

  return (
    <section aria-labelledby="pokedex-scope-heading" className="grid gap-4">
      <div className="flex flex-wrap items-end gap-x-6 gap-y-4">
        <div className="min-w-0">
          <h2
            id="pokedex-scope-heading"
            className="text-28 leading-[1.05] tracking-[-0.02em] sm:text-[34px]"
          >
            {scope.name}
          </h2>
          <p className="text-ink-2 text-15 mt-1.5 font-semibold">
            <b className="text-ink font-extrabold tabular-nums">
              {progress.percentage}%
            </b>{" "}
            {progress.kind === "completion" ? "complete" : "caught"} ·{" "}
            <span className="tabular-nums">
              {progress.caughtCount} of {progress.totalCount}
            </span>
          </p>
        </div>
        {scopes.length > 1 ? (
          <SegmentedControl
            ariaLabel="Pokédex"
            className="no-scrollbar -mx-4 flex-nowrap overflow-x-auto px-4 pb-1 sm:mx-0 sm:ml-auto sm:flex-wrap sm:overflow-visible sm:px-0 sm:pb-0"
            onValueChange={(value) => onScopeChange(Number(value))}
            options={scopes.map((candidate) => {
              const candidateProgress = getScopeProgress(
                candidate,
                stateBySpeciesId,
              );

              return {
                count: `${candidateProgress.caughtCount}/${candidateProgress.totalCount}`,
                label: candidate.name,
                value: String(candidate.id),
              };
            })}
            value={String(scope.id)}
          />
        ) : null}
      </div>
      <Progress
        aria-label={`${scope.name} ${
          progress.kind === "completion" ? "completion" : "caught progress"
        }`}
        value={progress.percentage}
      />
    </section>
  );
};
