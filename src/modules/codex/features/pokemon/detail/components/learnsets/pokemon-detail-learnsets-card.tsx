"use client";

import { SearchIcon } from "lucide-react";
import { useMemo, useState } from "react";

import {
  pokemonDetailLearnsetMetricsGridClassName,
  pokemonDetailLearnsetGridClassName,
  PokemonDetailLearnsetRow,
} from "@/modules/codex/features/pokemon/detail/components/learnsets/pokemon-detail-learnset-row";
import {
  getFilteredPokemonDetailLearnsets,
  getPokemonDetailLearnsetMethodOptions,
  POKEMON_DETAIL_LEARNSET_ALL_METHODS,
  type PokemonDetailLearnsetMethodFilter,
} from "@/modules/codex/features/pokemon/detail/components/learnsets/pokemon-detail-learnset-table-model";
import { CodexDetailSectionCard } from "@/modules/codex/shared/components/codex-detail-section-card";
import type { PokemonLearnsetSummary } from "@/modules/codex/shared/types";
import { Button } from "@/shared/components/ui/button";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import { Separator } from "@/shared/components/ui/separator";

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
    <CodexDetailSectionCard title="Learnsets" contentClassName="p-0">
      {learnsets.length ? (
        <>
          <div className="grid gap-3 px-4 py-3">
            <div className="flex min-w-0 flex-col gap-3 xl:flex-row xl:items-center xl:justify-between">
              <InputGroup className="bg-background/30 max-w-md xl:flex-1">
                <InputGroupAddon>
                  <SearchIcon />
                </InputGroupAddon>
                <InputGroupInput
                  value={query}
                  onChange={(event) => {
                    setQuery(event.target.value);
                  }}
                  placeholder="Search moves by name, type, or method"
                  aria-label="Search moves"
                />
              </InputGroup>

              <div className="flex flex-wrap gap-2 xl:justify-end">
                {methodOptions.map((option) => {
                  const isActive = method === option.value;

                  return (
                    <Button
                      key={option.value}
                      type="button"
                      variant={isActive ? "default" : "outline"}
                      size="sm"
                      className="h-8"
                      aria-pressed={isActive}
                      onClick={() => {
                        setMethod(option.value);
                      }}
                    >
                      {option.label}
                      <span className="text-xs opacity-50">
                        ({option.count})
                      </span>
                    </Button>
                  );
                })}
              </div>
            </div>

            <div className="text-muted-foreground text-sm">
              Showing {filteredLearnsets.length} of {learnsets.length} moves
            </div>
          </div>

          <Separator className="bg-app-surface-border/60" />

          <div className="overflow-x-auto">
            <div
              className={`${pokemonDetailLearnsetGridClassName} text-muted-foreground px-4 py-2 text-xs`}
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
    </CodexDetailSectionCard>
  );
};
