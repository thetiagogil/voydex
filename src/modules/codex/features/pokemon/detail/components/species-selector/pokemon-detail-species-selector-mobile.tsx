"use client";

import type { UIEventHandler } from "react";

import { cn } from "@/shared/utils/cn";
import {
  PokemonDetailSpeciesSelectorGroupHeader,
  PokemonDetailSpeciesSelectorOptionContent,
  pokemonDetailSpeciesSelectorActiveClassName,
  pokemonDetailSpeciesSelectorTriggerClassName,
} from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector-option";
import {
  getPokemonMenuEmptyLabel,
  type PokemonMenuLoadState,
} from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-model";
import type { PokemonDetailMenuPokemon } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Input } from "@/shared/components/ui/input";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";
import { Spinner } from "@/shared/components/ui/spinner";

type PokemonDetailSpeciesSelectorMobileProps = {
  activeGameSlug: string | null;
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
  activeGameSlug,
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
    <Sheet open={open} onOpenChange={onOpenChange}>
      <SheetTrigger
        render={
          <Button
            variant="ghost"
            disabled={!activeGameSlug}
            className={cn(
              pokemonDetailSpeciesSelectorTriggerClassName,
              "md:hidden",
            )}
          />
        }
      >
        <span className="sr-only">Choose another Pokémon. Now showing </span>
        {activePokemon.name}
        <AppIcon
          icon={appIcons.actions.expand}
          inline="end"
          aria-hidden
          className="text-ink-3"
        />
      </SheetTrigger>
      <SheetContent side="bottom" className="max-h-[86dvh] gap-0 p-0 md:hidden">
        <SheetHeader>
          <SheetTitle>Choose Pokémon</SheetTitle>
          <SheetDescription>
            Search the Pokémon available in this game.
          </SheetDescription>
        </SheetHeader>

        <div className="border-line border-y px-4 py-3">
          <Input
            value={inputValue}
            onChange={(event) => {
              updateInputValue(event.target.value);
            }}
            onFocus={loadInitialPokemonItems}
            placeholder="Search by name or number"
            aria-label="Search Pokémon"
            autoFocus
          />
        </div>

        <div
          aria-busy={loadState === "loading" || loadingMore}
          className="min-h-0 flex-1 overflow-y-auto p-4 pt-2"
          onScroll={handleListScroll}
        >
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
                        "text-ink h-auto min-h-14 w-full justify-start gap-3 rounded-sm p-2 text-left whitespace-normal",
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
              {getPokemonMenuEmptyLabel(loadState, activeGameSlug)}
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
      </SheetContent>
    </Sheet>
  );
};
