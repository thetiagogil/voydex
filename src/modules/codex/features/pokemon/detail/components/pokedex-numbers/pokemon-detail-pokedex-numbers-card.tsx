import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { PokemonDetailPokedexNumber } from "@/modules/codex/features/pokemon/detail/components/pokedex-numbers/pokemon-detail-pokedex-numbers-model";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import { pokemonDetailSectionTableGridClassName } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-section-grid";
import { cn } from "@/shared/utils/cn";

type PokemonDetailPokedexNumbersCardProps = {
  gameSlug: string | null;
  numbers: PokemonDetailPokedexNumber[];
};

type PokemonDetailPokedexNumberRowProps = {
  gameSlug: string | null;
  pokedexNumber: PokemonDetailPokedexNumber;
};

const PokemonDetailPokedexNumberRow = ({
  gameSlug,
  pokedexNumber,
}: PokemonDetailPokedexNumberRowProps) => {
  return (
    <article
      className={cn(
        pokemonDetailSectionTableGridClassName,
        "border-app-surface-border/60 border-t px-4 py-3",
      )}
    >
      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Dex</div>
        {gameSlug ? (
          <Link
            href={appRoutes.codexGamePokedex(
              gameSlug,
              pokedexNumber.pokedexSlug,
            )}
            className="text-foreground hover:text-primary focus-visible:ring-ring min-w-0 truncate rounded-sm text-sm font-medium underline-offset-4 focus-visible:ring-2 focus-visible:outline-none"
          >
            {pokedexNumber.pokedexName}
          </Link>
        ) : (
          <div className="text-foreground min-w-0 truncate text-sm font-medium">
            {pokedexNumber.pokedexName}
          </div>
        )}
      </div>
      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Number</div>
        <div className="text-foreground text-sm font-semibold tabular-nums">
          {pokedexNumber.numberLabel}
        </div>
      </div>
      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Entry</div>
        <div className="text-muted-foreground text-sm">-</div>
      </div>
    </article>
  );
};

export const PokemonDetailPokedexNumbersCard = ({
  gameSlug,
  numbers,
}: PokemonDetailPokedexNumbersCardProps) => {
  if (!numbers.length) {
    return null;
  }

  return (
    <PokemonDetailSectionCard
      title="Pokédex"
      contentClassName="p-0"
      showSeparator
    >
      <div>
        <div
          className={cn(
            pokemonDetailSectionTableGridClassName,
            "text-muted-foreground hidden px-4 py-2 text-xs lg:grid",
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
              gameSlug={gameSlug}
              pokedexNumber={pokedexNumber}
            />
          ))}
        </div>
      </div>
    </PokemonDetailSectionCard>
  );
};
