"use client";

import type { UIEventHandler } from "react";

import { cn } from "@/lib/utils";
import {
  PokemonDetailSpeciesGroupHeader,
  PokemonDetailSpeciesOptionContent,
} from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-species-option";
import { PokemonDetailSpeciesSelectorLabel } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-species-selector-label";
import {
  getPokemonMenuEmptyLabel,
  type PokemonMenuLoadState,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-species-menu";
import type { PokemonDetailMenuPokemon } from "@/modules/codex/shared/types";
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

type PokemonDetailSpeciesSheetProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    nationalNumber: number;
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

export const PokemonDetailSpeciesSheet = ({
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
}: PokemonDetailSpeciesSheetProps) => {
  return (
    <Sheet open={open} onOpenChange={onOpenChange}>
      <SheetTrigger
        render={
          <Button
            variant="ghost"
            disabled={!activeGameSlug}
            aria-label="Choose Pokémon"
            className="hover:text-primary h-auto max-w-full justify-start gap-1 px-0 py-0 text-left text-2xl font-semibold tracking-normal hover:bg-transparent aria-expanded:bg-transparent sm:text-3xl md:hidden"
          />
        }
      >
        <PokemonDetailSpeciesSelectorLabel pokemon={activePokemon} />
        <AppIcon icon={appIcons.actions.expand} inline="end" aria-hidden />
      </SheetTrigger>
      <SheetContent
        side="bottom"
        className="border-app-surface-border bg-popover/96 max-h-[86dvh] gap-0 rounded-t-xl p-0 backdrop-blur-xl md:hidden"
      >
        <SheetHeader>
          <SheetTitle>Choose Pokémon</SheetTitle>
          <SheetDescription>
            Search the Pokémon available in this game.
          </SheetDescription>
        </SheetHeader>

        <div className="border-border/50 border-y p-4">
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
              <Spinner aria-label="Loading Pokémon" className="text-primary" />
            </div>
          ) : pokemonItems.length ? (
            <div className="grid gap-1">
              {pokemonItems.map((pokemonItem) => {
                const isActive = pokemonItem.slug === activePokemon.slug;
                const groupHeader = groupHeaderBySlug.get(pokemonItem.slug);

                return (
                  <div key={pokemonItem.id}>
                    <PokemonDetailSpeciesGroupHeader
                      groupHeader={groupHeader}
                    />
                    <Button
                      variant="ghost"
                      aria-current={isActive ? "page" : undefined}
                      className={cn(
                        "h-auto min-h-14 w-full justify-start gap-3 p-2 text-left",
                        isActive && "bg-accent text-accent-foreground",
                      )}
                      onClick={() => {
                        navigateToPokemon(pokemonItem);
                        onOpenChange(false);
                      }}
                    >
                      <PokemonDetailSpeciesOptionContent
                        pokemonItem={pokemonItem}
                      />
                    </Button>
                  </div>
                );
              })}
            </div>
          ) : (
            <p className="text-muted-foreground px-2 py-8 text-center text-sm">
              {getPokemonMenuEmptyLabel(loadState, activeGameSlug)}
            </p>
          )}

          {loadingMore ? (
            <div className="flex justify-center py-3">
              <Spinner
                aria-label="Loading more Pokémon"
                className="text-primary"
              />
            </div>
          ) : null}
        </div>
      </SheetContent>
    </Sheet>
  );
};
