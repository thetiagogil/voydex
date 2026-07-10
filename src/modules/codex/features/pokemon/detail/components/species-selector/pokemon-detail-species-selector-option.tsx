import { Fragment } from "react";

import { cn } from "@/shared/utils/cn";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import type { PokemonDetailMenuPokemon } from "@/modules/reference/types";
import { getPokemonPortraitType } from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-model";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { ComboboxItem } from "@/shared/components/ui/combobox";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/display/pokemon-formatters";

type PokemonDetailSpeciesSelectorOptionProps = {
  groupHeader?: string;
  isActive: boolean;
  pokemonItem: PokemonDetailMenuPokemon;
};

type PokemonDetailSpeciesSelectorOptionContentProps = {
  pokemonItem: PokemonDetailMenuPokemon;
};

type PokemonDetailSpeciesSelectorGroupHeaderProps = {
  groupHeader?: string;
};

export const PokemonDetailSpeciesSelectorGroupHeader = ({
  groupHeader,
}: PokemonDetailSpeciesSelectorGroupHeaderProps) => {
  if (!groupHeader) {
    return null;
  }

  return (
    <div className="bg-popover text-muted-foreground border-border/40 sticky top-0 z-30 border-b px-2 py-1.5 text-xs font-semibold tracking-wide">
      {groupHeader}
    </div>
  );
};

export const PokemonDetailSpeciesSelectorOptionContent = ({
  pokemonItem,
}: PokemonDetailSpeciesSelectorOptionContentProps) => {
  const displayNumber = pokemonItem.pokedexNumber ?? pokemonItem.nationalNumber;

  return (
    <>
      <PokemonPortrait
        alt={pokemonItem.imageAlt}
        imageUrl={pokemonItem.imageUrl}
        type={getPokemonPortraitType(pokemonItem)}
        sizes="44px"
        className="size-11 shrink-0 rounded-lg"
        imageClassName="p-1"
      />
      <span className="min-w-0 flex-1">
        <span className="text-muted-foreground block text-xs tabular-nums">
          {formatPokemonNationalNumber(displayNumber)}
        </span>
        <span className="block truncate font-medium">{pokemonItem.name}</span>
      </span>
      <PokemonTypeList
        primaryType={pokemonItem.primaryType}
        secondaryType={pokemonItem.secondaryType}
        badgeDisplay="icon"
        badgeSize="sm"
        className="ml-auto shrink-0 gap-1"
      />
    </>
  );
};

export const PokemonDetailSpeciesSelectorOption = ({
  groupHeader,
  isActive,
  pokemonItem,
}: PokemonDetailSpeciesSelectorOptionProps) => {
  return (
    <Fragment>
      <PokemonDetailSpeciesSelectorGroupHeader groupHeader={groupHeader} />
      <ComboboxItem
        value={pokemonItem}
        aria-current={isActive ? "page" : undefined}
        className={cn(
          "min-h-14 gap-3",
          isActive && "bg-accent text-accent-foreground",
        )}
      >
        <PokemonDetailSpeciesSelectorOptionContent pokemonItem={pokemonItem} />
      </ComboboxItem>
    </Fragment>
  );
};
