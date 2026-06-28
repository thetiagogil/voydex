"use client";

import { useRouter } from "next/navigation";
import { Fragment } from "react";

import { cn } from "@/lib/utils";
import { PokemonTypeList } from "@/modules/codex/shared/components/pokemon-type-list";
import type { PokemonDetailMenuPokemon } from "@/modules/codex/shared/types";
import { usePokemonDetailMenu } from "@/modules/codex/features/pokemon/detail/components/use-pokemon-detail-menu";
import {
  getPokemonHref,
  getPokemonMenuEmptyLabel,
  getPokemonPortraitType,
  getPokemonSearchValue,
  isPokemonItemEqual,
} from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-pokemon-picker-utils";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Button } from "@/shared/components/ui/button";
import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
  ComboboxValue,
} from "@/shared/components/ui/combobox";
import { Spinner } from "@/shared/components/ui/spinner";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

type PokemonDetailPokemonPickerProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    nationalNumber: number;
    slug: string;
  };
};

export const PokemonDetailPokemonPicker = ({
  activeGameSlug,
  activePokemon,
}: PokemonDetailPokemonPickerProps) => {
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
  } = usePokemonDetailMenu({
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
            const displayNumber =
              pokemonItem.pokedexNumber ?? pokemonItem.nationalNumber;

            return (
              <Fragment key={pokemonItem.id}>
                {groupHeader ? (
                  <div className="bg-popover text-muted-foreground border-border/40 sticky top-0 z-30 border-b px-2 py-1.5 text-xs font-semibold tracking-wide">
                    {groupHeader}
                  </div>
                ) : null}
                <ComboboxItem
                  value={pokemonItem}
                  aria-current={isActive ? "page" : undefined}
                  onClick={() => navigateToPokemon(pokemonItem)}
                  className={cn(
                    "min-h-14 gap-3",
                    isActive && "bg-accent text-accent-foreground",
                  )}
                >
                  <PokemonPortrait
                    alt={pokemonItem.imageAlt}
                    imageUrl={pokemonItem.imageUrl}
                    type={getPokemonPortraitType(pokemonItem)}
                    className="size-11 shrink-0 rounded-lg"
                    imageClassName="p-1"
                  />
                  <span className="min-w-0 flex-1">
                    <span className="text-muted-foreground block text-xs tabular-nums">
                      {formatPokemonNationalNumber(displayNumber)}
                    </span>
                    <span className="block truncate font-medium">
                      {pokemonItem.name}
                    </span>
                  </span>
                  <PokemonTypeList
                    primaryType={pokemonItem.primaryType}
                    secondaryType={pokemonItem.secondaryType}
                    badgeDisplay="icon"
                    badgeSize="sm"
                    className="ml-auto shrink-0 gap-1"
                  />
                </ComboboxItem>
              </Fragment>
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
