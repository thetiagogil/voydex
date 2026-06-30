"use client";

import type { UIEventHandler } from "react";

import { PokemonDetailSpeciesOption } from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-option";
import { PokemonDetailSpeciesSelectorLabel } from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector-label";
import {
  getPokemonMenuEmptyLabel,
  getPokemonSearchValue,
  isPokemonItemEqual,
  type PokemonMenuLoadState,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-species-menu";
import type { PokemonDetailMenuPokemon } from "@/modules/codex/shared/types";
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

type PokemonDetailSpeciesComboboxProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    nationalNumber: number;
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

export const PokemonDetailSpeciesCombobox = ({
  activeGameSlug,
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
}: PokemonDetailSpeciesComboboxProps) => {
  return (
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
      <ComboboxTrigger
        onClick={loadInitialPokemonItems}
        onFocus={loadInitialPokemonItems}
        onPointerEnter={loadInitialPokemonItems}
        render={
          <Button
            variant="ghost"
            disabled={!activeGameSlug}
            aria-label="Choose Pokémon"
            className="hover:text-primary h-auto max-w-full justify-start px-0 py-0 text-left text-3xl font-semibold tracking-normal hover:bg-transparent aria-expanded:bg-transparent"
          />
        }
      >
        <ComboboxValue>
          {(selectedPokemon: PokemonDetailMenuPokemon | null) => {
            const displayPokemon = selectedPokemon ?? activePokemon;

            return (
              <PokemonDetailSpeciesSelectorLabel pokemon={displayPokemon} />
            );
          }}
        </ComboboxValue>
      </ComboboxTrigger>
      <ComboboxContent
        aria-busy={loadState === "loading" || loadingMore}
        className="w-96 max-w-[calc(100vw-2rem)]"
      >
        <ComboboxInput
          showTrigger={false}
          onFocus={loadInitialPokemonItems}
          placeholder="Search by name or number"
        />
        <ComboboxEmpty>
          {loadState === "loading" ? (
            <Spinner aria-label="Loading Pokémon" className="text-primary" />
          ) : (
            getPokemonMenuEmptyLabel(loadState, activeGameSlug)
          )}
        </ComboboxEmpty>
        <ComboboxList className="max-h-96 pt-0" onScroll={handleListScroll}>
          {(pokemonItem: PokemonDetailMenuPokemon) => {
            const isActive = pokemonItem.slug === activePokemon.slug;
            const groupHeader = groupHeaderBySlug.get(pokemonItem.slug);

            return (
              <PokemonDetailSpeciesOption
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
              className="text-primary"
            />
          </div>
        ) : null}
      </ComboboxContent>
    </Combobox>
  );
};
