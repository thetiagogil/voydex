import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

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
    <section
      aria-labelledby="pokedex-scope-heading"
      className="grid min-w-0 grid-cols-1 gap-4"
    >
      <PageHeader
        headingId="pokedex-scope-heading"
        headingLevel="h2"
        title={scope.name}
        className="pt-0 sm:flex-wrap sm:pt-0"
        description={
          <>
            <b className="text-ink font-extrabold tabular-nums">
              {progress.percentage}%
            </b>{" "}
            {progress.kind === "completion" ? "complete" : "caught"} ·{" "}
            <span className="tabular-nums">
              {progress.caughtCount} of {progress.totalCount}
            </span>
          </>
        }
        action={
          scopes.length > 1 ? (
            <SegmentedControl
              ariaLabel="Pokédex"
              selectedTone="strong"
              phoneScroll
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
          ) : null
        }
      />
    </section>
  );
};
