import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { PokemonDetailPokedexNumber } from "@/modules/codex/features/pokemon/detail/components/pokedex-numbers/pokemon-detail-pokedex-numbers-model";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";

type PokemonDetailPokedexNumbersCardProps = {
  gameSlug: string | null;
  numbers: PokemonDetailPokedexNumber[];
};

const PokedexNumberContent = ({
  pokedexNumber,
}: {
  pokedexNumber: PokemonDetailPokedexNumber;
}) => {
  return (
    <>
      <span className="text-ink-2 text-12 block font-bold">
        {pokedexNumber.pokedexName}
      </span>
      <span className="text-16 mt-0.5 block font-extrabold tabular-nums">
        {pokedexNumber.numberLabel}
      </span>
    </>
  );
};

/* v3's key and value grid: each Pokédex this Pokémon is listed in, and where. */
export const PokemonDetailPokedexNumbersCard = ({
  gameSlug,
  numbers,
}: PokemonDetailPokedexNumbersCardProps) => {
  return (
    <PokemonDetailSectionCard title="Pokédex numbers">
      <ul className="grid grid-cols-2 gap-x-4.5 gap-y-2">
        {numbers.map((pokedexNumber) => (
          <li key={pokedexNumber.id} className="min-w-0">
            {gameSlug ? (
              <Link
                href={appRoutes.codexGamePokedex(
                  gameSlug,
                  pokedexNumber.pokedexSlug,
                )}
                className="hover:bg-surface-2 focus-visible:outline-focus -mx-2 block rounded-sm px-2 py-1.5 transition-colors outline-none focus-visible:outline-3 focus-visible:outline-solid"
              >
                <PokedexNumberContent pokedexNumber={pokedexNumber} />
              </Link>
            ) : (
              <div className="py-1.5">
                <PokedexNumberContent pokedexNumber={pokedexNumber} />
              </div>
            )}
          </li>
        ))}
      </ul>
    </PokemonDetailSectionCard>
  );
};
