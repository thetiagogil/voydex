import { cn } from "@/lib/utils";
import type { PokemonDetailPokedexNumber } from "@/modules/codex/features/pokemon/detail/components/pokedex-numbers/pokemon-detail-pokedex-numbers-model";
import { pokemonDetailSectionTableGridClassName } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-section-grid";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailPokedexNumbersCardProps = {
  numbers: PokemonDetailPokedexNumber[];
};

type PokemonDetailPokedexNumberRowProps = {
  pokedexNumber: PokemonDetailPokedexNumber;
};

const PokemonDetailPokedexNumberRow = ({
  pokedexNumber,
}: PokemonDetailPokedexNumberRowProps) => {
  return (
    <article
      className={cn(
        pokemonDetailSectionTableGridClassName,
        "border-app-surface-border/60 border-t px-4 py-3",
      )}
    >
      <div className="text-foreground min-w-0 truncate text-sm font-medium">
        {pokedexNumber.pokedexName}
      </div>
      <div className="text-foreground text-sm font-semibold tabular-nums">
        {pokedexNumber.numberLabel}
      </div>
      <div className="text-muted-foreground text-sm">-</div>
    </article>
  );
};

export const PokemonDetailPokedexNumbersCard = ({
  numbers,
}: PokemonDetailPokedexNumbersCardProps) => {
  if (!numbers.length) {
    return null;
  }

  return (
    <DetailSectionCard title="Pokédex" contentClassName="p-0" showSeparator>
      <div className="overflow-x-auto">
        <div
          className={cn(
            pokemonDetailSectionTableGridClassName,
            "text-muted-foreground px-4 py-2 text-xs",
          )}
        >
          <div>Dex</div>
          <div>Number</div>
          <div>Entry</div>
        </div>
        <div>
          {numbers.map((pokedexNumber) => (
            <PokemonDetailPokedexNumberRow
              key={pokedexNumber.id}
              pokedexNumber={pokedexNumber}
            />
          ))}
        </div>
      </div>
    </DetailSectionCard>
  );
};
