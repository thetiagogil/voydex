import { Fragment } from "react";

import { cn } from "@/shared/utils/cn";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import type { PokemonDetailMenuPokemon } from "@/modules/reference/types";
import { getPokemonPortraitType } from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-model";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { ComboboxItem } from "@/shared/components/ui/combobox";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

/* The last step of the Codex crumb: the Pokémon's name, which opens the picker. */
export const pokemonDetailSpeciesSelectorTriggerClassName =
  "text-14 text-ink hover:text-ink h-10 max-w-full gap-1 rounded-full px-2.5 font-extrabold md:h-8";

/* The picker's rows: the soft selected tint on the Pokémon you're reading. */
export const pokemonDetailSpeciesSelectorActiveClassName =
  "bg-select-soft text-select-ink";

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
    <div className="bg-surface text-ink-3 border-line text-12 sticky top-0 z-30 border-b px-2 py-1.5 font-bold">
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
        alt=""
        imageUrl={pokemonItem.imageUrl}
        type={getPokemonPortraitType(pokemonItem)}
        sizes="44px"
        className="size-11 shrink-0"
        imageClassName="p-1"
      />
      <span className="min-w-0 flex-1">
        <span className="text-12 text-ink-3 block font-bold tabular-nums">
          {formatPokemonNationalNumber(displayNumber)}
        </span>
        <span className="block truncate font-extrabold">
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
          isActive && pokemonDetailSpeciesSelectorActiveClassName,
        )}
      >
        <PokemonDetailSpeciesSelectorOptionContent pokemonItem={pokemonItem} />
      </ComboboxItem>
    </Fragment>
  );
};
