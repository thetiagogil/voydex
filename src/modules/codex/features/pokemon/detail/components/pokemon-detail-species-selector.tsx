"use client";

import { useRouter } from "next/navigation";

import { PokemonDetailSpeciesOption } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-species-option";
import type { PokemonDetailMenuPokemon } from "@/modules/codex/shared/types";
import { usePokemonDetailSpeciesMenu } from "@/modules/codex/features/pokemon/detail/hooks/use-pokemon-detail-species-menu";
import {
  getPokemonHref,
  getPokemonMenuEmptyLabel,
  getPokemonSearchValue,
  isPokemonItemEqual,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-species-menu";
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
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

type PokemonDetailSpeciesSelectorProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    nationalNumber: number;
    slug: string;
  };
};

export const PokemonDetailSpeciesSelector = ({
  activeGameSlug,
  activePokemon,
}: PokemonDetailSpeciesSelectorProps) => {
  const router = useRouter();
  const {
    activePokemonItem,
    groupHeaderBySlug,
    handleListScroll,
    handlePokemonHighlighted,
    inputValue,
    loadInitialPokemonItems,
    loadingMore,
    loadState,
    pokemonItems,
    updateInputValue,
  } = usePokemonDetailSpeciesMenu({
    activeGameSlug,
    activePokemonSlug: activePokemon.slug,
  });

  const navigateToPokemon = (pokemonItem: PokemonDetailMenuPokemon | null) => {
    if (!pokemonItem || pokemonItem.slug === activePokemon.slug) {
      return;
    }

    router.push(getPokemonHref(activeGameSlug, pokemonItem));
  };

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
        <span className="min-w-0 truncate">
          <ComboboxValue>
            {(selectedPokemon: PokemonDetailMenuPokemon | null) => {
              const displayPokemon = selectedPokemon ?? activePokemon;

              return (
                <span>
                  {formatPokemonNationalNumber(displayPokemon.nationalNumber)}{" "}
                  {displayPokemon.name}
                </span>
              );
            }}
          </ComboboxValue>
        </span>
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
