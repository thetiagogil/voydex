"use client";

import { useMemo, useState } from "react";

import {
  pokemonDetailLearnsetGridClassName,
  pokemonDetailLearnsetMetricsGridClassName,
  PokemonDetailLearnsetRow,
} from "@/modules/codex/features/pokemon/detail/components/learnsets/pokemon-detail-learnset-row";
import {
  getFilteredPokemonDetailLearnsets,
  getPokemonDetailLearnsetMethodOptions,
  POKEMON_DETAIL_LEARNSET_ALL_METHODS,
  type PokemonDetailLearnsetMethodFilter,
} from "@/modules/codex/features/pokemon/detail/components/learnsets/pokemon-detail-learnset-table-model";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import type { PokemonLearnsetSummary } from "@/modules/reference/types";
import { SearchControl } from "@/shared/components/search-control";
import { Separator } from "@/shared/components/ui/separator";
import {
  ToggleGroup,
  ToggleGroupItem,
} from "@/shared/components/ui/toggle-group";

type PokemonDetailLearnsetsCardProps = {
  learnsets: PokemonLearnsetSummary[];
};

export const PokemonDetailLearnsetsCard = ({
  learnsets,
}: PokemonDetailLearnsetsCardProps) => {
  const [query, setQuery] = useState("");
  const [method, setMethod] = useState<PokemonDetailLearnsetMethodFilter>(
    POKEMON_DETAIL_LEARNSET_ALL_METHODS,
  );
  const methodOptions = useMemo(() => {
    return getPokemonDetailLearnsetMethodOptions(learnsets);
  }, [learnsets]);
  const filteredLearnsets = useMemo(() => {
    return getFilteredPokemonDetailLearnsets({
      learnsets,
      method,
      query,
    });
  }, [learnsets, method, query]);

  return (
    <PokemonDetailSectionCard
      title="Learnsets"
      contentClassName="p-0"
      showSeparator
    >
      {learnsets.length ? (
        <>
          <div className="grid gap-3 px-4 py-3">
            <div className="flex min-w-0 flex-col gap-3 xl:flex-row xl:items-center xl:justify-between">
              <SearchControl
                value={query}
                onValueChange={setQuery}
                placeholder="Search moves by name, type, or method"
                ariaLabel="Search moves"
                className="bg-background max-w-md xl:flex-1"
              />

              <ToggleGroup
                value={[method]}
                variant="outline"
                size="sm"
                spacing={2}
                aria-label="Filter moves by learn method"
                className="w-auto flex-wrap xl:justify-end"
                onValueChange={(values) => {
                  const nextMethod = values[0];

                  if (nextMethod) {
                    setMethod(nextMethod as PokemonDetailLearnsetMethodFilter);
                  }
                }}
              >
                {methodOptions.map((option) => {
                  return (
                    <ToggleGroupItem
                      key={option.value}
                      value={option.value}
                      aria-label={`${option.label}, ${option.count} moves`}
                    >
                      {option.label}
                      <span className="text-xs opacity-50">
                        ({option.count})
                      </span>
                    </ToggleGroupItem>
                  );
                })}
              </ToggleGroup>
            </div>

            <div className="text-muted-foreground text-sm">
              Showing {filteredLearnsets.length} of {learnsets.length} moves
            </div>
          </div>

          <Separator className="bg-app-surface-border/60" />

          <div>
            <div
              className={`${pokemonDetailLearnsetGridClassName} text-muted-foreground hidden px-4 py-2 text-xs lg:grid`}
            >
              <div>Method</div>
              <div>Move</div>
              <div className={pokemonDetailLearnsetMetricsGridClassName}>
                <div className="text-center">Type</div>
                <div className="text-center">Category</div>
                <div className="text-center">Power</div>
                <div className="text-center">Acc.</div>
                <div className="text-center">PP</div>
              </div>
            </div>

            {filteredLearnsets.length ? (
              <div>
                {filteredLearnsets.map((learnset) => (
                  <PokemonDetailLearnsetRow
                    key={[
                      learnset.learnset.id,
                      learnset.learnset.move_id,
                      learnset.learnset.learn_method_id,
                      learnset.learnset.target_version_group_id,
                    ].join("-")}
                    learnset={learnset}
                  />
                ))}
              </div>
            ) : (
              <div className="border-app-surface-border/60 text-muted-foreground border-t px-4 py-5 text-sm">
                No moves match the current filters.
              </div>
            )}
          </div>
        </>
      ) : (
        <p className="text-muted-foreground px-4 py-4 text-sm">
          No learnset data recorded for the selected scope.
        </p>
      )}
    </PokemonDetailSectionCard>
  );
};
