import { Fragment } from "react";

import { cn } from "@/lib/utils";
import { PokemonTypeList } from "@/modules/codex/shared/components/pokemon-type-list";
import type { PokemonDetailMenuPokemon } from "@/modules/codex/shared/types";
import { getPokemonPortraitType } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-species-menu";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { ComboboxItem } from "@/shared/components/ui/combobox";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

type PokemonDetailSpeciesOptionProps = {
  groupHeader?: string;
  isActive: boolean;
  pokemonItem: PokemonDetailMenuPokemon;
};

export const PokemonDetailSpeciesOption = ({
  groupHeader,
  isActive,
  pokemonItem,
}: PokemonDetailSpeciesOptionProps) => {
  const displayNumber = pokemonItem.pokedexNumber ?? pokemonItem.nationalNumber;

  return (
    <Fragment>
      {groupHeader ? (
        <div className="bg-popover text-muted-foreground border-border/40 sticky top-0 z-30 border-b px-2 py-1.5 text-xs font-semibold tracking-wide">
          {groupHeader}
        </div>
      ) : null}
      <ComboboxItem
        value={pokemonItem}
        aria-current={isActive ? "page" : undefined}
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
          <span className="block truncate font-medium">{pokemonItem.name}</span>
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
};
