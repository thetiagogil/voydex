"use client";

import { useDeferredValue, useMemo, useState } from "react";

import {
  defaultGamePokedexFilters,
  filterGamePokedexPokemon,
  getSearchableGamePokedexPokemon,
  hasActiveGamePokedexFilters,
  type GamePokedexFilters,
} from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser-model";
import { GamePokedexFilterForm } from "@/modules/codex/features/games/pokedex/components/game-pokedex-filter-form";
import { GamePokedexTable } from "@/modules/codex/features/games/pokedex/components/game-pokedex-table";
import { CodexBrowseMeta } from "@/modules/codex/shared/components/codex-browse-meta";
import { CodexEmptyState } from "@/modules/codex/shared/components/codex-empty-state";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import {
  gameMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type { GamePokedexData } from "@/modules/reference/types";
import { Button } from "@/shared/components/ui/button";

type GamePokedexBrowserProps = {
  data: GamePokedexData;
};

export const GamePokedexBrowser = ({ data }: GamePokedexBrowserProps) => {
  const [filters, setFilters] = useState(defaultGamePokedexFilters);
  const deferredFilters = useDeferredValue(filters);
  const hasAbilities = useMemo(
    () =>
      supportsGameMechanic(data.mechanics, gameMechanics.abilities) &&
      data.entries.some((entry) => entry.abilities.length > 0),
    [data.entries, data.mechanics],
  );
  const searchablePokemon = useMemo(
    () => getSearchableGamePokedexPokemon(data.entries),
    [data.entries],
  );
  const filteredPokemon = useMemo(
    () => filterGamePokedexPokemon(searchablePokemon, deferredFilters),
    [searchablePokemon, deferredFilters],
  );
  const activeFilters = hasActiveGamePokedexFilters(filters);
  const pokedexName = formatPokedexName(data.pokedex.name);

  const updateFilter = <FilterKey extends keyof GamePokedexFilters>(
    key: FilterKey,
    value: GamePokedexFilters[FilterKey],
  ) => {
    setFilters((currentFilters) => ({
      ...currentFilters,
      [key]: value,
    }));
  };

  return (
    <>
      <GamePokedexFilterForm
        filters={filters}
        hasAbilities={hasAbilities}
        onQueryChange={(query) => {
          updateFilter("query", query);
        }}
        onTypeChange={(type) => {
          updateFilter("type", type);
        }}
        types={data.types}
      />

      <div className="flex min-h-8 flex-row items-center justify-between gap-3">
        <CodexBrowseMeta>
          {activeFilters
            ? `Showing ${filteredPokemon.length} of ${data.entries.length} Pokémon`
            : `Showing ${data.entries.length} Pokémon`}
        </CodexBrowseMeta>

        {activeFilters ? (
          <Button
            type="button"
            variant="ghost"
            className="self-start sm:self-auto"
            onClick={() => {
              setFilters(defaultGamePokedexFilters);
            }}
          >
            Clear
          </Button>
        ) : null}
      </div>

      {filteredPokemon.length ? (
        <GamePokedexTable
          data={data}
          hasAbilities={hasAbilities}
          pokemon={filteredPokemon}
        />
      ) : (
        <CodexEmptyState
          title={`No Pokémon found in the ${pokedexName}`}
          description={
            hasAbilities
              ? "Try a different name, Pokédex number, ability, or type."
              : "Try a different name, Pokédex number, or type."
          }
          action={
            <Button
              type="button"
              variant="outline"
              onClick={() => {
                setFilters(defaultGamePokedexFilters);
              }}
            >
              Clear filters
            </Button>
          }
        />
      )}
    </>
  );
};
