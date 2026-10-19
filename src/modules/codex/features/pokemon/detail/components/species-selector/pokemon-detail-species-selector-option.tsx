import { Fragment } from "react";

import { cn } from "@/shared/utils/cn";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import type { PokemonDetailMenuPokemon } from "@/modules/reference/types";
import { getPokemonPortraitType } from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-model";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { MenuOptionContent } from "@/shared/components/menu-option-content";
import { ComboboxItem } from "@/shared/components/ui/combobox";
import { menuGroupLabelClassName } from "@/shared/components/ui/menu-surface";
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
    <div
      className={cn(menuGroupLabelClassName, "bg-surface sticky top-0 z-30")}
    >
      {groupHeader}
    </div>
  );
};

export const PokemonDetailSpeciesSelectorOptionContent = ({
  pokemonItem,
}: PokemonDetailSpeciesSelectorOptionContentProps) => {
  const displayNumber = pokemonItem.pokedexNumber ?? pokemonItem.nationalNumber;

  /* As every picker's option: the Pokémon on its type tint, its name, its number under it. */
  return (
    <MenuOptionContent
      leading={
        <PokemonPortrait
          alt=""
          imageUrl={pokemonItem.imageUrl}
          type={getPokemonPortraitType(pokemonItem)}
          sizes="44px"
          className="size-11"
          imageClassName="p-1"
        />
      }
      leadingClassName="size-11 rounded-full bg-transparent"
      title={pokemonItem.name}
      description={
        <span className="tabular-nums">
          {formatPokemonNationalNumber(displayNumber)}
        </span>
      }
      trailing={
        <PokemonTypeList
          primaryType={pokemonItem.primaryType}
          secondaryType={pokemonItem.secondaryType}
          badgeDisplay="icon"
          badgeSize="sm"
          className="gap-1"
        />
      }
    />
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
          "min-h-14",
          isActive && pokemonDetailSpeciesSelectorActiveClassName,
        )}
      >
        <PokemonDetailSpeciesSelectorOptionContent pokemonItem={pokemonItem} />
      </ComboboxItem>
    </Fragment>
  );
};
