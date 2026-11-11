import { Link } from "@/shared/components/link";

import { appRoutes } from "@/config/routes";
import type { PokemonDetailPokedexNumber } from "@/modules/codex/features/pokemon/detail/sections/pokedex-numbers/pokemon-detail-pokedex-numbers-model";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailPokedexNumbersCardProps = {
  numbers: PokemonDetailPokedexNumber[];
};

/*
 * Each Pokédex of the generation that lists the Pokémon, a row each: the
 * Pokédex and the number (it opens that Pokédex). What the Pokédex says is
 * in the hero, per game.
 */
export const PokemonDetailPokedexNumbersCard = ({
  numbers,
}: PokemonDetailPokedexNumbersCardProps) => {
  return (
    <DetailSectionCard id="pokedex-numbers" title="Pokédex numbers">
      <ul className="flex flex-col">
        {numbers.map((pokedexNumber) => (
          <li key={pokedexNumber.id} className="py-1 first:pt-0 last:pb-0">
            <Link
              href={appRoutes.codexVersionGroupPokedex(
                pokedexNumber.versionGroupSlug,
                pokedexNumber.pokedexSlug,
              )}
              className="hover:bg-surface-2 focus-ring -mx-2 flex min-w-0 items-baseline justify-between gap-3 rounded-sm px-2 py-1.5 transition-colors"
            >
              <span className="text-ink-2 text-14 truncate font-bold">
                {pokedexNumber.pokedexName}
              </span>
              <span className="text-16 shrink-0 font-extrabold tabular-nums">
                {pokedexNumber.numberLabel}
              </span>
            </Link>
          </li>
        ))}
      </ul>
    </DetailSectionCard>
  );
};
