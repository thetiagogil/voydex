"use client";

import { BottomSheet } from "@/shared/components/bottom-sheet";
import { SearchControl } from "@/shared/components/search-control";
import type { UIEventHandler } from "react";

import { cn } from "@/shared/utils/cn";
import {
  PokemonDetailSpeciesSelectorGroupHeader,
  PokemonDetailSpeciesSelectorOptionContent,
  pokemonDetailSpeciesSelectorActiveClassName,
} from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector-option";
import {
  getPokemonMenuEmptyLabel,
  type PokemonMenuLoadState,
} from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-model";
import { codexHeadPickerTriggerClassName } from "@/modules/codex/shared/components/codex-head";
import type { PokemonDetailMenuPokemon } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { SheetDescription, SheetTitle } from "@/shared/components/ui/sheet";
import { Spinner } from "@/shared/components/ui/spinner";

type PokemonDetailSpeciesSelectorMobileProps = {
  activeVersionGroupSlug: string | null;
  activePokemon: {
    name: string;
    slug: string;
  };
  groupHeaderBySlug: Map<string, string>;
  handleListScroll: UIEventHandler<HTMLDivElement>;
  inputValue: string;
  loadInitialPokemonItems: () => void;
  loadingMore: boolean;
  loadState: PokemonMenuLoadState;
  navigateToPokemon: (pokemonItem: PokemonDetailMenuPokemon | null) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  pokemonItems: PokemonDetailMenuPokemon[];
  updateInputValue: (nextInputValue: string) => void;
};

export const PokemonDetailSpeciesSelectorMobile = ({
  activeVersionGroupSlug,
  activePokemon,
  groupHeaderBySlug,
  handleListScroll,
  inputValue,
  loadInitialPokemonItems,
  loadingMore,
  loadState,
  navigateToPokemon,
  onOpenChange,
  open,
  pokemonItems,
  updateInputValue,
}: PokemonDetailSpeciesSelectorMobileProps) => {
  return (
    <BottomSheet
      open={open}
      onOpenChange={onOpenChange}
      label="Choose Pokémon"
      className="md:hidden"
      onBodyScroll={handleListScroll}
      bodyClassName="pt-1"
      trigger={
        <Button
          variant="ghost"
          disabled={!activeVersionGroupSlug}
          className={cn(codexHeadPickerTriggerClassName, "md:hidden")}
        >
          <span className="sr-only">Choose another Pokémon. Now showing </span>
          {activePokemon.name}
          <AppIcon
            icon={appIcons.actions.expand}
            inline="end"
            aria-hidden
            className="text-ink-3"
          />
        </Button>
      }
      header={
        <div className="flex flex-col gap-3 pr-10">
          <div>
            <SheetTitle className="text-24">Choose Pokémon</SheetTitle>
            <SheetDescription>
              Search the Pokémon you can find in these games.
            </SheetDescription>
          </div>
          <SearchControl
            value={inputValue}
            onValueChange={updateInputValue}
            onFocus={loadInitialPokemonItems}
            placeholder="Search by name or number"
            ariaLabel="Search Pokémon"
            autoFocus
          />
        </div>
      }
    >
      <div aria-busy={loadState === "loading" || loadingMore}>
        {loadState === "loading" ? (
          <div className="flex min-h-28 items-center justify-center">
            <Spinner aria-label="Loading Pokémon" className="text-action" />
          </div>
        ) : pokemonItems.length ? (
          <div className="grid gap-1">
            {pokemonItems.map((pokemonItem) => {
              const isActive = pokemonItem.slug === activePokemon.slug;
              const groupHeader = groupHeaderBySlug.get(pokemonItem.slug);

              return (
                <div key={pokemonItem.id}>
                  <PokemonDetailSpeciesSelectorGroupHeader
                    groupHeader={groupHeader}
                  />
                  <Button
                    variant="ghost"
                    aria-current={isActive ? "page" : undefined}
                    className={cn(
                      "text-ink text-15 h-auto min-h-14 w-full justify-start gap-3 rounded-md py-1.5 pr-3 pl-2 text-left font-bold whitespace-normal",
                      isActive && pokemonDetailSpeciesSelectorActiveClassName,
                    )}
                    onClick={() => {
                      navigateToPokemon(pokemonItem);
                      onOpenChange(false);
                    }}
                  >
                    <PokemonDetailSpeciesSelectorOptionContent
                      pokemonItem={pokemonItem}
                    />
                  </Button>
                </div>
              );
            })}
          </div>
        ) : (
          <p className="text-14 text-ink-2 px-2 py-8 text-center font-semibold">
            {getPokemonMenuEmptyLabel(loadState, activeVersionGroupSlug)}
          </p>
        )}

        {loadingMore ? (
          <div className="flex justify-center py-3">
            <Spinner
              aria-label="Loading more Pokémon"
              className="text-action"
            />
          </div>
        ) : null}
      </div>
    </BottomSheet>
  );
};
