"use client";

import type { UIEventHandler } from "react";

import {
  getPokemonMenuEmptyLabel,
  getPokemonSearchValue,
  isPokemonItemEqual,
  type PokemonMenuLoadState,
} from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-model";
import {
  PokemonDetailSpeciesSelectorOption,
  pokemonDetailSpeciesSelectorTriggerClassName,
} from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector-option";
import type { PokemonDetailMenuPokemon } from "@/modules/reference/types";
import { Button } from "@/shared/components/ui/button";
import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxList,
  ComboboxTrigger,
  ComboboxValue,
} from "@/shared/components/ui/combobox";
import { Spinner } from "@/shared/components/ui/spinner";

type PokemonDetailSpeciesSelectorDesktopProps = {
  activeVersionGroupSlug: string | null;
  activePokemon: {
    name: string;
    slug: string;
  };
  activePokemonItem: PokemonDetailMenuPokemon | null;
  groupHeaderBySlug: Map<string, string>;
  handleListScroll: UIEventHandler<HTMLDivElement>;
  handlePokemonHighlighted: (
    pokemonItem: PokemonDetailMenuPokemon | undefined,
  ) => void;
  inputValue: string;
  loadInitialPokemonItems: () => void;
  loadingMore: boolean;
  loadState: PokemonMenuLoadState;
  navigateToPokemon: (pokemonItem: PokemonDetailMenuPokemon | null) => void;
  pokemonItems: PokemonDetailMenuPokemon[];
  updateInputValue: (nextInputValue: string) => void;
};

export const PokemonDetailSpeciesSelectorDesktop = ({
  activeVersionGroupSlug,
  activePokemon,
  activePokemonItem,
  groupHeaderBySlug,
  handleListScroll,
  handlePokemonHighlighted,
  inputValue,
  loadInitialPokemonItems,
  loadingMore,
  loadState,
  navigateToPokemon,
  pokemonItems,
  updateInputValue,
}: PokemonDetailSpeciesSelectorDesktopProps) => {
  return (
    <div className="hidden md:block">
      <Combobox
        items={pokemonItems}
        inputValue={inputValue}
        value={activePokemonItem}
        filter={null}
        itemToStringLabel={getPokemonSearchValue}
        itemToStringValue={(pokemonItem) => pokemonItem.slug}
        isItemEqualToValue={isPokemonItemEqual}
        onInputValueChange={updateInputValue}
        onItemHighlighted={handlePokemonHighlighted}
        onValueChange={navigateToPokemon}
        onOpenChange={(open) => {
          if (open) {
            loadInitialPokemonItems();
          }
        }}
        autoHighlight
      >
        {/* A combobox takes its name from a label, never from its text. */}
        <ComboboxTrigger
          aria-label={`Choose another Pokémon. Now showing ${activePokemon.name}`}
          onClick={loadInitialPokemonItems}
          onFocus={loadInitialPokemonItems}
          onPointerEnter={loadInitialPokemonItems}
          render={
            <Button
              variant="ghost"
              disabled={!activeVersionGroupSlug}
              className={pokemonDetailSpeciesSelectorTriggerClassName}
            />
          }
        >
          <ComboboxValue>
            {(selectedPokemon: PokemonDetailMenuPokemon | null) => {
              return (selectedPokemon ?? activePokemon).name;
            }}
          </ComboboxValue>
        </ComboboxTrigger>
        <ComboboxContent
          aria-busy={loadState === "loading" || loadingMore}
          className="w-100 max-w-[calc(100vw-2rem)]"
        >
          <ComboboxInput
            showTrigger={false}
            onFocus={loadInitialPokemonItems}
            placeholder="Search by name or number"
          />
          <ComboboxEmpty>
            {loadState === "loading" ? (
              <Spinner aria-label="Loading Pokémon" className="text-action" />
            ) : (
              getPokemonMenuEmptyLabel(loadState, activeVersionGroupSlug)
            )}
          </ComboboxEmpty>
          <ComboboxList className="max-h-96 pt-0" onScroll={handleListScroll}>
            {(pokemonItem: PokemonDetailMenuPokemon) => {
              const isActive = pokemonItem.slug === activePokemon.slug;
              const groupHeader = groupHeaderBySlug.get(pokemonItem.slug);

              return (
                <PokemonDetailSpeciesSelectorOption
                  key={pokemonItem.id}
                  groupHeader={groupHeader}
                  isActive={isActive}
                  pokemonItem={pokemonItem}
                />
              );
            }}
          </ComboboxList>
          {loadingMore ? (
            <div className="flex justify-center py-2">
              <Spinner
                aria-label="Loading more Pokémon"
                className="text-action"
              />
            </div>
          ) : null}
        </ComboboxContent>
      </Combobox>
    </div>
  );
};
